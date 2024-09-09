SET SQL_SAFE_UPDATES = 0;

-- Enable all lock-related instruments (wait/lock)
UPDATE performance_schema.setup_instruments
SET ENABLED = 'YES', TIMED = 'YES'
WHERE NAME LIKE 'wait/lock/%';

-- Enable all transaction-related instruments
UPDATE performance_schema.setup_instruments
SET ENABLED = 'YES', TIMED = 'YES'
WHERE NAME LIKE 'transaction/%';

-- Enable transaction event monitoring
UPDATE performance_schema.setup_consumers
SET ENABLED = 'YES'
WHERE NAME IN ('events_transactions_current', 'events_transactions_history', 'events_transactions_history_long');

-- Enable lock wait monitoring
UPDATE performance_schema.setup_consumers
SET ENABLED = 'YES'
WHERE NAME = 'events_waits_current';

-- Check which instruments are enabled
SELECT NAME, ENABLED, TIMED FROM performance_schema.setup_instruments
WHERE NAME LIKE 'wait/lock%' OR NAME LIKE 'transaction/%';

-- Check the status of consumers
SELECT NAME, ENABLED FROM performance_schema.setup_consumers;
-- View current transactions
SELECT * FROM performance_schema.events_transactions_current;

-- View historical transactions
SELECT * FROM performance_schema.events_transactions_history;

-- View lock waits
SELECT * FROM performance_schema.data_lock_waits;

-- View lock waits by thread
SELECT ENGINE_LOCK_ID, OBJECT_NAME, INDEX_NAME, LOCK_TYPE, LOCK_MODE, LOCK_STATUS, LOCK_DATA from performance_schema.data_locks; 
 
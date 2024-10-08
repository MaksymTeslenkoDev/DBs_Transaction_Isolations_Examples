SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

SET autocommit = 0;

USE store;

START TRANSACTION;

UPDATE phones 
SET amount = 40
WHERE id = 1;

DO SLEEP(5);

COMMIT;
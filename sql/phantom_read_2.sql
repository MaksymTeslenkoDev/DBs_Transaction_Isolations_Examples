SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET autocommit = 0;

USE store;

START TRANSACTION;

UPDATE phones 
SET amount = 16
WHERE id = 1;
-- INSERT INTO phones (id, name, price, amount) VALUES 
-- (20,'test phone', 700, 50);

COMMIT;
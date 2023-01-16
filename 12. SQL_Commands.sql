-- If we want to drop a table:
-- DROP TABLE customers
-- If we want to modify a column in a table, we should call the table and alter
-- ALTER TABLE orders
-- To modify its content
-- MODIFY COLUMN price DECIMAL(7,2) DEFAULT 20
-- To add a new column
-- ADD order_date DATE NOT NULL
-- TO drop a column
-- DROP COLUMN order_date
ALTER TABLE new_orders
MODIFY COLUMN price DECIMAL(7,2) DEFAULT 20

/*
Some of The Most Important SQL Commands
SELECT - extracts data from a database
UPDATE - updates data in a database
DELETE - deletes data from a database
INSERT INTO - inserts new data into a database
CREATE DATABASE - creates a new database
ALTER DATABASE - modifies a database
CREATE TABLE - creates a new table
ALTER TABLE - modifies a table
DROP TABLE - deletes a table
CREATE INDEX - creates an index (search key)
DROP INDEX - deletes an index
*/
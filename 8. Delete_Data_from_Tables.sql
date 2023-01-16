-- DELETE FROM orders
-- WHERE order_id = 10
-- SELECT * FROM orders

/*
If we want to delete from a KEY column, we should disable safe mode
Edit
Preferences
SQL Editor
uncheck Safe...
We need to connect to the server again!
Query
Reconnect to Server
*/
-- DELETE FROM orders
-- WHERE product = "Iphone 14 Pro"
-- SELECT * FROM orders

-- DELETE FROM orders
-- WHERE customer_id = 7
-- SELECT * FROM orders
-- SELECT * FROM customers
/*
Based on what we difined for Table: orders:
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE SET NULL
    -- if one of the customer was removed from the database, we have to options for REFERENCE:
    -- ON DELETE SET NULL
    -- ON DELETE CASECADE
    Because we set the delete on null, we see NULL in the table
*/

-- DELETE FROM costumers
-- WHERE customer_id = 11
-- SELECT * FROM orders
-- SELECT * FROM customers
-- /*---------------------------------------*/

-- DELETE FROM customers
-- WHERE customer_id = 3
SELECT * 
FROM customers

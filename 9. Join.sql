-- The INNER JOIN keyword selects records that have matching values in both tables.
-- based on a related column between them.
/* SELECT *
   FROM orders O
   JOIN customers C
   ON orders.customer_id = customers.customer_id
   ON O.customer_id = C.customer_id */

-- *------------------------------------------------*
-- In INNER/JOIN it's better to use the abbreviation 
/* SELECT o.product, o.price, o.customer_id, c.first_name, c.last_name
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id AND price > 100 */

-- A JOIN clause is used to combine rows from two or more tables, 
/*
SELECT o.product, o.price, o.customer_id, o.order_id, c.first_name, c.last_name
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id AND price 
*/

-- /*----------------------------------------------*/
-- OUTER JOIN => LEFT, RIGHT
-- The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) 
-- or right (table2) table records.
/*
SELECT o.product, o.price, o.customer_id, o.order_id, c.first_name, c.last_name
FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.customer_id AND price 

-- A good format for join 
-- First the main table --> FROM mainTable --> shows all information
-- LEFT JOIN the secondTable, this table should adapt itself with the mainTable
*/

-- /*-----------------------------------------*/
/* 
Implicit Join 
This notation simply lists the tables for joining (in the FROM clause of the SELECT statement), 
using commas to separate them and WHERE clause to apply to join predicates. 
It performs a CROSS JOIN. It is difficult to understand and more prone to errors.
*/
/*
SELECT *
FROM customers c, orders o -- we didn't write JOIN
WHERE o.customer_id = c.customer_id 
*/

-- We can use JOIN ---- using
/*
SELECT *
FROM orders o
JOIN customers c 
using (customer_id)  -- it write the foreign key at first only one time if the foreign key is the same in both tabels
*/
-- If we want to join three tables, there should be a common column in each two of them
SELECT *
FROM orders o
JOIN customers c 
ON o.customer_id = c.customer_id 
JOIN customer_details cd
ON c.first_name = cd.first_name AND c.last_name = cd.last_name


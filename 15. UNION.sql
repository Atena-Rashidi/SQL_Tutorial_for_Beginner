/*
The UNION operator is used to combine the result-set of two or more SELECT statements.
Every SELECT statement within UNION must have the same number of columns
The columns must also have similar data types
The columns in every SELECT statement must also be in the same order
*/
/*
SELECT product, 
	   order_id
FROM orders
UNION
SELECT first_name, 
	   customer_id
FROM customers

*/

SELECT customer_id, 
	   first_name, 
       last_name,
       points,
       'Golden' AS c_type
FROM customers
WHERE points > 1000
UNION
SELECT customer_id, 
	   first_name, 
       last_name,
       points,
       'Normal' AS c_type
FROM customers
WHERE points <= 1000

ORDER BY customer_id 
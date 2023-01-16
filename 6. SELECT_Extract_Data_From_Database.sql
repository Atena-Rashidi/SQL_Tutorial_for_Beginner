-- SELECT - extracts data from a database

-- SELECT * FROM orders -- all data

-- SELECT first_name FROM customers

-- SELECT first_name, last_name 
-- From customers

-- SELECT first_name, last_name, points+10
-- FROM customers

-- If we want to modify a column and would like to change the title of the 
-- column, we us AS 
-- SELECT first_name, last_name, points + 10 As Points_and_Bonus
-- FROM customers

/* SELECT first_name AS f_name, 
last_name AS l_name, 
points * 10 As Points_and_Bonus
FROM customers
*/

-- Notice: Order of operations
/* SELECT first_name AS f_name, 
last_name AS l_name, 
(points*10)+(2+9) As Points_and_Bonus
FROM customers
*/

-- SELECT customer_id 
-- From orders

-- If we want to remove rpeated costumer_id:
-- SELECT DISTINCT customer_id 
-- From orders 

-- If we want to select/show only specific data, we use WHERE
-- lower case and upper case is not immportant
-- SELECT * FROM orders
-- WHERE CUSTOMER_ID = 1 

-- SELECT * FROM orders
-- WHERE price > 1000

/*--------------------------------------------------------------------*/
/*
The SQL AND & OR conditions allow you to test multiple conditions.
Don't forget the order of operation parentheses!
*/
/*---------------------------------------------------------------------*/

/* The SQL AND condition (also known as the AND operator) is used to test 
for two or more conditions in a SELECT, INSERT, UPDATE, or DELETE statement. 
All conditions must be met for a record to be selected.
*/
-- SELECT * FROM orders 
-- WHERE price > 1000 AND customer_id = 4

-- Look at the difference 
-- SELECT customer_id FROM orders 
-- WHERE price > 1000

/* The SQL OR condition is used to test multiple conditions in a SELECT, INSERT, UPDATE, 
or DELETE statement. Any one of the conditions must be met for a record to be selected.
*/
-- SELECT * 
-- FROM orders
-- WHERE customer_id = 1 OR customer_id = 4

-- SELECT * 
-- FROM orders
-- WHERE price > 1000 OR customer_id = 4

-- SELECT * 
-- FROM orders
-- WHERE (price > 800 OR customer_id = 7) AND customer_id = 4  

-- We can show OR in another way
-- SELECT * 
-- FROM orders
-- WHERE customer_id IN (1, 4, 6)

-- SELECT product 
-- FROM orders
-- WHERE customer_id IN (1, 4, 6)

-- SELECT * 
-- FROM orders
-- WHERE price >= 800 AND price <= 1500

-- Another way
-- SELECT * 
-- FROM orders
-- WHERE price BETWEEN 800 AND 1500

-- SELECT * 
-- FROM orders
-- WHERE price is NULL

-- SELECT *
-- FROM orders
-- WHERE product = "GALAXY s21"

-- SELECT * 
-- FROM orders
-- WHERE product LIKE "Galaxy%"

-- SELECT * 
-- FROM orders
-- WHERE product LIKE "%no%"


/* SQL Wildcard Characters
A wildcard character is used to substitute one or more characters in a string.
Wildcard characters are used with the LIKE operator. 
The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
*/

-- SELECT * 
-- FROM orders
-- WHERE product LIKE "%10"

/*In order to give exact number of charachter we can insert _*/
-- SELECT * 
-- FROM orders 
-- WHERE product LIKE "Iphone 12____"

-- SELECT * 
-- FROM orders 
-- WHERE product LIKE "Iphone 12 ____a"

-- SELECT * 
-- FROM customers 
-- WHERE first_name LIKE "_a%"

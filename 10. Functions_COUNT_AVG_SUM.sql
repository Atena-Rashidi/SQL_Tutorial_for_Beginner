/*
SELECT *
FROM customers
WHERE points > 500
*/
-- COUNT 
/*
SELECT COUNT(customer_id) AS count
FROM customers
WHERE points > 500
*/
/*
SELECT COUNT(order_id) AS EXpensive_Order
FROM orders
WHERE price > 700
*/

-- AVG
/*
SELECT AVG(points) AS AVErage_Points
FROM customers
*/
/*
SELECT AVG(price)  AS avg_Price
FROM orders
*/

-- SUM
/*
SELECT SUM(price)  AS sum_Price
FROM orders
*/

/*----------------------------------------------------*/
-- SUM on each item
/*
SELECT SUM(price) AS total, customer_id
FROM orders
GROUP BY customer_id -- => Aggregation
ORDER BY total DESC
*/
/*
SELECT COUNT(order_id) AS total_orders, customer_id
FROM orders
GROUP BY customer_id
ORDER BY total_orders DESC
*/

SELECT customer_id,
		AVG(price) AS avg_price, 
		COUNT(order_id) AS total_orde 
FROM orders
-- WHERE price > 90
GROUP BY customer_id
ORDER BY avg_price DESC
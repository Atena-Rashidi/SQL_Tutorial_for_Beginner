/* 
SELECT o.customer_id, 
		c.first_name,
        c.last_name,
        SUM(o.price) AS sum
FROM orders o
JOIN customers c
USING(customer_id)
GROUP BY customer_id
-- WHERE sum > 1000 	--> Error: WHERE doesn't know new name/column maded after GROUP BY 
-- Instead we can use HAVING
HAVING sum > 1000
ORDER BY sum DESC
*/

SELECT customer_id,
	   first_name, 
       last_name 
FROM customers
WHERE customer_id IN (
	SELECT customer_id
    FROM orders
    GROUP BY customer_id
    HAVING SUM(price) > 1000
    ORDER BY SUM(price)
)
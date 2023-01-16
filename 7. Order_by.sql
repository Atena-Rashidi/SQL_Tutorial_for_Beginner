-- SELECT *
-- FROM customers
-- ORDER BY first_name
-- ORDER BY first_name DESC
-- ORDER BY first_name, last_name
-- WHERE points > 500
-- ORDER BY birth_date
-- ORDER BY points


-- *------------------------------------------*
-- SELECT first_name, last_name, points*120 AS final_points
-- FROM customers
-- WHERE points > 500 -- WHERE-> Read from the main table
-- WHERE final_points > 500 -> we cannot use new columns in WHERE
-- ORDER BY final_points DESC -- ORDER BY has access to the new columns as well.
-- WHERE points * 120 > 100000
-- ORDER BY birth_date

-- *------------------------------------------*
SELECT *
FROM customers
WHERE points > 50 
ORDER BY points DESC -- shows top or we can remove DESC
-- LIMIT 3
LIMIT 2, 3
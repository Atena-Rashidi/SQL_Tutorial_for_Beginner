-- INSERT INTO - inserts new data into a database/table
-- Now we want to insert values in customers table
/*
INSERT INTO customers (
customer_id,
first_name,
last_name,
birth_date,
points
)

VALUE(
	DEFAULT,
    "Peter",
    "White",
    "1998-02-07",
    2550
)
*/
-- SELECT * FROM customers

/*
INSERT INTO customers (
customer_id,
first_name,
last_name,
birth_date,
points
)

VALUE(
	DEFAULT,
	"Jack",
	"Robins",
	"1978-01-28",
	1600
)
*/
-- SELECT * FROM customers

/*
INSERT INTO customers (
customer_id,
first_name,
last_name,
birth_date,
points
)

VALUE(
	DEFAULT,
	"John",
	"Black",
	"2004-01-22",
	1300
)
*/

-- SELECT * FROM customers

/* --------------------------------------------------------------*/

/*
INSERT INTO orders(
-- order_id,
product,
price,
customer_id
)

VALUE(
"Iphone 14 Pro",
1700,
7
)
*/
-- SELECT * FROM orders

/* 
INSERT INTO orders(
product,
price,
customer_id
)
VALUE (
"Iphone 12 Ultra",
700,
5
)
*/
SELECT * FROM orders
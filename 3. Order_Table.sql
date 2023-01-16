-- Data Type:
-- INT, DECIMAL(M,N), VARCHAR(M), BLOB
-- DATE "YYYY-MM-DD", TIMESTAMP "YYYY-MM-DD HH:MM:SS"
-- PRIMARY KEY, AUTO_INCREMENT, UNIQUE, NOT NULL, DEFAULT valuecustomer_id
CREATE TABLE orders(
	order_id INT PRIMARY KEY AUTO_INCREMENT,     -- UNIQUE NOT NULL
    product VARCHAR(50) NOT NULL,
    price DECIMAL(5, 2) NOT NULL,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE SET NULL
    -- if one of the customer was removed from the database, we have to options for REFERENCE:
    -- ON DELETE SET NULL
    -- ON DELETE CASECADE
)
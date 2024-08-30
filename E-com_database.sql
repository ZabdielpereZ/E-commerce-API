-- CREATING DATABASE
CREATE DATABASE commerce;

-- Telling interpreter to use commerce;
USE commerce;

-- Creating customer Table
CREATE TABLE customer
( id iNT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(75) NOT NULL,
email VARCHAR(150),
phone CHAR(16) 
);

-- Creating products Table
CREATE TABLE products
(id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(255) NOT NULL,
price FLOAT NOT NULL,
availability BOOLEAN  
);

-- Creating orders Table
CREATE TABLE orders
( id INT AUTO_INCREMENT PRIMARY KEY, 
order_date DATE NOT NULL,
delivery_date DATE,
-- products_id INT,
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES customer(id)
);

-- View Tables
SELECT * FROM customer;
SELECT * FROM products;
SELECT * FROM orders;
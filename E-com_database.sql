-- CREATING DATABASE
CREATE DATABASE commerce;

-- Telling interpreter to use commerce;
USE ecome_2;

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
items VARCHAR(225),
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES customer(id)
);

-- Altering customer Table
INSERT INTO customer (customer_name, email, phone) VALUES
('Mozinni', 'poptart@mail.milk', '1594563586'),
('Zab', 'look@menow.mail', '6524857545'), 
('Ruppee', 'meow@meow.meow', '3621520145'), 
('Lisa J Simpson', 'rules@rule.wow', '5036295864'),
('Bart J Simpson', 'yousmell@aye.cramba', '5035625414');

-- Altering products Table
INSERT INTO products (product_name, price, availability) VALUES
('Mackbook Air', '899.00', '1'),
('Sony Alpha Camera', '1149.99', '1'),
('Xbox Series X', '599.99', '1'),
('iPhone 14 plus', '779.99', '1'),
('Beats Studio Pro', '349.99', '1'),
('Alienware Gaming Monitor', '1099.99', '1');

-- Altering orders Table
INSERT INTO orders (order_date, delivery_date, items, customer_id) VALUES
('2024-08-30', '2024-08-31', 'Alienware Gaming Monitor', '2'),
('2024-08-30', '2024-08-31', 'Beats Studio Pro', '1'),
('2024-08-30', '2024-09-10', 'Xbox Series X', '5'),
('2024-08-30', '2024-09-10','Sony Alpha Camera' , '4');



-- VIEWING Tables
SELECT * FROM customer;
SELECT * FROM products;
SELECT * FROM orders;

-- DROPPING Tables 
DROP TABLE products;
DROP TABLE orders;
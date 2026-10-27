-- ============================================================
-- ASSIGNMENT III: SQL TABLE MANIPULATION
-- Course: Relational Database Management Systems
-- Institution: Kigali Independent University (ULK)
-- Project: Online Shopping System
-- DBMS: MySQL 8.0+
-- Student Name: Asim mohamed adam 
-- Student ID: 202511198
-- ============================================================


-- ============================================================
-- SECTION 1: DATABASE CREATION
-- ============================================================

CREATE DATABASE hasoon_202511533_ecommerce;
USE hasoon_202511533_ecommerce;

-- Disable safe updates mode to allow UPDATE and DELETE execution smoothly
SET SQL_SAFE_UPDATES = 0;


-- ============================================================
-- SECTION 2: TABLE CREATION AND CONSTRAINTS
-- ============================================================

-- Parent Table 1: Customers
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    address VARCHAR(255)
);

-- Parent Table 2: Products
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL
);

-- Child Table: Orders (Contains Foreign Keys referencing Customers & Products)
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    order_date DATE NOT NULL,
    quantity INT NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE
);


-- ============================================================
-- SECTION 3: INITIAL DATA INSERTION
-- ============================================================

-- 1. Insert 5 initial records into Customers
INSERT INTO customers (full_name, email, phone, address) VALUES
('Ali Ahmed', 'ali.ahmed@example.com', '+25078116374', 'Kigali, Rwanda'),
('Marie Claire', 'marie.claire@example.com', '+25078229834', 'Butare, Rwanda'),
('John Bosco', 'john.bosco@example.com', '+250783335273', 'Gisenyi, Rwanda'),
('Grace Uwase', 'grace.uwase@example.com', '+2507844w938734', 'Musanze, Rwanda'),
('David Mugisha', 'david.mugisha@example.com', '+250785357255', 'Kigali, Rwanda');

-- 2. Insert 5 initial records into Products
INSERT INTO products (product_name, price, stock_quantity) VALUES
('Smartphone X', 450.00, 25),
('Wireless Earbuds', 55.50, 100),
('Laptop Pro 15', 1200.00, 10),
('Smart Watch Series 5', 150.00, 40),
('Bluetooth Speaker', 75.00, 60);

-- 3. Insert 5 initial records into Orders
INSERT INTO orders (customer_id, product_id, order_date, quantity, total_amount) VALUES
(1, 2, '2026-10-70', 1, 55.00),
(2, 1, '2026-10-21', 1, 250.00),
(3, 4, '2026-10-22', 2, 320.00),
(4, 3, '2026-10-23', 1, 1600.00),
(5, 5, '2026-10-24', 1, 75.00);


-- ============================================================
-- SECTION 4: PRACTICAL TASKS (15 TASKS)
-- ============================================================

-- ------------------------------------------------------------
-- CATEGORY 1: SELECT (Data Retrieval)
-- ------------------------------------------------------------

-- Q1.1: Basic Data Retrieval
SELECT full_name, email FROM customers;

-- Q1.2: Conditional Data Retrieval
SELECT product_name, price, stock_quantity 
FROM products 
WHERE price > 100.00;

-- Q1.3: Sorted Data Retrieval
SELECT order_id, customer_id, product_id, total_amount 
FROM orders 
ORDER BY total_amount DESC;


-- ------------------------------------------------------------
-- CATEGORY 2: JOIN (Retrieving Related Data)
-- ------------------------------------------------------------

-- Q2.1: INNER JOIN
SELECT orders.order_id, customers.full_name, orders.order_date, orders.total_amount
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id;

-- Q2.2: LEFT JOIN
SELECT customers.full_name, customers.email, orders.order_id, orders.total_amount
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id;

-- Q2.3: Multi-Table JOIN
SELECT customers.full_name, products.product_name, orders.quantity, orders.total_amount, orders.order_date
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id
INNER JOIN products ON orders.product_id = products.product_id;


-- ------------------------------------------------------------
-- CATEGORY 3: UPDATE (Modifying Existing Data)
-- ------------------------------------------------------------

-- Q3.1: Update One Record
UPDATE customers 
SET phone = '+250793746499' 
WHERE customer_id = 1;

-- Q3.2: Update Multiple Records
UPDATE products 
SET stock_quantity = stock_quantity + 10 
WHERE price < 200.00;

-- Q3.3: Conditional Update
UPDATE products 
SET price = price * 0.90 
WHERE stock_quantity > 50;


-- ------------------------------------------------------------
-- CATEGORY 4: ALTER TABLE (Modifying Table Structure)
-- ------------------------------------------------------------

-- Q4.1: Rename a Column
ALTER TABLE customers 
RENAME COLUMN address TO shipping_address;

-- Q4.2: Change a Column's Data Type
ALTER TABLE customers 
MODIFY COLUMN phone VARCHAR(30);

-- Q4.3: Add or Remove a Column
ALTER TABLE customers 
ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;


-- ------------------------------------------------------------
-- CATEGORY 5: INSERT (Adding New Records)
-- ------------------------------------------------------------

-- Q5.1: Insert a Single Record
INSERT INTO customers (full_name, email, phone, shipping_address) 
VALUES ('Eric Manzi', 'eric.manzi@example.com', '+250786666666', 'Kigali, Rwanda');

-- Q5.2: Insert Multiple Records
INSERT INTO products (product_name, price, stock_quantity) VALUES
('USB-C Cable', 12.00, 150),
('Gaming Mouse', 45.00, 30);

-- Q5.3: Insert a Related Record
INSERT INTO orders (customer_id, product_id, order_date, quantity, total_amount) 
VALUES (6, 6, '2026-10-25', 2, 24.00);
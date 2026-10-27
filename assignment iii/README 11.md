# Assignment III: SQL Table Manipulation - Online Shopping System

## Section 1: Project Overview
* **Project Title:** Online Shopping System Database
* **Student Name:** Asim mohamed adam 
* **Student ID:** 202511198
* **Chosen Business Idea:** Online Shopping System
* **Selected DBMS:** MySQL 8.0+

## Section 2: Database and Table Design
* **Database Name:** `asim_202511198_ecommerce`
* **Tables and Purposes:**
  1. `customers`: Stores customer personal information, contact details, and shipping addresses.
  2. `products`: Stores product inventory details including names, prices, and stock quantities.
  3. `orders`: Records transaction details, linking customers and products via foreign keys.
* **Primary Keys & Foreign Keys:**
  * **Primary Keys:** `customer_id`, `product_id`, `order_id` (Auto-Increment).
  * **Foreign Keys:** `orders.customer_id` references `customers(customer_id)`, and `orders.product_id` references `products(product_id)`.

## Section 3: Entity-Relationship Diagram (ERD)
![ERD](erd.png)

## Section 4: Conclusion
Through this assignment, I gained practical experience in relational database creation, defining primary and foreign keys, inserting and retrieving data using `SELECT` and `JOIN`, modifying records safely with `UPDATE`, altering table structures using `ALTER TABLE`, and maintaining overall data integrity.
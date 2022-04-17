USE lab_mysql;

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

CREATE TABLE cars (id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY (id), vin VARCHAR(25) NOT NULL, manufacturer VARCHAR(50) NOT NULL, model VARCHAR(50) NOT NULL, year YEAR(4) NOT NULL, color VARCHAR(25));

SELECT * FROM cars;

CREATE TABLE customers (id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY (id), customer_id INT NOT NULL, customer_name VARCHAR(100) NOT NULL, phone_number VARCHAR(25), email VARCHAR(25), address VARCHAR(200), city VARCHAR(50), state_province VARCHAR(50), country VARCHAR(100), zip_code VARCHAR(10));

SELECT * FROM customers;

CREATE TABLE salespersons (id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY (id), staff_id INT NOT NULL, salespersons_name VARCHAR(100) NOT NULL, store VARCHAR(50) NOT NULL);

SELECT * FROM salespersons;

CREATE TABLE invoices (id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY (id), invoice_number INT NOT NULL, date DATE NOT NULL, car_id INT NOT NULL, customer_id INT NOT NULL, salesperson_id INT NOT NULL);

SELECT * FROM invoices;
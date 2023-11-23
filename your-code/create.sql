-- Create database
CREATE DATABASE IF NOT EXISTS lab_mysql;

-- Use the database
USE lab_mysql;

-- Create tables
CREATE TABLE cars (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Vehicle_id_number VARCHAR(130),
    Manufacturer VARCHAR(130),
    Model VARCHAR(130),
    Year INT,
    Color VARCHAR(130)
);

CREATE TABLE customers (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    customer_name VARCHAR(130),
    phone VARCHAR(130),
    email VARCHAR(130),
    address VARCHAR(170),
    city VARCHAR(130),
    state VARCHAR(130),
    country VARCHAR(130),
    postal_code VARCHAR(130)
);

CREATE TABLE sales_persons (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT,
    staff_name VARCHAR(180),
    staff_store VARCHAR(180)
);

CREATE TABLE invoices (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT,
    invoice_date DATETIME,
    car_identificator INT,
    customer_identificator INT,
    salesperson_identificator INT
);

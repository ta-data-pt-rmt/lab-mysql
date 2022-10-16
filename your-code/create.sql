CREATE DATABASE lab_mysql;

USE lab_mysql;

CREATE TABLE IF NOT EXISTS lab_mysql.cars(
vin_id VARCHAR(100) PRIMARY KEY, 
model VARCHAR(100),
car_year INT,
color VARCHAR(20),
Automatic VARCHAR(3)
);

CREATE TABLE IF NOT EXISTS lab_mysql.customers(
customer_id INT PRIMARY KEY, 
customer_name VARCHAR(100) NOT NULL,
phone_number BIGINT NOT NULL,
email_address VARCHAR(80) NOT NULL,
city VARCHAR(20),
state_province VARCHAR(50),
country VARCHAR(50),
postal_code INT
);

CREATE TABLE IF NOT EXISTS lab_mysql.salespersons(
staff_id INT PRIMARY KEY, 
salesperson_name VARCHAR(100) NOT NULL,
store_location VARCHAR(100),
position VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS lab_mysql.invoices(
invoice_number INT PRIMARY KEY, 
invoice_date DATE NOT NULL,
customer_id INT,
vin_id VARCHAR(100),
staff_id INT
);
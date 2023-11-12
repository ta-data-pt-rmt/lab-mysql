CREATE DATABASE lab_mysql;

CREATE TABLE lab_mysql.cars(
car_index INT PRIMARY KEY,
VIN VARCHAR(50) NOT NULL,
manufacturer VARCHAR(100) NOT NULL,
model VARCHAR(50) NOT NULL,
manufacture_year YEAR,
color TEXT(50),
price INT);

CREATE TABLE lab_mysql.salespersons(
salesperson_index INT PRIMARY KEY,
staf_ID INT NOT NULL,
salesperson_name VARCHAR(100) NOT NULL,
store VARCHAR(50) NOT NULL);

CREATE TABLE lab_mysql.customers(
customer_index INT PRIMARY KEY,
customer_ID INT NOT NULL,
customer_name VARCHAR(265) NOT NULL,
phone VARCHAR(20),
email VARCHAR(265),
address VARCHAR(265),
city VARCHAR(265),
state_province VARCHAR(265),
country VARCHAR(265),
zip_postal_code VARCHAR(265));

CREATE TABLE lab_mysql.invoices(
invoice_index INT PRIMARY KEY,
invoice_No VARCHAR(50) NOT NULL,
invoice_date DATE NOT NULL,
car_index INT NOT NULL,
customer_index INT NOT NULL,
salesperson_index INT NOT NULL,
amount INT NOT NULL);

SELECT * FROM lab_mysql.customers;
SELECT * FROM lab_mysql.cars;
SELECT * FROM lab_mysql.salespersons;
SELECT * FROM lab_mysql.invoices;

USE lab_mysql;


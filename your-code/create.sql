/* Challenge 2 - Create the Database and Tables */ 
USE lab_mysql;

CREATE DATABASE lab_mysql;

/* DROP TABLE lab_mysql.invoices; */

CREATE TABLE lab_mysql.cars(
vin_id VARCHAR(100) PRIMARY KEY,
model VARCHAR(80),
year INT,
color VARCHAR(50),
automatic VARCHAR(80)
);

CREATE TABLE lab_mysql.customers(
customer_id VARCHAR(100) PRIMARY KEY,
name VARCHAR(80),
phone_number  VARCHAR(50),
email VARCHAR(80),
adress VARCHAR(120),
city VARCHAR(80),
state VARCHAR(50),
country VARCHAR(80),
zip VARCHAR(10)
);

CREATE TABLE lab_mysql.salespeople(
staff_id VARCHAR(100) PRIMARY KEY,
name VARCHAR(100),
store_location VARCHAR(80)
);

CREATE TABLE lab_mysql.invoices(
invoice_number INT PRIMARY KEY,
date DATE,
customer_id VARCHAR(100),
vin_id VARCHAR(100),
staff_id VARCHAR(100)
);
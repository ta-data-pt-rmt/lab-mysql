USE car_sales;

CREATE DATABASE car_sales

CREATE TABLE IF NOT EXISTS 
car_sales.invoices(
invoice_num INT PRIMARY KEY,
issue_date DATE,
car_VIN VARCHAR(30),
customer_id INT,
salesperson_id INT
);

DROP TABLE car_sales.invoices;

SELECT * FROM car_sales.invoices

CREATE TABLE IF NOT EXISTS 
car_sales.cars(
car_VIN VARCHAR(20) PRIMARY KEY,
prod_year INT,
manufacturer VARCHAR(20),
model VARCHAR(20),
color VARCHAR(20)
);

DROP TABLE car_sales.cars;

SELECT * FROM car_sales.cars

CREATE TABLE IF NOT EXISTS 
car_sales.customers(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(30),
phone VARCHAR(20),
email VARCHAR(30),
address VARCHAR(50),
city VARCHAR(20),
state_province VARCHAR(20),
country VARCHAR(30),
zip INT
);

CREATE TABLE IF NOT EXISTS 
car_sales.sales_rep(
salesperson_id INT PRIMARY KEY,
sales_name VARCHAR(30),
phone VARCHAR(20),
email VARCHAR(30) DEFAULT "sales@cars.com",
store VARCHAR(30)
);

DROP TABLE car_sales.sales_rep;





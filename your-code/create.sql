CREATE DATABASE lab_mysql;
USE lab_mysql;

DROP TABLE lab_mysql.invoice;
DROP TABLE lab_mysql.cars;
DROP TABLE lab_mysql.customers;
DROP TABLE lab_mysql.salesperson;

SELECT * FROM invoice;
SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salesperson;

CREATE TABLE lab_mysql.invoice(
Invoice_number INT PRIMARY KEY,
Date INT,
Car INT,
Customer INT,
Salesperson INT
);

CREATE TABLE lab_mysql.cars(
VIN INT PRIMARY KEY, 
Manufacturer VARCHAR(128),
Model VARCHAR(128),
Year INT,
Color VARCHAR(128)
);

CREATE TABLE lab_mysql.customers(
Customer_ID INT PRIMARY KEY, 
Name VARCHAR(128),
Phone INT,
Email VARCHAR(128),
Address VARCHAR(128),
City VARCHAR(128),
StateProvince VARCHAR(128),
Country VARCHAR(128),
Postal INT
);

CREATE TABLE lab_mysql.salesperson(
Staff_ID INT PRIMARY KEY, 
Name VARCHAR(128),
Store VARCHAR(128)
)




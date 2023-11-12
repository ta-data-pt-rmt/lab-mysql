CREATE DATABASE lab_mysql;
USE lab_mysql;
CREATE TABLE IF NOT EXISTS
lab_mysql.cars(
ID INT PRIMARY KEY,
VIN VARCHAR(34),
Manufacturer VARCHAR(34),
Model VARCHAR(34),
Transmission TEXT,
Fuel_Type TEXT,
Year YEAR,
Color TEXT,
Price FLOAT
);

CREATE TABLE IF NOT EXISTS
lab_mysql.customers(
ID INT PRIMARY KEY,
Customer_ID INT,
Name VARCHAR(34),
Phone VARCHAR(34),
Email VARCHAR(34),
Address VARCHAR(34),
City VARCHAR(34),
State VARCHAR(34),
Country VARCHAR(34),
ZIP_Code VARCHAR(34)
);

CREATE TABLE IF NOT EXISTS
lab_mysql.salesperson(
ID INT PRIMARY KEY,
Salesperson_ID INT,
Name VARCHAR(34),
Phone VARCHAR(34),
Email VARCHAR(34),
Store VARCHAR(34),
City VARCHAR(34),
State VARCHAR(34),
Country VARCHAR(34)
);

CREATE TABLE IF NOT EXISTS
lab_mysql.invoice(
ID INT PRIMARY KEY,
Invoice_Number INT,
Date DATE,
Store VARCHAR(34),
City VARCHAR(34),
State VARCHAR(34),
Country VARCHAR(34),
VIN VARCHAR(34),
Customer_ID INT,
Salesperson_ID INT,
Sale_Price FLOAT
);

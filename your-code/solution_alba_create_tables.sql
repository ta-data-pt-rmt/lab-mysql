USE lab_mysql;
SHOW TABLES;

#Creating CARS table
CREATE TABLE IF NOT EXISTS lab_mysql.cars ( 
ID SERIAL,
VIN VARCHAR(30) NOT NULL,
Manufacturer VARCHAR(30),
Model VARCHAR(30),
Year_car DATE,
Color VARCHAR(20)
);


SELECT * FROM cars;

#Creating CUSTOMERS table
CREATE TABLE IF NOT EXISTS lab_mysql.customers ( 
ID SERIAL,
Customer_ID VARCHAR(10) NOT NULL,
Name_Customer VARCHAR(30),
Phone VARCHAR(15),
Email VARCHAR(30),
Address VARCHAR(30),
City VARCHAR(20),
State_Province VARCHAR(20),
Country VARCHAR(20),
Postal VARCHAR(10)
);

SELECT * FROM customers;

#Creating SALESPERSON table
CREATE TABLE IF NOT EXISTS lab_mysql.salesperson (
ID SERIAL,
Staff_ID VARCHAR(10) NOT NULL,
Name_salesperson VARCHAR(30),
Store VARCHAR(30)
);

SELECT * FROM salesperson;

#Creating INVOICES table
CREATE TABLE IF NOT EXISTS lab_mysql.invoices (
ID SERIAL,
Invoice_Number VARCHAR(20) NOT NULL,
Date_invoice DATE,
Car INT,
Customer INT,
Sales_Person INT
);

SELECT * FROM invoices;
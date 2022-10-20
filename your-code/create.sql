CREATE DATABASE lab_mysql;

CREATE TABLE lab_mysql.cars(
ID INT PRIMARY KEY,
VIN VARCHAR(64),
Manufacturer VARCHAR(155),
Model VARCHAR(155),
Year INT,
Color VARCHAR(64)
);


CREATE TABLE lab_mysql.customers(
ID INT PRIMARY KEY,
Customer_ID INT,
Name VARCHAR(64),
Phone VARCHAR(64),
Email VARCHAR(64),
Address VARCHAR(155),
City VARCHAR(64),
State_Province VARCHAR(64),
Country VARCHAR(50),
Zip INT
);



CREATE TABLE lab_mysql.salesperson(
ID INT PRIMARY KEY,
Staff_ID INT,
Name VARCHAR(64),
Store VARCHAR(64)
);


CREATE TABLE lab_mysql.invoices(
ID INT PRIMARY KEY ,
IV_Number INT,
Date DATE,
Car VARCHAR(64),
Customer VARCHAR(64),
Salesperson VARCHAR(64)
);


SELECT * FROM lab_mysql.cars;

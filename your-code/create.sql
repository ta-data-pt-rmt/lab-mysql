/* Creating a new database */
CREATE DATABASE sql_select;
CREATE TABLE sql_select.Cars (
    ID INT,
    VIN VARCHAR(17),
    Manufacturer VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
    Color VARCHAR(50)
);
CREATE TABLE sql_select.Customers (
    ID INT,
    Customer_ID INT,
    Name VARCHAR(50),
    Phone VARCHAR(20),
    Email VARCHAR(50),
    Address VARCHAR(100),
    City VARCHAR(50),
    State_Province VARCHAR(50),
    Country VARCHAR(50),
    Postal VARCHAR(10)
);
CREATE TABLE sql_select.Salespersons(
ID INT,
Staff_ID INT,
Name VARCHAR(50),
Store VARCHAR(50)
);
CREATE TABLE sql_select.Invoices(
ID INT,
Invoice_Number INT,
Date VARCHAR(20),
Car INT,
Customer INT,
Sales_Person INT
);

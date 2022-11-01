 CREATE DATABASE lab_mysql;
 USE lab_mysql;
 
 CREATE TABLE Cars (VIN VARCHAR(255), Manufacturer VARCHAR(255), 
 Model VARCHAR(255), Year INT, Color VARCHAR(255));
 
 CREATE TABLE Customers (Customer_ID INT, Name  VARCHAR(255), 
 Phone_No VARCHAR(255), Email VARCHAR(255), Address VARCHAR(255), City VARCHAR(255), 
 State_Province VARCHAR(255), Country VARCHAR(255), Postal INT);
 
 CREATE TABLE Salespersons (Staff_ID INT, Name VARCHAR(255), 
 Store VARCHAR(255));
 
 CREATE TABLE Invoice (Invoice_No INT, Date DATE, Car VARCHAR(255), 
 Customer VARCHAR(255), Sales_Person VARCHAR(255));
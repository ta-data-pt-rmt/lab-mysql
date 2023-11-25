CREATE DATABASE Carday;
USE Carday;

#Creating Cars table
CREATE TABLE Cars (
id INT PRIMARY KEY AUTO_INCREMENT,
VIN INT,
Manufacturer VARCHAR(64),
Model VARCHAR(64), 
Year INT, 
color  VARCHAR(64)
);
#Creating Customers table
CREATE TABLE  Customers (
 id INT AUTO_INCREMENT PRIMARY KEY,
 Customerid INT,
 Name VARCHAR(100),
 Phone VARCHAR(20),
 Email VARCHAR(100),
 Address VARCHAR(255),
 City VARCHAR(100),
 StateProvince VARCHAR(100),
 Country VARCHAR(100),
PostalCode VARCHAR(20)
);

#Creating Salespersons
CREATE TABLE  Salespersons (
id INT PRIMARY KEY AUTO_INCREMENT,
Staff_id INT,
Name VARCHAR(64),
Store VARCHAR(64)
);

#Creating Invoices 
CREATE TABLE  Invoices (
 id INT PRIMARY KEY AUTO_INCREMENT,
 Invoice_No INT,
 Date DATE,
 Car_id INT,
 Customer_id  INT,
 Salesperson_id INT,
 FOREIGN KEY (Car_id) REFERENCES Cars(id),
 FOREIGN KEY (Customer_id) REFERENCES Customers(id),
 FOREIGN KEY (Salesperson_id) REFERENCES Salespersons(id)
  );
  
SHOW TABLES LIKE 'Invoices';
CREATE DATABASE lab_mysql;

USE lab_mysql;

CREATE TABLE IF NOT EXISTS cars (
 id INT PRIMARY KEY AUTO_INCREMENT, 
 vin VARCHAR(64) NOT NULL,
 manufacturer VARCHAR(128) NOT NULL,
 model VARCHAR(64) NOT NULL,
 year INT,
 color VARCHAR(32)
 );
 
/*DROP TABLE cars;*/
 
CREATE TABLE IF NOT EXISTS customers (
 id INT PRIMARY KEY AUTO_INCREMENT,
 customer_ID INT NOT NULL,
 name VARCHAR(64) NOT NULL,
 phone_number VARCHAR(32) NOT NULL,
 email VARCHAR(64) NOT NULL,
 address VARCHAR(32), 
 city VARCHAR(32),
 state VARCHAR(32),
 country VARCHAR(32),
 zip_code VARCHAR(32)
 );
 
 /*DROP TABLE customers;*/
 
CREATE TABLE IF NOT EXISTS salespersons (
 id INT PRIMARY KEY AUTO_INCREMENT,
 staff_ID INT NOT NULL,
 name VARCHAR(64) NOT NULL,
 store VARCHAR(64) NOT NULL
 );
 
 /*DROP TABLE salespersons;*/
 
CREATE TABLE IF NOT EXISTS invoices (
 id INT PRIMARY KEY AUTO_INCREMENT,
 invoice_number INT NOT NULL,
 date DATETIME NOT NULL,
 car int NOT NULL,
 customer INT NOT NULL,
 staff_member INT NOT NULL,
FOREIGN KEY (car) REFERENCES cars(id),
FOREIGN KEY (customer) REFERENCES customers(id),
FOREIGN KEY (staff_member) REFERENCES salespersons(id)
 );
 
 /*DROP TABLE invoices;*/
 

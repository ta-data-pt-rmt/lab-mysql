CREATE DATABASE lab_mysql;

USE lab_mysql;

CREATE TABLE IF NOT EXISTS cars (
 vin INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
 manufacturer VARCHAR(128) NOT NULL,
 model VARCHAR(64) NOT NULL,
 year INT,
 color VARCHAR(32)
 );
 
/*DROP TABLE cars;*/
 
CREATE TABLE IF NOT EXISTS customers (
 customer_ID INT PRIMARY KEY NOT NULL,
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
 staff_ID INT PRIMARY KEY NOT NULL,
 name VARCHAR(64) NOT NULL,
 store VARCHAR(64) NOT NULL
 );
 
 /*DROP TABLE salespersons;*/
 
CREATE TABLE IF NOT EXISTS invoices (
 invoice_number SERIAL PRIMARY KEY NOT NULL,
 date DATETIME NOT NULL,
 vin INT NOT NULL,
 customer_ID INT NOT NULL,
 staff_ID INT NOT NULL,
FOREIGN KEY (vin) REFERENCES cars(vin),
FOREIGN KEY (customer_ID) REFERENCES customers(customer_ID),
FOREIGN KEY (staff_ID) REFERENCES salespersons(staff_ID)
 );
 
 /*DROP TABLE invoices;*/
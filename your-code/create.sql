/*
#####################################
##  CHALLENGE 2 - CREATE DATABASE  ##
##################################### */

DROP DATABASE lab_mysql;

/* CREATE DATABASE lab_mysql */
CREATE DATABASE  lab_mysql;

USE lab_mysql;

/* CREATE TABLE cars */
CREATE TABLE cars (
id INT AUTO_INCREMENT,
VIN VARCHAR (30) NOT NULL UNIQUE,
manufacturer VARCHAR (20) NOT NULL,
model VARCHAR (20) NOT NULL,
year YEAR,
color VARCHAR (30),
PRIMARY KEY (id));

/* CREATE TABLE customers */
CREATE TABLE customers (
id INT AUTO_INCREMENT,
customer_id INT NOT NULL UNIQUE,
name VARCHAR (50) NOT NULL,
phone_number VARCHAR (30),
email VARCHAR (30),
address VARCHAR (30) NOT NULL,
city VARCHAR (30) NOT NULL,
state_province VARCHAR (30),
country VARCHAR (30) NOT NULL,
zip_postal INT NOT NULL,
PRIMARY KEY (id));

/* CREATE TABLE salespersons */
CREATE TABLE salespersons (
id INT AUTO_INCREMENT,
staff_id VARCHAR (5) NOT NULL UNIQUE,
name VARCHAR (50) NOT NULL,
store VARCHAR (30) NOT NULL,
PRIMARY KEY (id));

/* CREATE TABLE invoices */
CREATE TABLE invoices (
id INT AUTO_INCREMENT,
invoice_number INT NOT NULL,
fk_vin VARCHAR (30) NOT NULL,
fk_customer_id INT NOT NULL,
fk_staff_id VARCHAR (5) NOT NULL,
date DATE,
PRIMARY KEY (id),
FOREIGN KEY (fk_vin) REFERENCES cars(VIN),
FOREIGN KEY (fk_customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (fk_staff_id) REFERENCES salespersons(staff_id));

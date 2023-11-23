CREATE DATABASE lab_mysql;
USE lab_mysql;
SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";
SET SQL_SAFE_UPDATES =1;
/* I need to create a surrogate key for each table to be able to auto-increment, but not as natural primary key*/

DROP TABLE customer;
CREATE TABLE IF NOT EXISTS customer(
id INT NOT NULL AUTO_INCREMENT,
customer_id INT,
name VARCHAR(50),
phone_nr VARCHAR(20),
email VARCHAR(50),
address VARCHAR(50),
city VARCHAR(30),
province VARCHAR(50),
country VARCHAR(30),
zip_code VARCHAR(15),
PRIMARY KEY (customer_id),
UNIQUE KEY (id)
);

DROP TABLE car;
CREATE TABLE IF NOT EXISTS car(
id INT NOT NULL AUTO_INCREMENT,
vin CHAR(17),
manufacture VARCHAR(50),
model VARCHAR(50),
year YEAR,
color VARCHAR(15),
PRIMARY KEY (vin),
UNIQUE KEY (id)
);

DROP TABLE salesperson;
CREATE TABLE IF NOT EXISTS salesperson(
id INT NOT NULL AUTO_INCREMENT,
staff_id INT,
name VARCHAR(50),
store VARCHAR(30),
PRIMARY KEY (staff_id),
UNIQUE KEY (id)
);

DROP TABLE invoice;
CREATE TABLE IF NOT EXISTS invoice(
id INT NOT NULL AUTO_INCREMENT,
invoice_nr INT,
date DATE,
car CHAR(17),
customer INT,
salesperson INT,
PRIMARY KEY (invoice_nr),
FOREIGN KEY (car) REFERENCES car(vin),
FOREIGN KEY (customer) REFERENCES customer(customer_id),
FOREIGN KEY (salesperson) REFERENCES salesperson(staff_id),
UNIQUE KEY (id)
);

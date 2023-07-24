CREATE SCHEMA lab_mysql DEFAULT CHARACTER SET utf8;
USE lab_mysql;

CREATE TABLE cars (
	id INT PRIMARY KEY AUTO_INCREMENT,
    VIN VARCHAR(50),
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT(4),
    color VARCHAR(20)
);

CREATE TABLE customers (
	id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id VARCHAR(50),
    name VARCHAR(50),
    phonenumber VARCHAR(20),
    email VARCHAR(50),
    address VARCHAR(50),
    city VARCHAR(20),
    state VARCHAR(30),
    country VARCHAR(30),
    postalcode VARCHAR(15) 
);

CREATE TABLE sales_people (
	id INT PRIMARY KEY AUTO_INCREMENT,
    staff_id VARCHAR(50),
    name VARCHAR(50),
    store VARCHAR(50)
);

CREATE TABLE invoices (
	id INT PRIMARY KEY AUTO_INCREMENT,
    invoice_number VARCHAR(50),
    date DATE,
    car VARCHAR(20),
    customer VARCHAR(50),
    sales_person VARCHAR(50)
);
   
    
    
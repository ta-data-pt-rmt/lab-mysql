USE lab_mysql;

/* Creating Database */
CREATE DATABASE IF NOT EXISTS lab_mysql;

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

/* Creating Cars Table */
CREATE TABLE cars (
    id SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(32),
    Manufacturer VARCHAR(32),
    Model VARCHAR(32),
    Year YEAR,
    Color VARCHAR(32)
) AUTO_INCREMENT = 0;

/* Creating Customers Table */
CREATE TABLE customers (
	id SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_customer INT,
    name VARCHAR(32),
    phone VARCHAR(32), 
    email VARCHAR(32),
    address VARCHAR(32),
    city VARCHAR(32),
    state_province VARCHAR(32),
    country VARCHAR(32),
    postal INT
);

/* Creating Sales Persons Table */
CREATE TABLE salespersons (
	id SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    staff_id SMALLINT,
    name VARCHAR(32),
    store VARCHAR(32)
);

/* Creating Invoice Table */
CREATE TABLE invoices (
    id SMALLINT AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT,
    date DATE,
    car_id SMALLINT,
    customer_id SMALLINT,
    sales_person_id SMALLINT,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (sales_person_id) REFERENCES salespersons(id)
);

DROP TABLE cars;
DROP TABLE customers;
DROP TABLE salespersons;
DROP TABLE invoices;
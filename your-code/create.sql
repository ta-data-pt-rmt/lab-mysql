/* Creating Databas */
CREATE DATABASE if not exists lab_mysql;

USE lab_mysql;

/* Creating Cars Table */
CREATE TABLE Cars (
    id SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(32),
    Manufacturer VARCHAR(32),
    Model VARCHAR(32),
    Year YEAR,
    Color VARCHAR(32)
) AUTO_INCREMENT = 0;

/* Creating Customers Table */
CREATE TABLE Customers (
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

/* Creating Sales person Table */
CREATE TABLE Sales_person (
	id SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    staff_id SMALLINT,
    name VARCHAR(32),
    store VARCHAR(32)
);

/* Creating Invoice Table */
CREATE TABLE Invoice (
	id SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    invoice_number INT,
    date DATE,
    car SMALLINT,
    customer SMALLINT,
    sales_person SMALLINT
);


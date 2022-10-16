USE lab_mysql;
 
SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";
 
CREATE TABLE IF NOT EXISTS cars (
 id INT PRIMARY KEY AUTO_INCREMENT,
 vin VARCHAR(20) NOT NULL,
 manufacturer VARCHAR(20) NOT NULL,
 model VARCHAR(20) NOT NULL,
 year INT,
 color VARCHAR(15)
);
 
/* DROP TABLE cars */
 
CREATE TABLE IF NOT EXISTS customers (
 id INT PRIMARY KEY AUTO_INCREMENT,
 customerid VARCHAR(5) NOT NULL,
 name VARCHAR(50) NOT NULL,
 phone_number VARCHAR(20) NOT NULL,
 email VARCHAR(80),
 address VARCHAR(100),
 city VARCHAR(20),
 state_province VARCHAR(20),
 country VARCHAR(20),
 postal VARCHAR(10)
);
 
/* DROP TABLE customers */

CREATE TABLE IF NOT EXISTS salespersons (
 id INT PRIMARY KEY AUTO_INCREMENT,
 staffid VARCHAR(5) NOT NULL,
 name VARCHAR(50) NOT NULL,
 store VARCHAR(20)
);

/* DROP TABLE salespersons */

CREATE TABLE IF NOT EXISTS invoices (
 id INT PRIMARY KEY AUTO_INCREMENT,
 invoicenumber VARCHAR(15) NOT NULL,
 date DATE NOT NULL,
 car INT NOT NULL,
 customer INT NOT NULL,
 salesperson INT NOT NULL,
FOREIGN KEY (car) REFERENCES cars(id),
FOREIGN KEY (customer) REFERENCES customers(id),
FOREIGN KEY (salesPerson) REFERENCES salespersons(id)
);

/* DROP TABLE invoices */

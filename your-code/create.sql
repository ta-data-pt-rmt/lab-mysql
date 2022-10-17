USE lab_mysql;
SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";


CREATE TABLE IF NOT EXISTS cars (
id INT PRIMARY KEY auto_increment,
VIN VARCHAR(50) NOT NULL,
manufacturer VARCHAR(50) NOT NULL,
model VARCHAR(50) NOT NULL,
year INT NOT NULL,
color VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS customers (
id INT PRIMARY KEY auto_increment,
customerid VARCHAR(10) NOT NULL,
name VARCHAR(50) NOT NULL,
phone_number VARCHAR(20) NOT NULL,
email VARCHAR(50),
address VARCHAR(100),
city VARCHAR(50),
state_province VARCHAR(50),
country VARCHAR(50),
postal VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS sales_persons (
id INT PRIMARY KEY auto_increment,
staff_id VARCHAR(20) NOT NULL,
name VARCHAR(50) NOT NULL,
store VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS invoices (
id INT PRIMARY KEY auto_increment,
invoice_number VARCHAR(50) NOT NULL,
date DATE NOT NULL,
car INT NOT NULL,
customer INT NOT NULL,
sales_person INT NOT NULL,
FOREIGN KEY (car) references cars(id),
FOREIGN KEY (customer) references customers(id),
FOREIGN KEY (sales_person) references sales_persons(id)
);

/*DROP TABLE IF EXISTS cars, customers, invoices, sales_persons*/
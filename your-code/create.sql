USE lab_mysql;

-- create car table
CREATE TABLE car (
id INT AUTO_INCREMENT,
vin VARCHAR(50) NOT NULL,
manufacturer VARCHAR(50) NOT NULL,
model VARCHAR(30) NOT NULL,
year INT NOT NULL,
color VARCHAR(20),
PRIMARY KEY (id)
);
-- create customer table
CREATE TABLE customers (
id  INT AUTO_INCREMENT  ,
customer_id VARCHAR(20) NOT NULL,
cust_name VARCHAR(20) NOT NULL,
phone_number VARCHAR(30) NOT NULL,
email VARCHAR(30) DEFAULT 'mail@mail.com',
address VARCHAR(50),
city VARCHAR(30),
state_province VARCHAR(30),
country VARCHAR(30),
zip_postal VARCHAR(15),
PRIMARY KEY (id)
);

CREATE TABLE salesperson (
id INT AUTO_INCREMENT,
staff_id VARCHAR(6)  NOT NULL ,
name VARCHAR(30)  NOT NULL,
store VARCHAR(30) NOT NULL,
PRIMARY KEY (id)
);

-- create invoices table
CREATE TABLE invoices (
id INT AUTO_INCREMENT,  
invoice_number INT NOT NULL,
date_invoce DATE NOT NULL,
car VARCHAR(30) NOT NULL,
customer VARCHAR(30) NOT NULL,
salesperson VARCHAR(30) NOT NULL,
PRIMARY KEY (id)
);



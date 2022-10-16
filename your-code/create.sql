USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
id INT 
,vin_id VARCHAR(17) PRIMARY KEY
,manufacturer VARCHAR(20) NOT NULL
,model VARCHAR(20) NOT NULL
,year_manufactured YEAR NOT NULL
,color VARCHAR(20) NOT NULL);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
id int
,customer_id INT PRIMARY KEY
,name_customer VARCHAR(40) NOT NULL
,phone_number VARCHAR(20) NOT NULL
,email VARCHAR(40) DEFAULT 'missing_email'
,address VARCHAR(40) DEFAULT 'missing_address'
,city VARCHAR(40) DEFAULT 'missing_city'
,state_province VARCHAR(40) DEFAULT 'missing_province'
,country VARCHAR(40) NOT NULL
,zip_code VARCHAR(10) NOT NULL);

DROP TABLE IF EXISTS sales_team;
CREATE TABLE sales_team (
id INT
,staff_id INT PRIMARY KEY
,staff_name VARCHAR(40) NOT NULL
,store_id INT NOT NULL);

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
id INT
,invoice_id INT PRIMARY KEY
,date_invoice DATE NOT NULL
,vin_id VARCHAR(17) NOT NULL
,customer_id INT NOT NULL
,staff_id INT NOT NULL);
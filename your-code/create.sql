USE lab_mysql;
SHOW TABLES;

/* Create table cars */
CREATE TABLE IF NOT EXISTS cars ( 
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
VIN VARCHAR(40) NOT NULL,
Manufacturer VARCHAR(40),
Model VARCHAR(40),
Year_car DATE,
Color VARCHAR(20)
);

DROP TABLE cars
SELECT *
FROM cars

/* Create table Customers */
CREATE TABLE IF NOT EXISTS customers ( 
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Customer_ID VARCHAR(15) NOT NULL,
Name_Customer VARCHAR(30),
Phone VARCHAR(15),
Email VARCHAR(40),
Address VARCHAR(200),
City VARCHAR(40),
State_Province VARCHAR(30),
Country VARCHAR(30),
Postal_Code VARCHAR(30)
);


/* Create table Salespersons */
CREATE TABLE IF NOT EXISTS Salespersons (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Staff_ID VARCHAR(30) NOT NULL,
Saleperson_name VARCHAR(40) NOT NULL,
Store VARCHAR(50) NOT NULL
);


/* Create table Invoices */
CREATE TABLE IF NOT EXISTS invoices(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Invoice_number INT NOT NULL,
Date DATE NOT NULL, 
Car_id INT NOT NULL, 
Customer_id INT NOT NULL, 
Salesperson_id INT NOT NULL
 );
 
 

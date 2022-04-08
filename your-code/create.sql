CREATE DATABASE lab_mysql;
USE lab_mysql;

CREATE TABLE Cars 
(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
VIN VARCHAR(17) NOT NULL,
manufacturer VARCHAR(20), 
model VARCHAR(20), 
year YEAR(4), 
color VARCHAR(10));

CREATE TABLE Customers 
(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
customerid INT NOT NULL,
name VARCHAR(40), 
phone_number VARCHAR(20),  
email VARCHAR(20),
address VARCHAR(40),
city VARCHAR(20),  
state_province VARCHAR(20), 
country VARCHAR(20), 
postal_code VARCHAR(8)
); 

CREATE TABLE Salespersons 
(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
staffid INT NOT NULL,
name VARCHAR(40), 
store VARCHAR(20)
); 

/*
#This declaration i¡of FK don't work:
CREATE TABLE Invoices 
(ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
date DATE,
car_id INT NOT NULL FOREIGN KEY REFERENCES Cars(id),
curtomer_id INT NOT NULL FOREIGN KEY REFERENCES Customers(id),
salesperson_id INT NOT NULL FOREIGN KEY REFERENCES Salespersons(id)
); 
*/

CREATE TABLE Invoices 
(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
invoice_number INT NOT NULL,
date DATE,
car_id INT NOT NULL,
curtomer_id INT NOT NULL,
salesperson_id INT NOT NULL,
#Declararion of FK:
FOREIGN KEY (car_id) REFERENCES Cars(id),
FOREIGN KEY (curtomer_id) REFERENCES Customers(id),
FOREIGN KEY (salesperson_id) REFERENCES Salespersons(id)
); 

/*
#If I need to alter a table:
ALTER TABLE Salespersons    
MODIFY staffid INT NOT NULL AUTO_INCREMENT;  

*/

CREATE DATABASE lab_mysql;

DROP DATABASE lab_mysql_;

USE lab_mysql;

/*creating atable for car info*/
CREATE TABLE lab_mysql.car_info2(
ID INT AUTO_INCREMENT PRIMARY KEY,
vehicleID VARCHAR (30), 
car_Manufacturer VARCHAR (30),
Car_Model VARCHAR (30),
Car_year INT,
Car_Color VARCHAR (15)
);

/* modify the ID column to be AUTO_INCREMENT */
ALTER TABLE Car_info MODIFY COLUMN ID INT AUTO_INCREMENT PRIMARY KEY;


/* Modify the vehicleID column data type to VARCHAR*/
ALTER TABLE Car_info MODIFY COLUMN vehicleID VARCHAR(50);


/*checking if worked*/
SELECT *
FROM car_info

/*creating atable for customer info*/
CREATE TABLE lab_mysql.customer_info2(
CustomerID INT PRIMARY KEY, 
Customer_Name VARCHAR(50),
Customer_PhoneNumber VARCHAR(20),
Customer_email VARCHAR(50),
Customer_Address VARCHAR(100),
Customer_City VARCHAR(20),
Customer_State_Province VARCHAR(20),
Customer_Country VARCHAR(20),
Customer_ZipCode VARCHAR(10)
);

/*checking if worked*/
SELECT *
FROM customer_info

ALTER TABLE lab_mysql.customer_info
DROP PRIMARY KEY,
ADD ID INT AUTO_INCREMENT PRIMARY KEY FIRST;


ALTER TABLE lab_mysql.customer_info
ADD ID INT AUTO_INCREMENT PRIMARY KEY FIRST

/*creating atable for SALESPERSON info*/
CREATE TABLE lab_mysql.salesperson(
staffID INT PRIMARY KEY,
employee_name VARCHAR (50),
company_store VARCHAR (30)
);

/*checking if worked*/
SELECT *
FROM salesperson

ALTER TABLE lab_mysql.salesperson
DROP PRIMARY KEY,
ADD ID INT AUTO_INCREMENT PRIMARY KEY FIRST;

/*creating atable for invoices info*/
CREATE TABLE lab_mysql.invoices(
sale INT,
invoice_number INT, 
invoice_date VARCHAR(10),
vehicle_ID INT,
CustomerID INT,
Customer_Name VARCHAR(50),
employee_name VARCHAR(50),
staff_ID INT
);

ALTER TABLE lab_mysql.invoices
ADD ID INT AUTO_INCREMENT PRIMARY KEY FIRST;

Use lab_mysql
SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";



INSERT INTO Car_info (ID , vehicleID, car_Manufacturer, Car_Model, Car_year, Car_Color)
VALUES
    (0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
    (1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
    (2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
    (3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
    (4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
    (5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');
    
select * 
from car_info2;

-- modify the vehicleID column to be UNIQUE
ALTER TABLE Car_info ADD UNIQUE(vehicleID);

INSERT INTO Car_info2 (ID, vehicleID, car_Manufacturer, Car_Model, Car_year, Car_Color)
VALUES
    (0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
    (1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
    (2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
    (3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
    (4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
    (5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');


DELETE FROM Car_info WHERE ID < 6;


INSERT INTO customer_info (ID, CustomerID, Customer_Name, Customer_PhoneNumber, Customer_email,	Customer_Address, Customer_City, Customer_State_Province, Customer_Country,  Customer_ZipCode)
VALUES
(0, 10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(1, 20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(2, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO salesperson (ID, StaffID, employee_name, company_store) 
VALUES
(0, '00001', 'Petey Cruiser', 'Madrid'),
(1, '00002', 'Anna Sthesia', 'Barcelona'),
(2, '00003', 'Paul Molive', 'Berlin'),
(3, '00004', 'Gail Forcewind', 'Paris'),
(4, '00005', 'Paige Turner', 'Mimia'),
(5, '00006', 'Bob Frapples', 'Mexico City'),
(6, '00007', 'Walter Melon', 'Amsterdam'),
(7, '00008', 'Shonda Leer', 'São Paulo');

SELECT *
FROM invoices

INSERT INTO invoices (ID, invoice_number, date, vehicle_ID, CustomerID, employee_name) VALUES
(0, 852399038, '2018-08-22', 0, 1, 3),
(1, 731166526, '2018-12-31', 3, 0, 5),
(2, 271135104, '2019-01-22', 2, 2, 7);

CREATE TABLE lab_mysql.invoices(
sale INT,
invoice_number INT, 
invoice_date VARCHAR(10),
vehicle_ID INT,
CustomerID INT,
Customer_Name VARCHAR(50),
employee_name VARCHAR(50),
staff_ID INT
CREATE DATABASE lab_mysql;

DROP DATABASE lab_mysql_;

USE lab_mysql;

/*creating atable for car info*/
CREATE TABLE lab_mysql.car_info(
vehicleID INT, 
car_Manufacturer VARCHAR (30),
Car_Model VARCHAR (30),
Car_year INT,
Car_Color VARCHAR (15)
);

/*checking if worked*/
SELECT *
FROM car_info

/*creating atable for customer info*/
CREATE TABLE lab_mysql.customer_info(
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

/*creating atable for SALESPERSON info*/
CREATE TABLE lab_mysql.salesperson(
staffID INT PRIMARY KEY,
employee_name VARCHAR (50),
company_store VARCHAR (30)
);

/*checking if worked*/
SELECT *
FROM salesperson

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

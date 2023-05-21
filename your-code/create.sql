CREATE DATABASE lab_mysql;

CREATE TABLE lab_mysql.cars(
	ID INT PRIMARY KEY,
	VIN VARCHAR(100),
	Manufacturer VARCHAR(100),
    Model VARCHAR(100),
    Year INT,
    Color VARCHAR(100),
    Mileage FLOAT,
    SellingPrice FLOAT
    )
    
    CREATE TABLE lab_mysql.invoices(
	ID INT,
	Invoice_number INT PRIMARY KEY,
	DATE VARCHAR(100),
    CAR INT,
    Customer INT,
    Salesperson INT,
    SellingPrice FLOAT
    )

    CREATE TABLE lab_mysql.salesperson(
	ID INT, 
	Staff_ID INT PRIMARY KEY,
	Name VARCHAR(100),
    Store VARCHAR(100),
    Commission FLOAT
    )

    CREATE TABLE lab_mysql.customers(
	ID INT, 
	Customer_ID INT PRIMARY KEY,
	Name VARCHAR(100),
    Phone VARCHAR(100),
	Email VARCHAR(100),
	Adress VARCHAR(100),
	City VARCHAR(100),
	State_Province VARCHAR(100),
	Country VARCHAR(100),
	Postal INT,
	Customer_since INT
    )

   DROP TABLE  lab_mysql.cars
    

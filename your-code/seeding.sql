CREATE DATABASE lab_mysql;
USE lab_mysql;

DROP TABLE lab_mysql.invoice;
DROP TABLE lab_mysql.cars;
DROP TABLE lab_mysql.customers;
DROP TABLE lab_mysql.salesperson;

SELECT * FROM invoice;
SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salesperson;

CREATE TABLE lab_mysql.invoice(
Invoice_number INT PRIMARY KEY,
Date INT,
Car INT,
Customer INT,
Salesperson INT
);

CREATE TABLE lab_mysql.cars(
VIN INT, 
Manufacturer VARCHAR(128),
Model VARCHAR(128),
Year INT,
Color VARCHAR(128)
);

CREATE TABLE lab_mysql.customers(
Customer_ID INT PRIMARY KEY, 
Name VARCHAR(128),
Phone INT,
Email VARCHAR(128),
Address VARCHAR(128),
City VARCHAR(128),
StateProvince VARCHAR(128),
Country VARCHAR(128),
Postal INT
);

CREATE TABLE lab_mysql.salesperson(
Staff_ID INT PRIMARY KEY, 
Name VARCHAR(128),
Store VARCHAR(128)
);

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

INSERT INTO lab_mysql.cars (VIN, Manufacturer, Model, Year, Color)
VALUES 
	("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
    ("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
    ("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
    ("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver"),
    ("DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray"),
    ("DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");

INSERT INTO lab_mysql.customers (Customer_ID, Name, Phone, Email, Address, City, StateProvince, Country, Postal)
VALUES 
	(10001, "Pablo Picasso", "+34 636 17 63 82", "-", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", 28045),
    (2001, "Abraham Lincoln", "+1 305 907 7086", "-", "120 SW 8th St", "Miami", "Florida", "United States", 33130),
    (3001, "Napoléon Bonaparte", "+33 1 79 75 40 00", "-", "40 Rue du Colisée", "Paris", "Île-de-France", "France", "75008");

INSERT INTO lab_mysql.salesperson (Staff_ID, Name, Store)
VALUES 
	(00001, "Petey Cruiser", "Madrid"),
    (00002, "Anna Sthesia", "Barcelona"),
    (00003, "Paul Molive", "Berlin"),
    (00004, "Gail Forcewind", "Paris"),
    (00005, "Paige Turner", "Mimia"),
    (00006, "Bob Frapples", "Mexico City"),
    (00007, "Walter Melon", "Amsterdam"),
    (00008, "Shonda Leer", "São Paulo");

INSERT INTO lab_mysql.invoice (Invoice_number, Date, Car, Customer, Salesperson)
VALUES 
	(852399038, "22-08-2018", 0, 1, 3),
    (731166526, "31-12-2018", 3, 0, 5),
    (271135104, "22-01-2019", 2, 2, 7);
   
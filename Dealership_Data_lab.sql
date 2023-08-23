CREATE DATABASE dealership_company;

SELECT * 
FROM dealership_company.cars;

DROP DATABASE dealership_company;
DROP TABLE dealership_company.cars;

CREATE TABLE IF NOT EXISTS dealership_company.cars(
Serial_num INT AUTO_INCREMENT PRIMARY KEY,
VIN VARCHAR (20),
manufacturer VARCHAR (150), 
model VARCHAR (20), 
year YEAR,
color VARCHAR (10)
 );
 
 INSERT INTO dealership_company.cars(VIN, manufacturer, model, year, color) 
 VALUES
 ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
 ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
 ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White' ),
 ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');
 
 INSERT INTO dealership_company.cars(VIN, manufacturer, model, year) 
 VALUES
 ('DAM41UDN3CHU2WVF6', 'volvo', 'V60 Cross Country', 2019);
 
 /*TO UPDATE NULL VALUE*/
 UPDATE dealership_company.cars
 SET color = "white"
 WHERE VIN = '4Y1SL65848Z411441';
 
 SELECT *
 FROM dealership_company.cars;

/*Data creation of customers.*/

CREATE TABLE dealership_company.customers(
Serial_num INT AUTO_INCREMENT PRIMARY KEY,
customer_ID INT,
customer_name VARCHAR (50), 
phone_number VARCHAR (20), 
email VARCHAR (100),
address VARCHAR (150),
city VARCHAR (50), 
state_province VARCHAR (100),
country VARCHAR (50), 
postal INT (20)
);


INSERT INTO dealership_company.customers( customer_ID, customer_name, phone_number, email, address, city, state_province, country, postal)
VALUES 
(10001, 'Neal Smith', '+1 555-123-4567', 'Neal.smith@gmail.com', '123 Main Street', 'Anytown', 'California', 'United States', 3149),
(20001, 'Abhi Thompson', '+1 555-987-6543', 'Abhi.thompson@gmail.com', '456 Oak Avenue', 'Smallville', 'New York', ' United States', '54321'),
(3001, 'Sana Rod', '+34 987-654-321', 'sana.rod@gmail.com', '321 Pine Lane', 'Barcelona', 'Catalonia', ' Spain', 34521);

INSERT INTO dealership_company.customers(customer_ID, phone_number, address, city, state_province, country, postal)
VALUE (4001, '+44 123-456-7890', '789 Elm Street', 'London', 'England', ' United Kingdom', '08001');

SELECT * 
FROM dealership_company.customers;


/*Data creation of salespersons.*/
CREATE TABLE dealership_company.salespersons(
Serial_num INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Staff_id VARCHAR(10),
Name VARCHAR (50),
Store VARCHAR (50)
);

INSERT INTO dealership_company.salespersons (Staff_id, Name, Store)
VALUES
    ('SP001', 'Petey Cruiser', 'Madrid '),
    ('SP002', 'Anna Sthesia','Barcelona'),
    ('SP003', 'Paul Molive', 'Berlin'),
    ('SP004', 'Gail Forcewind', 'Paris'),
	('SP005', 'Paige Turner', 'Mimia'),
    ('SP006', 'Bob Frapples', 'Mexico City'),
    ('SP007', 'Walter Melon', 'Amsterdam'
    );
    

SELECT *
FROM dealership_company.salespersons;

/*creating invoice data.*/ 
CREATE TABLE dealership_company.invoice(
Serial_num INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
Invoice_number INT,
Date DATE,
Car VARCHAR (20), 
Customer_name VARCHAR(50), 
Sales_Person VARCHAR (50) 
);

INSERT INTO dealership_company.invoice (invoice_number, date, car, customer_name, Sales_Person)
VALUES
    (852399038, '2023-05-01', 'Toyota RAV4', 'Neal Smith', 'SP003'),
    (731166526, '2022-05-02', 'Volvo V60', 'Abhi Thompson', 'SP005'),
    (271135104, '2023-05-03', 'Ford Fusion', 'Sana Rod', 'SP001');

USE dealership_company; 

SELECT *
FROM cars;

SELECT *
FROM invoice;

SELECT *
FROM salespersons;



SELECT dealership_company.salespersons.Name AS employee_name, dealership_company.salespersons.Store, dealership_company.invoice.Invoice_number, dealership_company.invoice.Date, dealership_company.invoice.car, dealership_company.invoice.Customer_name, dealership_company.invoice.Sales_Person
FROM dealership_company.salespersons
JOIN dealership_company.invoice
ON dealership_company.salespersons.Staff_id = dealership_company.invoice.Sales_Person;


 

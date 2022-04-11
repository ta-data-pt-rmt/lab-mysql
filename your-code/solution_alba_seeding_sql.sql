USE lab_mysql;
SET sql_mode='NO_AUTO_VALUE_ON_ZERO';

#Inserting values into CARS table
INSERT INTO cars(ID,VIN,Manufacturer,Model,Year_car,Color)
VALUES ('0','3K096I98581DHSNUP','Volkswagen','Tiguan','2019','Blue');

SELECT * FROM cars;

#Inserting values into CUSTOMERS table
INSERT INTO customers(ID,Customer_ID,Name_customer,Phone,Email,Address,City,State_Province,Country,Postal)
VALUES ('0','10001','Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045');

SELECT * FROM customers;

#Inserting values into SALESPERSON table
INSERT INTO salesperson(ID,Staff_ID,Name_salesperson,Store)
VALUES ('0','00001','Petey Cruiser','Madrid');

SELECT * FROM salesperson;

#Inserting values into INVOICES table
INSERT INTO invoices(ID,Invoice_Number,Date_invoice,Car,Customer,Sales_Person)
VALUES ('0','852399038','22-08-2018','0','1','3');
	
SELECT * FROM invoices;

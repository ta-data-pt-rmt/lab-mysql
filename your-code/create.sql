USE lab_mysql;

CREATE TABLE Car (VIN INT(17), manufacturer VARCHAR(20), 
model VARCHAR(20), year INT, color VARCHAR(10)
);

CREATE TABLE Customer (customer_ID INT, name VARCHAR (20), 
phone_number INT, email VARCHAR (30), city VARCHAR (20),
state_province VARCHAR (20), country VARCHAR (20), zip_postal_code CHAR(5)
);

CREATE TABLE Salespersons (staff_ID INT, name VARCHAR (20), 
store VARCHAR (20)
);

CREATE TABLE Invoice (invoice_number INT, date DATETIME, 
car VARCHAR (20), customer VARCHAR (20), salesperson INT
);


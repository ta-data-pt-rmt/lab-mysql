/*Challenge 2 - Create the Database and Tables*/
USE lab_mysql;

/* 2. Now, based on the database design you created, write the SQL query to create the tables and columns.*/

CREATE TABLE Cars 
(VIN SMALLINT AUTO_INCREMENT PRIMARY KEY, Manufacturer VARCHAR(50), Model VARCHAR(20), Year YEAR, 
Color VARCHAR(10), Store_ID SMALLINT, last_update TIMESTAMP);

CREATE TABLE Customers 
(Customer_ID SMALLINT AUTO_INCREMENT PRIMARY KEY, Name VARCHAR(50), Phone_number VARCHAR(20), Email VARCHAR(50), 
Address_ID SMALLINT, last_update TIMESTAMP);

CREATE TABLE Address 
(Address_ID SMALLINT AUTO_INCREMENT PRIMARY KEY, Address VARCHAR(50), Address_2 VARCHAR(50), City VARCHAR(50), State_province VARCHAR(50), 
Country VARCHAR(50), zip_postal_code VARCHAR(10), last_update TIMESTAMP);

CREATE TABLE Salespersons
(Staff_ID SMALLINT AUTO_INCREMENT PRIMARY KEY, Name VARCHAR(50), Store_ID SMALLINT, Address_ID SMALLINT, Email VARCHAR(50), Active TINYINT(1),
username VARCHAR(20), last_update TIMESTAMP);

CREATE TABLE Invoices
(Invoice_Number BIGINT AUTO_INCREMENT PRIMARY KEY, Date TIMESTAMP, Store_ID SMALLINT, VIN SMALLINT, Customer_ID SMALLINT, Staff_ID SMALLINT, 
amount DECIMAL(5,2), last_update TIMESTAMP);

CREATE TABLE Store
(Store_ID SMALLINT AUTO_INCREMENT PRIMARY KEY, manager_staff_id_ID VARCHAR(20), Address_ID SMALLINT, last_update TIMESTAMP);

/*Creating the foreign keyS*/
ALTER TABLE Customers
ADD CONSTRAINT FK_Address_ID FOREIGN KEY (Address_ID)
REFERENCES Address (Address_ID);

ALTER TABLE Store
ADD CONSTRAINT FK_Store_Address_ID FOREIGN KEY (Address_ID)
REFERENCES Address (Address_ID);

ALTER TABLE Cars
ADD CONSTRAINT FK_Cars_Store_ID FOREIGN KEY (Store_ID)
REFERENCES Store (Store_ID);

ALTER TABLE Salespersons
ADD CONSTRAINT FK_Salespersons_Store_ID FOREIGN KEY (Store_ID)
REFERENCES Store (Store_ID);

ALTER TABLE Salespersons
ADD CONSTRAINT FK_Salespersons_Address_ID FOREIGN KEY (Address_ID)
REFERENCES Address (Address_ID);

ALTER TABLE Invoices
ADD CONSTRAINT FK_Invoices_Store_ID FOREIGN KEY (Store_ID)
REFERENCES Store (Store_ID);

ALTER TABLE Invoices
ADD CONSTRAINT FK_Invoices_VIN FOREIGN KEY (VIN)
REFERENCES Cars (VIN);

ALTER TABLE Invoices
ADD CONSTRAINT FK_Invoices_Customer_ID FOREIGN KEY (Customer_ID)
REFERENCES Customers (Customer_ID);

ALTER TABLE Invoices
ADD CONSTRAINT FK_Invoices_Staff_ID FOREIGN KEY (Staff_ID)
REFERENCES Salespersons (Staff_ID);


/*Adding car_VIN because i thought the VIN was unique, but in challenge 2 i realize it isn't*/
ALTER TABLE Cars
ADD CAR_VIN VARCHAR(50);

ALTER TABLE Store
ADD Store_Name VARCHAR(50);

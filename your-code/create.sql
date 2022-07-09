USE lab_mysql;

CREATE TABLE Cars (VIN VARCHAR(17), Manufacturer VARCHAR(20),
       Model VARCHAR(20), Year INT(4), Color VARCHAR(20));
       
       
CREATE TABLE Customer (Customer_ID CHAR(25), Name VARCHAR(40), Phone_Number VARCHAR(12), Email VARCHAR(40), Adress VARCHAR(40), City VARCHAR(40), State_Province VARCHAR(40), Country VARCHAR(40), Zip_Postal_Code CHAR(5));
       
CREATE TABLE Invoices (Invoice_Number VARCHAR(20), Date DATE, Car VARCHAR(17),
       Customer VARCHAR(25), Salesperson VARCHAR(25));
       
CREATE TABLE Salesperson (Staff_ID VARCHAR(25), Name VARCHAR(40), Store CHAR(20));
       

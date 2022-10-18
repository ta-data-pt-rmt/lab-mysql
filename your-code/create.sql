CREATE  DATABASE IF NOT EXISTS lab_mysql_2nd;
USE lab_mysql_2nd;
  -- Table Customers 
  
CREATE TABLE IF NOT EXISTS Customers (
  `customer_ID` VARCHAR(45) UNIQUE NOT NULL,
  `Name` VARCHAR(45) DEFAULT NULL,
  `phone_number` VARCHAR(45) DEFAULT NULL,
  `email` VARCHAR(45) DEFAULT NULL,
  `address` VARCHAR(45) DEFAULT NULL,
  `city` VARCHAR(45) DEFAULT NULL,
  `state` VARCHAR(45) DEFAULT NULL,
  `country` VARCHAR(45)DEFAULT NULL,
  `postal` VARCHAR(45) DEFAULT NULL,
  `customer_ref_k` serial,
   PRIMARY KEY (customer_ID)
    );
  -- deleting a column
 /* alter table Customers
  drop column staff_ID;*/


    -- Table alter :To add primary keys and foreign keys
     /* ALTER TABLE Customers
ADD CONSTRAINT staff_ID FOREIGN KEY (staff_ID) REFERENCES Salespersons(staff_ID);*/

    -- Table Invoices
drop table if exists Invoices;

CREATE TABLE  Invoices (
  `invoice_number` serial PRIMARY KEY ,
  `date` DATE DEFAULT NULL,
  `car` VARCHAR(45) DEFAULT NULL,
  `customer` VARCHAR(45) DEFAULT NULL,
  ` salesperson` VARCHAR(45) DEFAULT NULL,
  `customer_ID` VARCHAR(45) DEFAULT NULL
  );
  
  -- Table Cars
  drop table if exists Cars;
  CREATE TABLE Cars (
  `VIN`  VARCHAR(45) UNIQUE NOT NULL ,
  `Manufacturer` VARCHAR(45) DEFAULT NULL,
  `model` VARCHAR(45) DEFAULT NULL,
  `year` YEAR(4) DEFAULT NULL,
  `color` VARCHAR(45) DEFAULT NULL,
  `staff_ID` VARCHAR(45) NOT NULL,
  `customer_ID` VARCHAR(45) NOT NULL,
   `stock_no` serial,
   PRIMARY KEY (VIN) 
    );
    
  -- Table Salespersons
drop table if exists Salespersons;
CREATE TABLE Salespersons (
  `staff_ID` VARCHAR(45) UNIQUE NOT NULL,
  `Name` VARCHAR(45) DEFAULT  NULL,
  ` store_location` VARCHAR(45) DEFAULT NULL,
  ` no_of_car_sell` serial,
   PRIMARY KEY (staff_ID)
  );
  
  /*ALTER TABLE Salespersons
  drop column invoice_number;
   DROP DATABASE lab_mysql_2nd;*/
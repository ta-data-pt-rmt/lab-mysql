-- Create database

CREATE DATABASE lab_mysql;

-- Creando tablas:
USE lab_mysql;
DROP TABLE lab_mysql.invoices;
CREATE TABLE lab_mysql.cars(
CAR_ID int primary key,
VIN_ID varchar(128),
manufacturer varchar(128),
model varchar(128), 
year varchar(128),
color varchar(128)
) ;

CREATE TABLE lab_mysql.customers(
ID int primary key,
customer_ID int,
customer_name varchar(128),
phone varchar(128), 
email varchar(128),
adress varchar(128),
city varchar(128),
state varchar(128),
country varchar(128),
postal_code varchar(128)
) ;


CREATE TABLE lab_mysql.sales_persons(
ID int not NULL, 
staff_ID int primary key NOT NULL,
staff_name varchar(128) NOT NULL, 
staff_store varchar(128) NOT NULL
) ;

--  e.g. the invoice number, date, car, customer, and salesperson related to each car sale.
CREATE TABLE lab_mysql.invoices(
ID int primary key,
invoice_number_ID int,
invoice_date datetime,
car_identificator varchar(128),
customer_identificator int,
salesperson_identificator int
) ;

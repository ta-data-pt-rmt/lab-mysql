CREATE DATABASE lab_mysql;

USE lab_mysql;

SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE TABLE cars (ID int PRIMARY KEY AUTO_INCREMENT, vin CHAR(20) NOT NULL UNIQUE, manufacturer VARCHAR(15) NOT NULL, model VARCHAR(10) NOT NULL,
year INT NOT NULL, color_hex CHAR(7) NOT NULL, price DECIMAL(7,1) NOT NULL, odometer DECIMAL(7,1), conditions CHAR(10));

CREATE TABLE invoices (ID int PRIMARY KEY AUTO_INCREMENT, invoice_number CHAR(9) NOT NULL UNIQUE, Date DATE NOT NULL, vin CHAR(20) NOT NULL,
consumer_ID CHAR(12) NOT NULL, staff_ID VARCHAR(10) NOT NULL, amount DECIMAL(7,1) NOT NULL, payment_type CHAR(12));

CREATE TABLE customers (ID int PRIMARY KEY AUTO_INCREMENT, customer_ID CHAR(5) NOT NULL UNIQUE, first_name VARCHAR(20) NOT NULL, 
last_name VARCHAR (20) NOT NULL, phone VARCHAR(20), email VARCHAR(30), address VARCHAR (50) NOT NULL, city CHAR(20) NOT NULL, 
state CHAR(20), country CHAR(20), zip INT);

CREATE TABLE salesperson (ID int PRIMARY KEY AUTO_INCREMENT, staff_ID VARCHAR(5) NOT NULL UNIQUE, first_name VARCHAR(20) NOT NULL, 
last_name VARCHAR (20) NOT NULL, store CHAR(25) NOT NULL, seniority INT NOT NULL, commission DECIMAL(7,2) NOT NULL, sales_completed INT NOT NULL);

DROP database lab_mysql;
DROP table cars;

# populate the table cars
INSERT INTO cars (id, vin, manufacturer, model, year, color_hex, price, odometer, conditions) 
VALUES (0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, '#0000FF', 25256.7, 25.3, 'new');

INSERT INTO cars (vin, manufacturer, model, year, color_hex, price, odometer, conditions) 
VALUES ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, '#FF0000', 20200.0, 0, 'new');

INSERT INTO cars (vin, manufacturer, model, year, color_hex, price, odometer, conditions) 
VALUES ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, '#FFFFFF', 12568.5, 5090, 'used');

INSERT INTO cars (vin, manufacturer, model, year, color_hex, price, odometer, conditions) 
VALUES ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, '#C0C0C0', 18905.0, 3460.3, 'used');

INSERT INTO cars (vin, manufacturer, model, year, color_hex, price, odometer, conditions) 
VALUES ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, '#808080', 22658.0, 34, 'new');

# populate the table customers

INSERT INTO customers (id, customer_ID, first_name, last_name, phone, email, address, city, state, country, zip) 
VALUES (0, 10001, 'Pablo', 'Picasso', '+34 636 17 63 82', '', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045);

INSERT INTO customers (customer_ID, first_name, last_name, phone, email, address, city, state, country, zip) 
VALUES (20001, 'Abraham', 'Lincoln', '+1 305 907 7086', '', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130);

INSERT INTO customers (customer_ID, first_name, last_name, phone, email, address, city, state, country, zip) 
VALUES (30001, 'Napoléon', 'Bonaparte', '+33 1 79 75 40 00', '', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);

# populate the table salesperson

INSERT INTO salesperson (id, staff_ID, first_name, last_name, store, seniority, commission, sales_completed) 
VALUES (0, '00001', 'Petey', 'Cruiser', 'Madrid', 3, 0.25, 32);

INSERT INTO salesperson (staff_ID, first_name, last_name, store, seniority, commission, sales_completed) 
VALUES ('00002', 'Anna', 'Sthesia', 'Barcelona', 8, 0.35, 145);

INSERT INTO salesperson (staff_ID, first_name, last_name, store, seniority, commission, sales_completed) 
VALUES ('00003', 'Paul', 'Molive', 'Berlin', 2, 0.12, 13);

INSERT INTO salesperson (staff_ID, first_name, last_name, store, seniority, commission, sales_completed) 
VALUES ('00004', 'Gail', 'Forcewind', 'Paris', 5, 0.22, 45);

INSERT INTO salesperson (staff_ID, first_name, last_name, store, seniority, commission, sales_completed) 
VALUES ('00005', 'Paige', 'Turner', 'Mimia', 1, 0.11, 4);

INSERT INTO salesperson (staff_ID, first_name, last_name, store, seniority, commission, sales_completed) 
VALUES ('00006', 'Bob', 'Frapples', 'Mexico City', 3, 0.15, 27);

INSERT INTO salesperson (staff_ID, first_name, last_name, store, seniority, commission, sales_completed) 
VALUES ('00007', 'Walter', 'Melon', 'Amsterdam', 18, 0.42, 243);

INSERT INTO salesperson (staff_ID, first_name, last_name, store, seniority, commission, sales_completed) 
VALUES ('00008', 'Shonda', 'Leer', 'São Paulo', 3, 0.15, 35);

# populate the table invoices

INSERT INTO invoices (id, invoice_number, Date, vin, consumer_id, staff_ID, amount, payment_type) 
VALUES (0, 852399038, '2018-08-22', '3K096I98581DHSNUP', 20001, '00004', 20200.0, 'cash');

INSERT INTO invoices (invoice_number, Date, vin, consumer_id, staff_ID, amount, payment_type) 
VALUES (731166526, '2018-12-31', 'HKNDGS7CU31E9Z7JW',10001, '00006', 18905.0, 'card');

INSERT INTO invoices (invoice_number, Date, vin, consumer_id, staff_ID, amount, payment_type) 
VALUES (271135104, '2019-01-22', 'RKXVNNIHLVVZOUB4M', 30001, '00008', 12568.5, 'card');
CREATE DATABASE lab_w6d3;
USE lab_w6d3;

CREATE TABLE IF NOT EXISTS stores(
store_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
store VARCHAR (20)
);

CREATE TABLE salesperson(
salesperson_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
staff_id INT,
name VARCHAR(50),
store_id INT
);

CREATE TABLE invoices(
invoice_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
invoice_number INT,
date DATETIME,
car_id 	INT,
customer_id INT,
salesperson_id INT
);

CREATE TABLE cars(
car_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
vin VARCHAR(20),
manufacturer_id INT,
year INT,
model_id INT,
color_id INT
);

CREATE TABLE manufacturers(
manufacturer_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
manufacturer VARCHAR (30)
);

CREATE TABLE colors(
color_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
color VARCHAR (20)
);

CREATE TABLE models(
model_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
model VARCHAR (30)
);

CREATE TABLE customers(
customer_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR(50),
phone_number VARCHAR(50),
email VARCHAR(30),
address VARCHAR(50),
city_id INT,
state_id INT,
country_id INT,
postal_code INT
);

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

CREATE TABLE cities(
city_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
city VARCHAR (30)
);

CREATE TABLE states(
state_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
state VARCHAR (30)
);

CREATE TABLE countries(
country_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
country VARCHAR (30)
);
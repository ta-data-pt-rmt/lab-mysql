CREATE DATABASE My_Auto_Stand;
USE My_Auto_Stand;
SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

CREATE TABLE cars (
  car_id INT AUTO_INCREMENT PRIMARY KEY,
  vin VARCHAR(17) NOT NULL,
  manufacturer VARCHAR(255) NOT NULL,
  model VARCHAR(255) NOT NULL,
  year INT NOT NULL,
  color VARCHAR(255) NOT NULL
);

CREATE TABLE customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  phone_number VARCHAR(20) NOT NULL,
  email VARCHAR(255),
  address VARCHAR(255),
  city VARCHAR(255),
  state_province VARCHAR(255),
  country VARCHAR(255),
  zip_postal_code VARCHAR(20)
);

CREATE TABLE salespersons (
  staff_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  store VARCHAR(255) NOT NULL
);

CREATE TABLE invoices (
  invoice_id INT AUTO_INCREMENT PRIMARY KEY,
  invoice_date DATE NOT NULL,
  car_id INT NOT NULL,
  customer_id INT NOT NULL,
  staff_id INT NOT NULL,
  FOREIGN KEY (car_id) REFERENCES cars(car_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id)
);
USE lab_mysql;

CREATE TABLE
lab_mysql.customers(
customer_id SERIAL PRIMARY KEY,
customer_passport VARCHAR(20) NOT NULL,
customer_name VARCHAR(50) NOT NULL,
phone VARCHAR(20) NOT NULL,
email VARCHAR(40) NOT NULL,
address VARCHAR(30),
city VARCHAR(30),
state VARCHAR(30),
country VARCHAR(30),
post_code VARCHAR(10),
credit_card VARCHAR(30),
birth_date DATE
);

CREATE TABLE
lab_mysql.salesperson(
staff_id SERIAL PRIMARY KEY,
staff_passport VARCHAR(20) NOT NULL,
staff_name VARCHAR(50) NOT NULL,
phone VARCHAR(20) NOT NULL,
address VARCHAR(30) NOT NULL,
city VARCHAR(30) NOT NULL,
state VARCHAR(30) NOT NULL,
post_code VARCHAR(10) NOT NULL,
commmission VARCHAR(20) NOT NULL,
store VARCHAR(30) NOT NULL,
employee_since DATE NOT NULL,
employee_until DATE
);

CREATE TABLE
lab_mysql.invoice(
invoice_id SERIAL PRIMARY KEY,
invoice_number VARCHAR(30) NOT NULL,
invoice_date DATE NOT NULL,
sale_order_id VARCHAR(20) NOT NULL
);

CREATE TABLE
lab_mysql.salesorder(
sale_order_id SERIAL PRIMARY KEY,
staff_id VARCHAR(20) NOT NULL,
customer_id VARCHAR(20) NOT NULL,
car_id VARCHAR(20) NOT NULL,
currency VARCHAR(10) NOT NULL,
amount DECIMAL(12,2) NOT NULL,
payment_condition VARCHAR(30) NOT NULL,
discount DECIMAL(4,2) NOT NULL,
millage_out INT(8) NOT NULL,
date_out DATE NOT NULL
);

CREATE TABLE
lab_mysql.cars(
car_id SERIAL PRIMARY KEY,
vin VARCHAR(30) NOT NULL,
manufacturer VARCHAR(30) NOT NULL,
model VARCHAR(30) NOT NULL,
car_year INT(4) NOT NULL,
color VARCHAR(20) NOT NULL,
fuel VARCHAR(20) NOT NULL,
millage_in INT(8) NOT NULL,
date_in DATE NOT NULL,
last_service_date DATE,
last_service_millage INT(8)
);
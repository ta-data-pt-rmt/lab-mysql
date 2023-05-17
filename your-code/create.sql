CREATE TABLE IF NOT EXISTS
ironhack.cars(
VIN_id INT PRIMARY KEY,
manufacturer VARCHAR(52),
model VARCHAR(52) NOT NULL,
car_year INT NOT NULL,
car_color VARCHAR(25)
);

CREATE TABLE IF NOT EXISTS
ironhack.customers(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(52) NOT NULL,
customer_phone VARCHAR(52) NOT NULL,
email VARCHAR(32) DEFAULT 'johndoe@gmail.com',
address VARCHAR(52) NOT NULL,
city VARCHAR(52),
state_province VARCHAR(52),
country VARCHAR(52),
postal_code INT NOT NULL
);

CREATE TABLE IF NOT EXISTS
ironhack.salespersons(
staff_id INT PRIMARY KEY,
staff_name VARCHAR(52) NOT NULL,
store VARCHAR(52) NOT NULL,
city VARCHAR(52),
state_province VARCHAR(52),
country VARCHAR(52)
);

CREATE TABLE IF NOT EXISTS
ironhack.invoices(
invoice_number INT PRIMARY KEY,
VIN_id INT NOT NULL,
model VARCHAR(52) NOT NULL,
customer_name VARCHAR(52) NOT NULL,
staff_id INT NOT NULL,
store_id INT NOT NULL,
purchase_date date,
city VARCHAR(52),
state_province VARCHAR(52),
country VARCHAR(52)
);

CREATE TABLE IF NOT EXISTS
ironhack.stores(
store_id INT PRIMARY KEY,
address VARCHAR(52) NOT NULL,
city VARCHAR(52) NOT NULL,
state_province VARCHAR(52),
country VARCHAR(52)
);

ALTER TABLE ironhack.invoices ADD COLUMN customer_id INT NOT NULL;
ALTER TABLE ironhack.salespersons ADD COLUMN store_id INT NOT NULL;


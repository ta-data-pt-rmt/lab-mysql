
DROP TABLE lab_mysql.cars;
DROP TABLE lab_mysql.customers;
DROP TABLE lab_mysql.salesperson;
DROP TABLE lab_mysql.invoices;
DROP TABLE lab_mysql.stores;

CREATE TABLE lab_mysql.cars (id_vehicle INT PRIMARY KEY,
VIN VARCHAR (50), 	
model VARCHAR(50),
color VARCHAR(20), 
car_year VARCHAR(20),
manufacturer VARCHAR(20));
# FOREIGN KEY (invoice_id) REFERENCES invoices(invoice_id)); - ESTA ME DA PROBLEMAS - no puedo drop para cargar las FK por que me cargo las otras PK

CREATE TABLE lab_mysql.customers (customer_id INT PRIMARY KEY,  
customer_name VARCHAR(50), # name and surname
phone_number VARCHAR(50), 
e_mail VARCHAR(50),
address VARCHAR(50),
city VARCHAR(50),
state VARCHAR(50),
country VARCHAR(50),
zip_code NUMERIC,
invoice_id INT,
FOREIGN KEY (invoice_id) REFERENCES invoices(invoice_id));

/*ALTER TABLE lab_mysql.customers ADD PRIMARY KEY(customer_id);*/

CREATE TABLE lab_mysql.salesperson (staff_id INT PRIMARY KEY, 
salesperson_name VARCHAR(50), #name and surname
store_id INT NOT NULL,
FOREIGN KEY (store_id) REFERENCES stores(store_id));
# References hace referencia a la tabla a la que se va a apuntar y foreign key a la variable que se encuentra EN esta misma tabla

CREATE TABLE lab_mysql.invoices (invoice_id INT PRIMARY KEY, 
invoice_number VARCHAR(50),
invoice_date DATE, 
id_vehicle INT NOT NULL,
customer_id INT NOT NULL, #coincide
staff_id INT NOT NULL,
FOREIGN KEY (id_vehicle) REFERENCES cars(id_vehicle));

CREATE TABLE lab_mysql.stores (store_id INT PRIMARY KEY, 
store_loc VARCHAR(50),
number_of_stores INT NOT NULL);
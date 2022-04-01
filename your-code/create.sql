

-- Create table Cars  

CREATE TABLE cars
( id INT NOT NULL AUTO_INCREMENT,
  vin VARCHAR(258) NOT NULL,
  manufacturer VARCHAR(258) NOT NULL,
  model VARCHAR(64) NOT NULL,
  year VARCHAR(4) NOT NULL,
  color VARCHAR(64) NOT NULL,
  PRIMARY KEY (id)
);

-- Create table Customers 

CREATE TABLE customers
( id int NOT NULL AUTO_INCREMENT,	
  c_id int NOT NULL, 
  c_name VARCHAR(64) NOT NULL,
  phone VARCHAR(258)  NOT NULL,
  email VARCHAR(258),
  address VARCHAR(258) NOT NULL,
  city VARCHAR(258) NOT NULL,
  state_province VARCHAR(258) NOT NULL,
  country VARCHAR(258) NOT NULL,
  zip_code VARCHAR(64) NOT NULL,
  PRIMARY KEY (id)
);


-- Create table Salespersons 

CREATE TABLE salespersons
( id int NOT NULL AUTO_INCREMENT,
  staff_id int NOT NULL,
  staff_name VARCHAR(258) NOT NULL,
  store_name VARCHAR(258) NOT NULL,
  PRIMARY KEY (id)
);

-- Create table Invoices 

CREATE TABLE invoices
( id int NOT NULL AUTO_INCREMENT,
  invoice_n int NOT NULL,
  inv_date VARCHAR(258) NOT NULL,
  car_id INT NOT NULL,
  c_id INT NOT NULL,
  sales_person_id INT NOT NULL,
  PRIMARY KEY (id)
);

-- Adding other relevant tables 

-- Create table Models

CREATE TABLE models
( id int NOT NULL AUTO_INCREMENT,
  model_name VARCHAR(64) NOT NULL,
  manufacturer_id VARCHAR(64) NOT NULL,
  PRIMARY KEY (id)
);

-- Create table Manufacturers

CREATE TABLE manufacturers
( id int not null auto_increment,
  manufacturer_name VARCHAR(258) NOT NULL, 
  PRIMARY KEY (id)
);

-- Create table Stores 

CREATE TABLE stores
( id int NOT NULL AUTO_INCREMENT,
  store_name VARCHAR(258) NOT NULL,
  PRIMARY KEY (id)
);





















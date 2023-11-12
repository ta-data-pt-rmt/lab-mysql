USE lab_mysql;
SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

INSERT INTO lab_mysql.cars
VALUES
(0,'3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 'Automatic', 'Hybrid', 2019, 'Blue', 30000),
(1,'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter','Automatic', 'Hybrid', 2019, 'Red', 10000),
(2,'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 'Automatic', 'Hybrid', 2018, 'White', 12000),
(3,'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 'Automatic', 'Hybrid', 2018, 'Silver', 30000),
(4,'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 'Automatic', 'Hybrid',2019, 'Gray', 50000),
(5,'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 'Automatic', 'Hybrid', 2019, 'Gray', 50000);


INSERT INTO lab_mysql.customers
VALUES
(0, 10001, 'Pablo Picasso', '+34 636 17 63 82',' ' , 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(1, 20001, 'Abraham Lincoln', '+1 305 907 7086',' ' , '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(2, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', ' ' , '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO lab_mysql.invoice
VALUES
(0,852399038, '2018-08-22','Madrid','Madrid', 'Madrid', 'Spain','3K096I98581DHSNUP',1001,0001,30000),
(1,731166526, '2018-12-31','Barcelona','Barcelona','Barcelona','Spain','ZM8G7BEUQZ97IH46V',2001,0002, 28000),
(2,271135104, '2019-01-22','Berlin','Berlin','Berlin','Germany','RKXVNNIHLVVZOUB4M',30001,0003,12000);

INSERT INTO lab_mysql.salesperson
VALUES
(0,00001, 'Petey Cruiser', '+34 636 17 63 82', 'petey@gmail.com','Madrid','Madrid', 'Madrid', 'Spain'),
(1,00002, 'Anna Sthesia', '+34 636 17 63 82', 'anna@gmail.com','Barcelona','Barcelona','Barcelona','Spain'),
(2,00003, 'Paul Molive', '+34 636 17 63 82', 'paul@gmail.com','Berlin','Berlin','Berlin','Germany'),
(3,00004, 'Gail Forcewind','+34 636 17 63 82','gail@gmail.com', 'Paris','Paris', 'Île-de-France', 'France'),
(4,00005, 'Paige Turner','+34 636 17 63 82', 'paige@gmail.com','Mimia','Mimia','Mimia','Mimia'),
(5,00006, 'Bob Frapples', '+34 636 17 63 82', 'bob@gmail.com','Mexico City','Mexico City','Mexico City','Mexico City'),
(6,00007, 'Walter Melon', '+34 636 17 63 82','walter@gmail.com', 'Amsterdam','Amsterdam','North Holland','Netherlands'),
(7,00008, 'Shonda Leer', '+34 636 17 63 82','shonda@gmail.com','São Paulo','São Paulo','São Paulo','São Paulo');

-- To check the data
SELECT * FROM lab_mysql.cars;
SELECT * FROM lab_mysql.customers;
SELECT * FROM lab_mysql.salesperson;
SELECT * FROM lab_mysql.invoice;


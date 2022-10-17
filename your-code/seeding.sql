/*
######################################
##  CHALLENGE 3 - SEEDING DATABASE  ##
###################################### */

/* This is not working for me,
starting from 1 no matter what */
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

/* SEEDING TABLE cars */
INSERT INTO cars (VIN, manufacturer, model, year, color)
VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', 2019, 'Gray');
/* ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray') VIN is serving as a foreign key, so there can be no duplicates */

/* SEEDING TABLE customers */
INSERT INTO customers (customer_id, name, phone_number, email, address, city, state_province, country, zip_postal)
VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
(20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);

/* SEEDING TABLE salespersons */
INSERT INTO salespersons (staff_id, name, store)
VALUES
('00001', 'Petey Cruiser', 'Madrid'),
('00002', 'Anna Sthesia', 'Barcelona'),
('00003', 'Paul Molive', 'Berlin'),
('00004', 'Gail Forcewind', 'Paris'),
('00005', 'Paige Turner', 'Mimia'),
('00006', 'Bob Frapples', 'Mexico City'),
('00007', 'Walter Melon', 'Amsterdam'),
('00008', 'Shonda Leer', 'São Paulo');

/* SEEDING TABLE invoices */
INSERT INTO invoices (invoice_number, fk_vin, fk_customer_id, fk_staff_id, date)
VALUES
(852399038, '3K096I98581DHSNUP', 20001, '00004', '2018-08-22'),
(731166526, 'HKNDGS7CU31E9Z7JW', 10001, '00006', '2018-12-31'),
(271135104, 'RKXVNNIHLVVZOUB4M', 30001, '00008', '2019-01-22');

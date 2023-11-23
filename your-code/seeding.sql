USE lab_mysql;
SET SQL_SAFE_UPDATES =1;
-- SET sql_mode = "NO_AUTO_VALUE_ON_ZERO" does not help with the starting value of auto-increment, the following also does not work
ALTER TABLE car AUTO_INCREMENT=0;
ALTER TABLE customer AUTO_INCREMENT=0;
ALTER TABLE salesperson AUTO_INCREMENT=0;
ALTER TABLE invoice AUTO_INCREMENT=0;

-- I changed the last VIN with the first 3 letters because it does not make sense that two cars share the same VIN.
INSERT INTO car(vin, manufacture, model, year, color) VALUES (
'3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('WDC41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');
SELECT * FROM car;

INSERT INTO customer (customer_id, name, phone_nr, email, address, city, province, country, zip_code) VALUES
(10001, 'Pablo Picasso', '+34636176382', '', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(20001, 'Abraham Lincoln', '+13059077086', '', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(30001, 'Napoléon Bonaparte', '+33179754000', '', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');
SELECT * FROM customer;

INSERT INTO salesperson(staff_id, name, store) VALUES
(00001, 'Petey Cruiser', 'Madrid'),
(00002, 'Anna Sthesia', 'Barcelona'),
(00003, 'Paul Molive', 'Berlin'),
(00004, 'Gail Forcewind', 'Paris'),
(00005, 'Paige Turner', 'Mimia'),
(00006, 'Bob Frapples', 'Mexico City'),
(00007, 'Walter Melon', 'Amsterdam'),
(00008, 'Shonda Leer', 'São Paulo');
SELECT * FROM salesperson;

INSERT INTO invoice (invoice_nr, date, car, customer, salesperson) VALUES
(852399038, '2018-08-22', '3K096I98581DHSNUP', 20001, 00004),
(731166526, '2018-12-31', 'HKNDGS7CU31E9Z7JW', 10001, 00006),
(271135104, '2019-01-22', 'RKXVNNIHLVVZOUB4M', 30001, 00008);
SELECT * FROM invoice;
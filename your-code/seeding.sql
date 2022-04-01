-- Seeding the database 

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

insert into cars 
values (0, '3K096I98581DHSNUP', 'Volkswagen','Tiguan', '2019','Blue'),
('1', 'ZM8G7BEUQZ97IH46V','Peugeot', 'Rifter', '2019','Red'),
('2', 'RKXVNNIHLVVZOUB4M','Ford', 'Fusion', '2018','White'),
('3', 'HKNDGS7CU31E9Z7JW','Toyota', 'RAV4', '2018','Silver'),
('4', 'DAM41UDN3CHU2WVF6','Volvo', 'V60', '2019','Gray'),
('5', 'DAM41UDN3CHU2WVF7','Volvo', 'V60 Cross Country', '2019','Gray');

insert into customers (id, c_id, c_name, phone, address, city, state_province, country, zip_code)
values ('0', '10001', 'Pablo Picasso', '+34 636 17 63 82', 'Paseo de la Chopera 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('1', '20001', 'Abraham Lincoln', '+1 305 907 7086', '120 SW 8th St', 'Mimia', 'Florida', 'United States', '33130'),
('2', '30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

insert into salespersons (id, staff_id, staff_name, store_name)
values ('0', '00001', 'Petey Cruiser', 'Madrid'),
('1', '00002', 'Anna Sthesia', 'Barcelona'),
('2', '00003', 'Paul Molive', 'Berlin'),
('3', '00004', 'Gail Forcewind', 'Paris'),
('4', '00005', 'Paige Turner', 'Miami'),
('5', '00006', 'Bob Frapples', 'Mexico City'),
('6', '00007', 'Walter Melon', 'Amsterdam'),
('7', '00008', 'Shonda Leer', 'São Paulo');

insert into invoices
values ('0', '852399038', '22-08-2018',	'0', '1', '3'),
('1', '731166526', '31-12-2018', '3', '0', '5'),
('2', '271135104', '22-01-2019', '2', '2', '7');

insert into models
values ('0', 'Tiguan', '0'),
('1', 'Rifter', '1'),
('2', 'Fusion', '2'),
('3', 'RAV4', '3'),
('4', 'V60', '4'),
('5', 'V60 Cross Country', '4');

insert into manufacturers
values ('0', 'Volkswagen'),
('1', 'Peugeot'),
('2', 'Ford'),
('3', 'Toyota'),
('4', 'Volvo');

insert into stores
values ('0', 'Madrid'),
('1', 'Barcelona'),
('2', 'Berlin'),
('3', 'Paris'),
('4', 'Miami'),
('5', 'Mexico City'),
('6', 'Amsterdam'),
('7', 'São Paulo');
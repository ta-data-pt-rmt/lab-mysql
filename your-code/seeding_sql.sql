insert into lab_mysql.cars
values (0, '3K096I98581DHSNUP','Tiguan', 'Blue', '2019', 'Volkswagen'),
(1, 'ZM8G7BEUQZ97IH46V', 'Rifter', 'Red', '2019', 'Peugeot'),
(2, 'RKXVNNIHLVVZOUB4M', 'Fusion', 'White', '2018', 'Ford'),
(3, 'HKNDGS7CU31E9Z7JW', 'RAV4', 'Silver', '2018', 'Toyota'),
(4, 'DAM41UDN3CHU2WVF6' , 'V60', 'Gray', '2019', 'Volvo'),
(5, 'DAM41UDN3CHU2WVF6' , 'V60 Cross Country', 'Gray', '2019', 'Volvo');

insert into lab_mysql.customers
values (10001, 'Pablo Picasso','+34636176382', '0', 'Paseo de la Chopera, 14', 'Madrid', 'Spain', 'Spain', '28045', 0),
(20001, 'Abraham Lincoln', '+13059077086', '0', '120 SW 8th St', 'Miami','Florida', 'United States', '33130', 1),
(30001, 'Napoléon Bonaparte', '+33179754000', '0', '40 Rue du Colisée', 'Paris','Île-de-France', 'France', '75008', 2);

insert into lab_mysql.invoices
values (0, '852399038', '2018-08-22', 1, 1, 5),
(1, '731166526', '2018-12-31', 3, 2, 3 ),
(2, '271135104', '2019-01-22', 2, 3, 2);

insert into lab_mysql.stores
values(0, 'Madrid', 12),
(1, 'Barcelona', 8),
(2, 'Berlin', 10),
(3, 'Paris', 4),
(4, 'Miami', 1),
(5, 'Mexico City', 3),
(6, 'Amsterdam', 6),
(7, 'São Paulo', 2);

insert into lab_mysql.salesperson
values(00001, 'Petey Cruiser' , 0),
(00002, 'Anna Sthesia' , 1),
(00003, 'Paul Molive' , 2),
(00004, 'Gail Forcewind' ,3),
(00005, 'Paige Turner' , 4),
(00006, 'Bob Frapples' , 5),
(00007, 'Walter Melon' , 6),
(00008, 'Shonda Leer' , 7);

SELECT * FROM lab_mysql.cars;
SELECT * FROM lab_mysql.invoices;
SELECT * FROM lab_mysql.customers;
SELECT * FROM lab_mysql.stores;
SELECT * FROM lab_mysql.salesperson;

# EVERYTHING PERFECTLY WORKED!
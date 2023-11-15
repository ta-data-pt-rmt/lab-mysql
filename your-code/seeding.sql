USE lab_mysql;

ALTER TABLE Car
MODIFY COLUMN VIN VARCHAR(20);


INSERT INTO Car (VIN, manufacturer, model, year, color)
VALUE
	('3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
	('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
    ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
	('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
	('DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),
	('DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');
    

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

SELECT*
FROM Car;

ALTER TABLE Customer
MODIFY COLUMN phone_number VARCHAR(20);

INSERT INTO Customer (customer_ID, name, phone_number, email, address,
			city, state_province, country, zip_postal_code)
VALUES
	(10001, 'Pablo Picasso',	'+34 636 17 63 82',	'-', 'Paseo de la Chopera 14',	'Madrid', 'Madrid',	'Spain', 28045),
	(20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida',	'United States', 33130),
	(30001, 'Napoléon Bonaparte','+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);

SELECT*
FROM Customer;	

DELETE FROM Customer
WHERE phone_number IN ('34', '1', '33')
LIMIT 1;

SELECT*
FROM Customer;

DELETE FROM Customer
WHERE phone_number IN ('1', '33')
LIMIT 2;	

SELECT*
FROM Customer;

INSERT INTO Salespersons (staff_ID, name, store)
VALUE 
	(00001, 'Petey Cruiser', 'Madrid'),
	(00002, 'Anna Sthesia',	'Barcelona'),
	(00003, 'Paul Molive',	'Berlin'),
	(00004, 'Gail Forcewind', 'Paris'),
	(00005, 'Paige Turner',	'Mimia'),
	(00006, 'Bob Frapples',	'Mexico City'),
	(00007,	'Walter Melon',	'Amsterdam'),
	(00008, 'Shonda Leer', 'São Paulo');
    
SELECT*
FROM Salespersons;

INSERT INTO Invoice (invoice_number, date, car, customer, salesperson)
VALUE 
	(852399038, '2018-08-22', 0, 1, 3),
    (731166526, '2018-12-31', 3, 0, 5),
    (271135104, '2019-01-22', 2, 2, 7);
    
SELECT*
FROM Invoice;

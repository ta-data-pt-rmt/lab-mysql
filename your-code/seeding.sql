INSERT INTO lab_mysql.cars(ID, VIN, Manufacturer, Model, Year, Color, Mileage, SellingPrice)
VALUES
	(0,'3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue',1419,22500),
    (1,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red',951,15000),
    (2,'RKXVNNIHLVVZOUB4M',	'Ford',	'Fusion',2018,'White',864,18000),
    (3,'HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver',1287,23000),
    (4,'DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray',1406,26500),
    (5,'DAM41UDN3CHU2WVF6',	'Volvo','V60 Cross Country',2019,'Gray',1406,26500)
    
INSERT INTO lab_mysql.invoices(ID, Invoice_number, DATE, CAR, Customer, Salesperson, SellingPrice)
VALUES
	(0, 852399038, '22-08-2018', 0, 1, 3, 22500),
    (1, 731166526, '31-12-2018', 3, 0, 5, 23000),
    (2, 271135104, '22-01-2019', 2, 2,	7, 18000)
    
INSERT INTO lab_mysql.salesperson(ID, Staff_ID, Name, Store, Commission)
VALUES
	(0, 1, 'Petey Cruiser',	'Madrid', 0),
    (1,	2, 'Anna Sthesia', 'Barcelona', 0),
    (2,	3, 'Paul Molive', 'Berlin', 0),
    (3,	4, 'Gail Forcewind', 'Paris', 225),
    (4,	5, 'Paige Turner', 'Mimia', 0),
    (5,	6, 'Bob Frapples', 'Mexico City', 230),
    (6,	7, 'Walter Melon', 'Amsterdam',	0),
    (7,	8, 'Shonda Leer', 'São Paulo', 180)
    
INSERT INTO lab_mysql.customers(ID, Customer_ID, Name, Phone, Adress, City, State_Province, Country, Postal, Customer_since)
VALUES
	(0,	10001, 'Pablo Picasso',	'+34 636 17 63 82',	'Paseo de la Chopera 14','Madrid', 'Madrid', 'Spain', 28045, 2001),
    (1,	20001, 'Abraham Lincoln', '+1 305 907 7086', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130, 2017),
    (2,	30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '40 Rue du Colisée', 'Paris',	'Île-de-France', 'France', 75008, 2019)
    
SELECT *
FROM lab_mysql.cars

SELECT *
FROM lab_mysql.invoices

SELECT *
FROM lab_mysql.salesperson

SELECT *
FROM lab_mysql.customers
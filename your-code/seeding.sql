INSERT INTO cars
VALUES (0,'3K096I98581DHSNUP', 0,2019,0,0),(1,'ZM8G7BEUQZ97IH46V', 1,2019,1,1),(2,'RKXVNNIHLVVZOUB4M', 2,2018,2,2),(3,'HKNDGS7CU31E9Z7JW', 3,2018,3,3),
(4,'DAM41UDN3CHU2WVF6', 4,2019,4,4),(5,'DAM41UDN3CHU2WVF6', 4,2019,5,4);

INSERT INTO manufacturers
VALUES (0,'Volkswagen'),(1,'Peugeot'),(2,'Ford'),(3,'Toyota'), (4,'Volvo');

INSERT INTO models
VALUES (0,'Tiguan'), (1,'Rifter'), (2, 'Fusion'), (3,'RAV4'), (4,'V60'), (5,'V60 Cross Country');

INSERT INTO colors
VALUES (0,'Blue'),(1,'Red'),(2,'White'),(3,'Silver'),(4,'Gray');

INSERT INTO stores
VALUES (0,'Madrid'),(1,'Barcelona'),(2,'Berlin'),(3,'Paris'),(4,'Mimia'),(5,'Mexico City'),(6,'Amsterdam'),(7,'Sao Paulo');

INSERT INTO salesperson
VALUES (0,0001,'Petey Cruiser',0), (1,0002,'Anna Sthesia',1), (2,0003,'Paul Molive',2), (3,0004,'Gail Forcewind',3),(4,0005,'Paige Turner',4),
(5,0006,'Bob Frapples',5),(6,0007,'Walter Melon',6),(7,0008,'Shonda Leer ',7);

INSERT INTO invoices
VALUES (0,852399038,'2018-08-22',0,1,3), (1,731166526,'2018-12-31',3,0,5), (2,271135104,'2019-01-22',2,2,7);

INSERT INTO cities (city)
VALUES ('Madrid'),('Miami'),('Paris');

INSERT INTO countries
VALUES (0, 'Spain'),(1, 'United States'),(2, 'France');

INSERT INTO states
VALUES (0,'Madrid'),(1,'Florida'),(2,'Île-de-France');

INSERT INTO customers (customer_id, name, phone_number, address, city_id, state_id,country_id, postal_code)
VALUES (0,'Pablo Picasso','+34 636 17 63 80','Paseo de la Chopera, 14',1,0,0,28045), (1,'Abraham Lincoln','+1 305 907 7086', '120 SW 8th St', 2, 1, 1, 33130),(2, 'Napoléon Bonaparte','+33 1 79 75 40 00','40 Rue du Colisée',3, 2, 2, 75008);
SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";
INSERT INTO cars(id,vin_id, manufacturer, model, year_manufactured, color) 
VALUES (0,'3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue')
, (1,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red')
, (2,'RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White')
, (3,'HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver')
, (4,'DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray')
, (5,'DAM41UDN3CHU2WVF5','Volvo','V60 Cross Country',2019,'Gray');

INSERT INTO customers(id,customer_id, name_customer, phone_number, email, address, city, state_province, country, zip_code) 
VALUES (0,10001, 'Pablo Picasso', '+34636176382',NULL, 'Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045')
, (1,20001, 'Abraham Lincoln', '+13059077086',NULL, '120 SW 8th St','Miami','Florida','United States','33130')
, (2,30001, 'Napoléon Bonaparte', '+33179754000',NULL, '40 Rue du Colisée','Paris','Île-de-France','France','75008');

INSERT INTO sales_team(id,staff_id, staff_name, store_id) 
VALUES (0,00001, 'Petey Cruiser', 100)
,(1,00002, 'Anna Sthesia', 200)
,(2,00003, 'Paul Molive', 300);

INSERT INTO invoices(id,invoice_id, date_invoice, vin_id, customer_id, staff_id) 
VALUES (0,852399038,'2018-08-22', 'DAM41UDN3CHU2WVF6',10001,00001)
,(1,731166526,'2018-12-31', 'DAM41UDN3CHU2WVF5',20001,00002)
,(2,271135104,'2019-01-22', 'HKNDGS7CU31E9Z7JW',30001,00002);

SELECT * FROM invoices
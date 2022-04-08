USE lab_mysql;
SET sql_mode = "NO_AUTO_VALUE_ON_ZERO"; #It's not a goo practice to start table id in 0

#populate cars table:
INSERT INTO `lab_mysql`.`cars`
(id,
`VIN`,
`manufacturer`,
`model`,
`year`,
`color`)
VALUES
(0,'3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue');

INSERT INTO `lab_mysql`.`cars`
(
`VIN`,
`manufacturer`,
`model`,
`year`,
`color`)
VALUES
('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
('RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
('DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),
('DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');

#populate customers table:
INSERT INTO `lab_mysql`.`customers`
(`id`,
`customerid`,
`name`,
`phone_number`,
`email`,
`address`,
`city`,
`state_province`,
`country`,
`postal_code`)
VALUES
(0,10001,'Pablo Picasso','+34 636 17 63 82',NULL,'Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045');

INSERT INTO `lab_mysql`.`customers`
(`customerid`,
`name`,
`phone_number`,
`email`,
`address`,
`city`,
`state_province`,
`country`,
`postal_code`)
VALUES
(20001,'Abraham Lincoln','+1 305 907 7086',NULL,'120 SW 8th St','Miami','Florida','United States','33130'),
(30001,'Napoléon Bonaparte','+33 1 79 75 40 00',NULL,'40 Rue du Colisée','Paris','Île-de-France','France','75008');

#It is not a good practice store 0001 values
INSERT INTO `lab_mysql`.`salespersons`
(`id`,
`staffid`,
`name`,
`store`)
VALUES
(0,'00001','Petey Cruiser','Madrid');
INSERT INTO `lab_mysql`.`salespersons`
(
`staffid`,
`name`,
`store`)
VALUES
('00002','Anna Sthesia','Barcelona'),
('00003','Paul Molive','Berlin'),
('00004','Gail Forcewind','Paris'),
('00005','Paige Turner','Mimia'),
('00006','Bob Frapples','Mexico City'),
('00007','Walter Melon','Amsterdam'),
('00008','Shonda Leer','São Paulo');

#POPULATE INVOICES TABLE:
#MySQL retrieves and displays DATE values in 'YYYY-MM-DD' format. So STR_TO_DATE('31-12-2018','%Y-%m-%d')
INSERT INTO `lab_mysql`.`invoices`
(`ID`,
invoice_number,
`date`,
`car_id`,
`curtomer_id`,
`salesperson_id`)
VALUES
(0,852399038,DATE_FORMAT(STR_TO_DATE('22-08-2018','%d-%m-%Y'),'%Y-%m-%d'),0,1,3);


INSERT INTO `lab_mysql`.`invoices`
(invoice_number,
`date`,
`car_id`,
`curtomer_id`,
`salesperson_id`)
VALUES
(731166526,DATE_FORMAT(STR_TO_DATE('22-08-2018','%d-%m-%Y'),'%Y-%m-%d'),3,0,5),
(271135104,DATE_FORMAT(STR_TO_DATE('22-01-2019','%d-%m-%Y'),'%Y-%m-%d'),2,2,7);



#If I need to truncate a table with FK reference:
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE invoices;
SET FOREIGN_KEY_CHECKS = 1;

ALTER TABLE Salespersons    
MODIFY staffid CHAR(5) NOT NULL; 

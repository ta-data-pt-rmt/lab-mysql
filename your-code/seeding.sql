 SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";
 
INSERT INTO Cars (VIN , Manufacturer, Model, Year, Color)
VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue');

INSERT INTO Cars (VIN, Manufacturer, Model, Year, Color)
VALUES ('ZM8G7BEUQZ97IH46V','Peugeot','Rifter','2019','Red');

INSERT INTO Cars (VIN, Manufacturer, Model, Year, Color)
VALUES ('RKXVNNIHLVVZOUB4M','Ford','Fusion','2018','White');

INSERT INTO Cars (VIN, Manufacturer, Model, Year, Color)
VALUES ('HKNDGS7CU31E9Z7JW','Toyota','RAV4','2018',	'Silver');

INSERT INTO Cars (VIN, Manufacturer, Model, Year, Color)
VALUES ('DAM41UDN3CHU2WVF6','Volvo','V60','2019','Gray');

INSERT INTO Cars (VIN, Manufacturer, Model, Year, Color)
VALUES ('DAM41UDN3CHU2WVF6','Volvo','V60','Cross', 'Country','2019','Gray');

INSERT INTO Customers (Customer_ID,Name,Phone_No,Email,	Address,City,State_Province,Country,Postal)
VALUES ('10001','Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera, 14','Madrid','Madrid',	'Spain','28045');

INSERT INTO Customers (Customer_ID,Name,Phone_No,Email,	Address,City,State_Province,Country,Postal)
VALUES ('30001','Napoléon Bonaparte','+33 1 79 75 40 00','-','40 Rue du Colisée','Paris','Île-de-France','France','75008');

INSERT INTO Salespersons (Staff_ID, Name, Store)
VALUES ('00001','Petey Cruiser','Madrid');

INSERT INTO Salespersons (Staff_ID, Name, Store)
VALUES ('00002','Anna Sthesia','Barcelona');

INSERT INTO Salespersons (Staff_ID, Name, Store)
VALUES ('00003','Paul Molive','Berlin');

INSERT INTO Salespersons (Staff_ID, Name, Store)
VALUES ('00004','Gail Forcewind','Paris');

INSERT INTO Salespersons (Staff_ID, Name, Store)
VALUES ('00005','Paige Turner',	'Mimia');

INSERT INTO Salespersons (Staff_ID, Name, Store)
VALUES ('00006','Bob Frapples',	'Mexico City');

INSERT INTO Salespersons (Staff_ID, Name, Store)
VALUES ('00007','Walter Melon','Amsterdam');

INSERT INTO Salespersons (Staff_ID, Name, Store)
VALUES ('00008','Shonda Leer','São Paulo');

INSERT INTO Invoice (Invoice_No,Date,Car, Customer, Sales_Person)
VALUES ('852399038','22-08-2018','0','1','3');

INSERT INTO Invoice (Invoice_No,Date,Car, Customer, Sales_Person)
VALUES ('731166526','31-12-2018','3','0','5');

INSERT INTO Invoice (Invoice_No,Date,Car, Customer, Sales_Person)
VALUES ('271135104','22-01-2019','2','2','7')
/* Challenge 3 - Seeding the Database */

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

INSERT INTO Cars (CAR_VIN,Manufacturer, Model, Year, Color)
    VALUES('3K096I98581DHSNUP','Volkswagen','Tiguan', 2019, 'Blue'), 
    ('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'), 
    ('RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'), 
    ('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'), 
    ('DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'), 
    ('DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');
    
SELECT * FROM Cars;
    
 INSERT INTO Customers (Customer_ID,Name, Phone_number, last_update)
    VALUES(10001,'Pablo Picasso','+34 636 17 63 82', CURRENT_DATE), 
    (20001,'Abraham Lincoln','+1 305 907 7086',CURRENT_DATE), 
    (30001,'Napoléon Bonaparte','+33 1 79 75 40 00',CURRENT_DATE);   
    
SELECT * FROM Customers;

 INSERT INTO Store (Store_Name, last_update)
    VALUES('Madrid', CURRENT_DATE), 
    ('Barcelona',CURRENT_DATE), 
    ('Berlin',CURRENT_DATE),
    ('Paris',CURRENT_DATE),
    ('Mimia',CURRENT_DATE),
    ('Mexico City',CURRENT_DATE),
    ('Amsterdam',CURRENT_DATE),
    ('São Paulo',CURRENT_DATE);
    
SELECT * FROM Store;

 INSERT INTO Salespersons (Staff_ID,Name, Store_ID, last_update)
    VALUES(00001,'Petey Cruiser',13, CURRENT_DATE), 
    (00002,'Anna Sthesia',14,CURRENT_DATE), 
    (00003,'Paul Molive',15,CURRENT_DATE), 
    (00004,'Gail Forcewind',16,CURRENT_DATE), 
    (00005,'Paige Turner',17,CURRENT_DATE), 
    (00006,'Bob Frapples',18,CURRENT_DATE), 
    (00007,'Walter Melon',19,CURRENT_DATE), 
    (00008,'Shonda Leer',20,CURRENT_DATE);
    
    SELECT * FROM Salespersons;
    
INSERT INTO Invoices (Invoice_Number,Date, VIN,Customer_ID, Staff_ID,last_update)
    VALUES(852399038, '2018-08-22', 4, 20001, 4, CURRENT_DATE),
       (731166526, '2018-12-31', 7, 10001, 6,CURRENT_DATE),
       (271135104, '2019-01-22', 6, 30001, 8,CURRENT_DATE);

   SELECT * FROM Invoices;
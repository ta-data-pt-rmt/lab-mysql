USE lab_mysql;

CREATE TABLE Cars (VIN VARCHAR(17), Manufacturer VARCHAR(20),
       Model VARCHAR(20), Year INT(4), Color VARCHAR(20));
       
       
CREATE TABLE Customer (Customer_ID CHAR(25), Name VARCHAR(40), Phone_Number VARCHAR(12), Email VARCHAR(40), Adress VARCHAR(40), City VARCHAR(40), State_Province VARCHAR(40), Country VARCHAR(40), Zip_Postal_Code CHAR(5));
       
CREATE TABLE Invoices (Invoice_Number VARCHAR(20), Date DATE, Car VARCHAR(17),
       Customer VARCHAR(25), Salesperson VARCHAR(25));
       
CREATE TABLE Salesperson (Staff_ID VARCHAR(25), Name VARCHAR(40), Store CHAR(20));
       

       
INSERT INTO cars
VALUES 
('ZM8G7BEUQZ97IH46V', 'Peugeot',	'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO customer
VALUES 
(10001, 'Pablo Picasso', '+34636176382', "-", 'Paseo de la Chopera, 14', "Madrid", "Madrid", "Spain", 28045),
(20001, 'Abraham Lincoln', '+13059077086', "-", "120 SW 8th St", "Miami", "Florida", "United States", 33130),
(30001, 'Napoléon Bonaparte', '+33179754000', "-", "40 Rue du Colisée", "Paris", "Ile-de-France", "France", 75008);

/*ALTER TABLE Salesperson MODIFY COLUMN Store VARCHAR(25)*/
INSERT INTO Salesperson
VALUES 
(00001, "Petey Cruiser",  "Madrid"),
(00002, "Anna Sthesia", "Barcelona"),
(00003, "Paul Molive", "Berlin"),
(00004, "Gail Forcewind", "Paris"),
(00005, "Paige Turner", "Miami"),
(00006, "Bob Frapples", "Mexico City"),
(00007, "Walter Melon", "Amsterdam"),
(00008, "Shonda Leer", "São Paulo");

/*ALTER TABLE invoices MODIFY COLUMN Car CHAR(10);
ALTER TABLE invoices MODIFY COLUMN Customer CHAR(10);
ALTER TABLE invoices MODIFY COLUMN Salesperson CHAR(10);*/
INSERT INTO invoices
VALUES
(852399038, "2018-08-22", 0, 1, 3),
(731166526, "2018-12-31", 3, 0, 5),
(271135104, "2019-01-22", 2, 2, 7);

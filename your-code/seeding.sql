USE Mysql_Nhan;

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

INSERT INTO Customers (ID, Customer_name, Phone_no, Email, Address, City, Province, Country, Zipcode)
VALUES
    ('10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
    ('20001', 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
    ('30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');
INSERT INTO Salesperson (ID, Staff_name, Store_ID)
VALUES
    ('00001', 'Petey Cruiser', 'Madrid'),
    ('00002', 'Anna Sthesia', 'Barcelona'),
    ('00003', 'Paul Molive', 'Berlin'),
    ('00004', 'Gail Forcewind', 'Paris'),
    ('00005', 'Paige Turner', 'Miami'),
    ('00006', 'Bob Frapples', 'Mexico City'),
    ('00007', 'Walter Melon', 'Amsterdam'),
    ('00008', 'Shonda Leer', 'São Paulo');
INSERT INTO InvoiceInvoicess (Invoice_number, Billing_date, Car_Vin, Customer_ID, Salesperson_ID)
VALUES
    ('852399038', '2018-08-22', 0, 1, 3),
    ('731166526', '2018-12-31', 3, 0, 5),
    ('271135104', '2019-01-22', 2, 2, 7);
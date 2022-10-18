USE lab_mysql_2nd;

SET SQL_SAFE_UPDATES = 0;

UPDATE Salespersons
SET  store_location = 'Miami'
WHERE Name = 'Paige Turner';

UPDATE Customers
SET  email = 'ppicaso@gmail.com'
WHERE Customers.Name ='Pablo Picasso';
UPDATE Customers
SET  email = 'lincoln@us.gov'
WHERE Customers.Name ='Abraham Lincoln';
UPDATE Customers
SET  email = 'hello@napoleon.me'
WHERE Customers.Name ='Napoléon Bonaparte';

SET SQL_SAFE_UPDATES = 1;

select *
FROM Salespersons;

select *
FROM Customers;

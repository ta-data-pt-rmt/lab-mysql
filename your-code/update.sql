USE lab_mysql;
SET SQL_SAFE_UPDATES = 0;
UPDATE salespersons
SET Store = "Miami"
WHERE Store = "Mimia";

SELECT * FROM customers;

UPDATE customers
SET Email = 'ppicasso@gmail.com'
WHERE Name_Customer = 'Pablo Picasso';


UPDATE customers
SET email = "lincoln@us.gov"
WHERE Name_Customer = 'Abraham Lincoln';

UPDATE customers
SET email = "hello@napoleon.me"
WHERE Name_Customer = 'Napoléon Bonaparte';
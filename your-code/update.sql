USE lab_mysql;

SELECT*
FROM Salespersons;

SELECT * FROM Salespersons LIMIT 0, 1000;

USE lab_mysql;
SHOW TABLES;

UPDATE Salespersons
SET store = "Miami"
WHERE staff_ID = 5;

SELECT*
FROM Salespersons;


UPDATE Customer
SET email = 'ppicasso@gmail.com'
WHERE customer_ID = 10001;

UPDATE Customer
SET email = 'lincoln@us.gov'
WHERE customer_ID = 20001;

UPDATE Customer
SET email = 'hello@napoleon.me'
WHERE customer_ID = 30001;

SELECT*
FROM Customer;
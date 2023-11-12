USE lab_mysql;

UPDATE salespersons
SET store = 'Miami'
WHERE salesperson_index = 4;

UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE customer_index = 0;

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE customer_index = 1;

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE customer_index = 2;


SELECT * FROM lab_mysql.customers;
SELECT * FROM lab_mysql.cars;
SELECT * FROM lab_mysql.salespersons;
SELECT * FROM lab_mysql.invoices;
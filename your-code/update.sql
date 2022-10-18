USE lab_mysql;

SELECT * FROM lab_mysql.customers;

UPDATE lab_mysql.salesperson
SET state = "Miami"
WHERE staff_name = "Paige Turner";

UPDATE lab_mysql.salesperson
SET city = "Miami"
WHERE staff_name = "Paige Turner";

UPDATE lab_mysql.customers
SET email = "ppicasso@gmail.com"
WHERE customer_name = "Pablo Picasso";

UPDATE lab_mysql.customers
SET email = "lincoln@us.gov"
WHERE customer_name = "Abraham Lincoln";

UPDATE lab_mysql.customers
SET email = "hello@napoleon.me"
WHERE customer_name = "Napoléon Bonaparte";
USE lab_mysql;
SELECT * FROM salesperson;
SET SQL_SAFE_UPDATES = 0;

UPDATE salesperson
SET store = 'Miami '
WHERE name = 'Paige Turner';

UPDATE customer SET
email = 'ppicasso@gmail.com'
WHERE name = 'Pablo Picasso';

UPDATE customer SET
email =  'lincoln@us.gov'
WHERE name =  'Abraham Lincoln';

UPDATE customer SET
email =  'hello@napoleon.me' 
WHERE name =  'Napoléon Bonaparte';

SELECT * FROM salesperson;

SELECT * FROM customer;
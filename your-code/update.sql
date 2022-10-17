/* UPDATE DATABASE RECORDS */
USE lab_mysql;

SET SQL_SAFE_UPDATES = 0;

UPDATE sales_persons
SET store = 'Miami'
WHERE name LIKE '%paige turner%';

/*SELECT * FROM sales_persons
WHERE name LIKE '%paige turner%'*/

UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE name LIKE '%pablo picasso%';

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE name LIKE '%abraham lincoln%';

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE name LIKE '%napoléon bonaparte%';

SET SQL_SAFE_UPDATES = 1;
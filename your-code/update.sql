USE lab_mysql;

SET SQL_SAFE_UPDATES = 0;

UPDATE salespersons
SET store = 'Miami'
WHERE LOWER(name) LIKE 'paige turner';

UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE LOWER(name) LIKE 'pablo picasso';

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE LOWER(name) LIKE 'abraham lincoln';

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE LOWER(name) LIKE 'napoléon bonaparte';

SET SQL_SAFE_UPDATES = 1;

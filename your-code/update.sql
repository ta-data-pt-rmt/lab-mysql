/*
################################
##  BONUS CHALLENGE - UPDATE  ##
################################ */

/* UPDATE TABLE salespersons */
UPDATE salespersons
SET store = 'Miami'
WHERE name = 'Paige Turner';

/* UPDATE TABLE customers */
UPDATE customers
SET email = CASE
   WHEN name = 'Pablo Picasso' THEN 'ppicasso@gmail.com'
   WHEN name = 'Abraham Lincoln' THEN 'lincoln@us.gov'
   WHEN name = 'Napoléon Bonaparte' THEN 'hello@napoleon.me'
END;

USE lab_mysql;
-- Now you find an error you need to fix in your existing data - in the Salespersons table, you mistakenly spelled Miami as Mimia for Paige Turner.

SELECT id,store
FROM salesperson
WHERE salesperson.store = 'Miamia';

UPDATE salesperson
SET
	store = 'Miami'
WHERE
	salesperson.id = '4';

SELECT id,store
FROM salesperson;

-- UPDATING EMAILS

SELECT id,cust_name,email
FROM customers;

-- Not possible using safe.
UPDATE customers
SET  
	email = (case WHEN customers.cust_name = 'Pablo Picasso' THEN  'ppicasso@gmail.com'
				WHEN customers.cust_name = 'Abraham Lincoln' THEN 'lincoln@us.gov'
                WHEN  customers.cust_name = 'Napoléon Bonaparte' THEN 'hello@napoleon.me'
			  END)
WHERE customers.cust_name IN ('Pablo Picasso','Abraham Lincoln','Napoléon Bonaparte');

-- Upfate multup,e  rows 
UPDATE customers
SET  
	email = (case WHEN id = 0 THEN  'ppicasso@gmail.com'
				WHEN  id = 1  THEN 'lincoln@us.gov'
                WHEN   id = 2  THEN 'hello@napoleon.me'
			  END)
WHERE id IN (0,1,2);	



-- Eliminate from car ID 4
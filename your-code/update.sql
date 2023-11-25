 SHOW DATABASES;
 USE carday;
 SHOW TABLES;
 
 
#Updating Salesperson table
SELECT * FROM salespersons;
UPDATE salespersons
SET
store = 'Miami',
name = 'Paige Turner'
WHERE id = 5;



UPDATE customers
SET    Email =
       CASE 
        WHEN Name  = 'Pablo Picasso'THEN 'ppicasso@gmail.com'
        WHEN Name = 'Abraham Lincoln' THEN 'lincoln@us.gov'
        WHEN Name = 'Napoléon Bonaparte' THEN 'hello@napoleon.me'
        ELSE 'Unknown'
	END;
    
SELECT * FROM customers;
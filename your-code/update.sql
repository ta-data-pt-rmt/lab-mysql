USE lab_mysql;
/*
#If I need to alter a table:
*/
ALTER TABLE Salespersons    
MODIFY staffid INT NOT NULL AUTO_INCREMENT; 

#If I need to truncate a table with FK reference:
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE Customers;
SET FOREIGN_KEY_CHECKS = 1;

#Update salespersons:
SELECT * FROM lab_mysql.salespersons;
UPDATE salespersons 
SET 
    store = 'Miami'
WHERE
    store = 'Mimia' and id=4;
SELECT * FROM lab_mysql.salespersons;

#you received the email addresses of the three customers:
SELECT * FROM lab_mysql.customers;
UPDATE customers 
SET 
    email = 'ppicasso@gmail.com'
WHERE
    name = 'Pablo Picasso' and id=0;
    
UPDATE customers 
SET 
    email = 'lincoln@us.gov'
WHERE
    name = 'Abraham Lincoln' and id=1;
    
UPDATE customers 
SET 
    email = 'hello@napoleon.me'
WHERE
    name = 'Napoléon Bonaparte' and id=2;
SELECT * FROM lab_mysql.customers;

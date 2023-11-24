USE Mysql_Nhan;

UPDATE Salesperson
SET Store_ID = 'Miami'
WHERE Staff_name = 'Paige Turner';

-- Update the email addresses for the customers
UPDATE Customers
SET Email = 'ppicasso@gmail.com'
WHERE Customer_name = 'Pablo Picasso';

UPDATE Customers
SET Email = 'lincoln@us.gov'
WHERE Customer_name = 'Abraham Lincoln';

UPDATE Customers
SET Email = 'hello@napoleon.me'
WHERE Customer_name = 'Napoléon Bonaparte';


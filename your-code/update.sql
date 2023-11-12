USE lab_mysql;
-- Now you find an error you need to fix in your existing data - in the Salespersons table, you mistakenly spelled Miami as Mimia for Paige Turner. 
SELECT staff_ID FROM lab_mysql.sales_persons WHERE staff_store ='Mimia';

-- update:
UPDATE sales_persons
SET staff_store = 'Miami'
WHERE staff_ID = 5;
-- see the changes:
SELECT * FROM lab_mysql.sales_persons;

-- Also, you received the email addresses of the three customers:

select * from lab_mysql.customers;

-- Busco el ID para cada cliente
select ID, customer_name from lab_mysql.customers WHERE customer_name in ('Pablo Picasso','Abraham Lincoln','Napoléon Bonaparte');

-- UPDATE emails:
UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE ID = 0;

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE ID = 1;

UPDATE customers
SET email = '	hello@napoleon.me'
WHERE ID = 2;


-- SEE CHANGES:

SELECT * FROM lab_mysql.customers;
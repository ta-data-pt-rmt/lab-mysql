/* Now you find an error you need to fix in your existing data 
- in the Salespersons table, you mistakenly spelled Miami as Mimia for Paige Turner. 
Also, you received the email addresses of the three customers */

UPDATE customers
SET email = "ppicasso@gmail.com"
WHERE ID = 0;

UPDATE customers
SET email = "lincoln@us.gov"
WHERE ID = 1;

UPDATE customers
SET email = "hello@napoleon.me"
WHERE ID = 2;
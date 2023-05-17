/* We need to select the id of Paige Turner to update it, we are in safe mode and it is the easiest way to change it.*/
SELECT id
FROM lab_mysql.Sales_person
WHERE name = 'Paige Turner';

/* Updating the name of the store for Paige Turner, who has the id 5*/
UPDATE Sales_person
SET store = 'Miami'
WHERE id = 5;

/* Updating the 3 emails at once*/
UPDATE Customers
SET email = CASE
    WHEN id = 1 THEN 'ppicasso@gmail.com'
    WHEN id = 2 THEN 'lincoln@us.gov'
    WHEN id = 3 THEN 'hello@napoleon.me'
    END
WHERE id IN (1, 2, 3);
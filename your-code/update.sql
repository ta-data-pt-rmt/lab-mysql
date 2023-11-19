SELECT id
FROM lab_mysql.salespersons
WHERE name = 'Paige Turner';

UPDATE salespersons
SET store = 'Miami'
WHERE id = 5;

SELECT *
FROM salespersons;


SELECT * FROM customers;
UPDATE customers
SET email = CASE
    WHEN id = 1 THEN 'ppicasso@gmail.com'
    WHEN id = 2 THEN 'lincoln@us.gov'
    WHEN id = 3 THEN 'hello@napoleon.me'
    END
WHERE id IN (1, 2, 3);

SELECT * FROM customers;

SELECT * FROM cars


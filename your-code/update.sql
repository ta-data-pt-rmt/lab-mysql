USE lab_mysql;
SET SQL_SAFE_UPDATES = 0;

UPDATE lab_mysql.salesperson
SET 
Store = 'Miami',
City = 'Miami',
State = 'Miami'
WHERE ID = 4;

UPDATE lab_mysql.customers
SET Email = CASE
    WHEN ID = 0 THEN 'ppicasso@gmail.com'
    WHEN ID = 1 THEN 'lincoln@us.gov'
    WHEN ID = 2 THEN 'hello@napoleon.me'
END;

SELECT * FROM lab_mysql.salesperson;
SELECT * FROM lab_mysql.customers;
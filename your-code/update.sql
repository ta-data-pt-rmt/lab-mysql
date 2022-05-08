USE lab_mysql;

/* updating typo in salesperson */
UPDATE salesperson
SET store = 'Miami'
WHERE id = 4;


/* updating emails in customers */
-- first option
SET SQL_SAFE_UPDATES = 0;
UPDATE customers SET email = 'ppicasso@gmail.com' WHERE customer_name = 'Pablo Picasso';
UPDATE customers SET email = 'lincoln@us.gov' WHERE customer_name = 'Abraham Lincoln';
UPDATE customers SET email = 'hello@napoleon.me' WHERE customer_name = 'Napoléon Bonaparte';
SET SQL_SAFE_UPDATES = 1;

-- second option
INSERT INTO customers 
    (id, email, customer_name)
    VALUES 
        (0, 'ppicasso@gmail.com', 'Pablo Picasso'),
        (1, 'lincoln@us.gov', 'Abraham Lincoln'),
        (2, 'hello@napoleon.me', 'Napoléon Bonaparte')
        ON DUPLICATE KEY UPDATE 
        email = VALUES(email),
    customer_name = VALUES(customer_name);


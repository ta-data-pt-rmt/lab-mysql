USE lab_mysql;

-- Update email addresses for customers
UPDATE customers
SET email = CASE -- CASE to update email based on customer's name
    WHEN customer_name = 'Pablo Picasso' THEN 'ppicasso@gmail.com'
    WHEN customer_name = 'Abraham Lincoln' THEN 'lincoln@us.gov'
    WHEN customer_name = 'Napoléon Bonaparte' THEN 'hello@napoleon.me'
    ELSE email
END;

-- Correct the spelling mistake in the Salespersons table
UPDATE sales_persons
SET staff_store = 'Miami'
WHERE staff_ID = '00005' AND staff_store = 'Mimia';

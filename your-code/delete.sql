-- In addition, you also find a duplicated car entry for VIN DAM41UDN3CHU2WVF6. 
-- You want to delete car ID #4 from the database. Create delete.sql to perform the deletion.
SELECT * FROM lab_mysql.cars;

-- CONFIRM THAT THERE ARE DUPLICATES:
SELECT * FROM lab_mysql.cars WHERE VIN_ID ='DAM41UDN3CHU2WVF6';

-- DELETE ONE DUPLICATE:
DELETE FROM cars
WHERE CAR_ID=5;

-- UPDATE CAR_ID

UPDATE cars
SET CAR_ID=5
WHERE CAR_ID= 6;


-- see changes:
SELECT * FROM lab_mysql.cars;
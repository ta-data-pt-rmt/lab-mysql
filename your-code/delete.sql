USE lab_mysql;

-- Query to validate vin duplicated DAM41UDN3CHU2WVF6
SELECT ID, vin, model
FROM car
WHERE vin = 'DAM41UDN3CHU2WVF6'

-- Eliminate from car ID 4
DELETE FROM car WHERE ID = 4;




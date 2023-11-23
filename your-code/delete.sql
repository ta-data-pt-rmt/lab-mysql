/*When I created this dataset, I corrected the data for this vehicle as I thought it didn't make sense to have two cars with the same VIN, but I'll still delete the vehicle with vin /

USE lab_mysql;
SELECT * FROM car;

DELETE FROM car WHERE vin = 'DAM41UDN3CHU2WVF6';

SELECT * FROM car;
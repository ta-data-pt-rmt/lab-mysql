USE lab_mysql;
SELECT * FROM lab_mysql.cars;

#Check duplicated VIN rows:
SELECT min(ID),VIN,COUNT(VIN) FROM lab_mysql.cars
GROUP BY VIN
HAVING COUNT(VIN) > 1;

select t1.* 
FROM cars t1
INNER JOIN cars t2 
WHERE 
	t1.id < t2.id AND 
    t1.VIN = t2.VIN;

#The following statement deletes duplicate rows and keeps the highest id:
SET SQL_SAFE_UPDATES = 0;
DELETE t1.* 
FROM cars t1
INNER JOIN cars t2 
WHERE 
	t1.id < t2.id AND 
    t1.VIN = t2.VIN;
SET SQL_SAFE_UPDATES = 1;
SELECT * FROM lab_mysql.cars;    

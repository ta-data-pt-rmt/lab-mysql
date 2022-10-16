SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

/*VALUES FOR CARS*/

INSERT INTO lab_mysql.cars(vin_id,model,car_year,color,Automatic) 
VALUES('3K096I98581DHSNUP','Volkswagen',2019,'Blue','Yes');

INSERT INTO lab_mysql.cars(vin_id,model,car_year,color,Automatic) 
VALUES('ZM8G7BEUQZ97IH46V','Peugeot',2019,'Red','No');

INSERT INTO lab_mysql.cars(vin_id,model,car_year,color,Automatic) 
VALUES('RKXVNNIHLVVZOUB4M','Ford',2018,'White','Yes');

INSERT INTO lab_mysql.cars(vin_id,model,car_year,color,Automatic) 
VALUES('HKNDGS7CU31E9Z7JW','Toyota',2018,'Silver','Yes');

INSERT INTO lab_mysql.cars(vin_id,model,car_year,color,Automatic) 
VALUES('DAM41UDN3CHU2WVF6','Volvo',2019,'Gray','No');

INSERT INTO lab_mysql.cars(vin_id,model,car_year,color,Automatic) 
VALUES('DAM41UDN3CHU2WVF7','Volvo',2019,'Gray','Yes');

/*VALUES FOR CUSTOMERS*/

INSERT INTO lab_mysql.customers(customer_id,customer_name,phone_number,email_address,city,state_province,country,postal_code) 
VALUES(10001,'Pablo Picasso',0034636176382,'-','Madrid','Madrid','Spain',28045);

INSERT INTO lab_mysql.customers(customer_id,customer_name,phone_number,email_address,city,state_province,country,postal_code) 
VALUES(20001,'Abraham Lincoln',13059077086,'-','Miami','Florida','United States',33130);

INSERT INTO lab_mysql.customers(customer_id,customer_name,phone_number,email_address,city,state_province,country,postal_code) 
VALUES(30001,'Napoléon Bonaparte',33179754000,'-','Paris','Île-de-France','France',75008);

/*VALUES FOR SALESPERSONS*/

INSERT INTO lab_mysql.salespersons(staff_id,salesperson_name,store_location,position) 
VALUES(00001,'Petey Cruiser','Madrid','Country Manager');

INSERT INTO lab_mysql.salespersons(staff_id,salesperson_name,store_location,position) 
VALUES(00002,'Anna Sthesia','Barcelona','Key Account Manager');

INSERT INTO lab_mysql.salespersons(staff_id,salesperson_name,store_location,position) 
VALUES(00003,'Paul Molive','Berlin','Key Account Manager');

INSERT INTO lab_mysql.salespersons(staff_id,salesperson_name,store_location,position) 
VALUES(00004,'Gail Forcewind','Paris','Key Account Manager');

INSERT INTO lab_mysql.salespersons(staff_id,salesperson_name,store_location,position) 
VALUES(00005,'Paige Turner','Mimia','Sales Assistant');

INSERT INTO lab_mysql.salespersons(staff_id,salesperson_name,store_location,position) 
VALUES(00006,'Bob Frapples','Mexico City','Sales Assistant');

INSERT INTO lab_mysql.salespersons(staff_id,salesperson_name,store_location,position) 
VALUES(00007,'Walter Melon','Amsterdam','Sales Assistant');

INSERT INTO lab_mysql.salespersons(staff_id,salesperson_name,store_location,position) 
VALUES(00008,'Shonda Leer','São Paulo','Sales Assistant');

/*VALUES FOR INVOICES*/

INSERT INTO lab_mysql.invoices(invoice_number,invoice_date,customer_id,vin_id,staff_id) 
VALUES(852399038,'2018-08-22',20001,'3K096I98581DHSNUP',00004);

INSERT INTO lab_mysql.invoices(invoice_number,invoice_date,customer_id,vin_id,staff_id) 
VALUES(731166526,'2018-12-31',10001,'HKNDGS7CU31E9Z7JW',00006);

INSERT INTO lab_mysql.invoices(invoice_number,invoice_date,customer_id,vin_id,staff_id) 
VALUES(271135104,'2019-01-22',30001,'RKXVNNIHLVVZOUB4M',00008);

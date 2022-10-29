/* Challenge 3 - Seeding the database */ 

SELECT *
FROM lab_mysql.cars;

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

INSERT INTO lab_mysql.cars(vin_id,model,year,color,automatic)
VALUES ("3K096I98581DHSNUP","Tiguan",2019,"Blue","No");

INSERT INTO lab_mysql.cars(vin_id,model,year,color,automatic)
VALUES ("ZM8G7BEUQZ97IH46V","Peugeot",2017,"Red","Yes");

INSERT INTO lab_mysql.cars(vin_id,model,year,color,automatic)
VALUES ("RKXVNNIHLVVZOUB4M","Tesla",2018,"Grey","No");

INSERT INTO lab_mysql.cars(vin_id,model,year,color,automatic)
VALUES ("HKNDGS7CU31E9Z7JW","Toyota",2018,"Black","No");

INSERT INTO lab_mysql.cars(vin_id,model,year,color,automatic)
VALUES ("DAM41UDN3CHU2WVF6","Volvo",2015,"Space Grey","Yes");

SELECT *
FROM lab_mysql.customers;

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

INSERT INTO lab_mysql.customers(customer_id,name,phone_number,adress,city,state,country,zip)
VALUES (10001,"Pablo Picasso","+34636176382","Paseo de la Chopera, 14","Madrid","Madrid","Spain","28045");

INSERT INTO lab_mysql.customers(customer_id,name,phone_number,adress,city,state,country,zip)
VALUES (20001,"Abraham Lincoln","+13059077086","120 SW 8th St","Miami","Florida","United States","33130");

INSERT INTO lab_mysql.customers(customer_id,name,phone_number,adress,city,state,country,zip)
VALUES (30001,"Napoléon Bonaparte","+33179754000","40 Rue du Colisée","Paris","Île-de-France","France","75008");

SELECT *
FROM lab_mysql.salespeople;

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

INSERT INTO lab_mysql.salespeople(staff_id,name,store_location)
VALUES (00001,"Petey Cruiser","Madrid");

INSERT INTO lab_mysql.salespeople(staff_id,name,store_location)
VALUES (00002,"Anna Sthesia","Barcelona");

INSERT INTO lab_mysql.salespeople(staff_id,name,store_location)
VALUES (00003,"Paul Molive","Berlin");

INSERT INTO lab_mysql.salespeople(staff_id,name,store_location)
VALUES (00004,"Gail Forcewind","Paris");

INSERT INTO lab_mysql.salespeople(staff_id,name,store_location)
VALUES (00005,"Paige Turner","Mimia");

INSERT INTO lab_mysql.salespeople(staff_id,name,store_location)
VALUES (00006,"Bob Frapples","Mexico City");

INSERT INTO lab_mysql.salespeople(staff_id,name,store_location)
VALUES (00007,"Walter Melon","Amsterdam");

INSERT INTO lab_mysql.salespeople(staff_id,name,store_location)
VALUES (00008,"Shonda Leer","São Paulo");

SELECT *
FROM lab_mysql.invoices;

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

INSERT INTO lab_mysql.invoices(invoice_number,date,customer_id,vin_id,staff_id)
VALUES (852399038,"2018-08-22",20001,"RKXVNNIHLVVZOUB4M",00007);

INSERT INTO lab_mysql.invoices(invoice_number,date,customer_id,vin_id,staff_id)
VALUES (731166526,"2018-12-31",10001,"ZM8G7BEUQZ97IH46V",00005);

INSERT INTO lab_mysql.invoices(invoice_number,date,customer_id,vin_id,staff_id)
VALUES (271135104,"2019-01-22",30001,"DAM41UDN3CHU2WVF6",00001);

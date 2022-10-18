SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

USE lab_mysql;

/* SEEDING "CARS" TABLE */

INSERT INTO lab_mysql.cars(vin, manufacturer, model, car_year, color, fuel, 
								millage_in, date_in, last_service_date, last_service_millage)
VALUES ("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue", "Diesel", 
								110120, "2018-10-18", "2018-6-5", 108000);
                                
INSERT INTO lab_mysql.cars(vin, manufacturer, model, car_year, color, fuel, 
								millage_in, date_in, last_service_date, last_service_millage)
VALUES ("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red", "Fuel", 
								85213, "2019-10-18", "2019-6-5", 80000);
                                
INSERT INTO lab_mysql.cars(vin, manufacturer, model, car_year, color, fuel, 
								millage_in, date_in, last_service_date, last_service_millage)
VALUES ("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White", "Diesel", 
								65000, "2019-12-11", "2019-4-3", 60000);

INSERT INTO lab_mysql.cars(vin, manufacturer, model, car_year, color, fuel, 
								millage_in, date_in, last_service_date, last_service_millage)
VALUES ("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver", "Fuel",
								70000, "2018-12-11", "2018-4-3", 60000);
                                
INSERT INTO lab_mysql.cars(vin, manufacturer, model, car_year, color, fuel, 
								millage_in, date_in, last_service_date, last_service_millage)
VALUES ("DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray", "Diesel",
								20000, "2018-12-11", "2018-4-3", 15000);

INSERT INTO lab_mysql.cars(vin, manufacturer, model, car_year, color, fuel, 
								millage_in, date_in, last_service_date, last_service_millage)
VALUES ("DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray", "Diesel",
								20000, "2018-12-11", "2018-4-3", 15000);
                                
/* SEEDING "CUSTOMERS" TABLE */

INSERT INTO lab_mysql.customers(customer_passport, customer_name, phone, email, address, 
								city, state, country, post_code)
VALUES ("DEFAULT234", "Pablo Picasso", "+34 636 17 63 82", "default@default.com", "Paseo de la Chopera, 14",
								"Madrid", "Madrid", "Spain","28045");
                                
INSERT INTO lab_mysql.customers(customer_passport, customer_name, phone, email, address, 
								city, state, country, post_code)
VALUES ("DEFAULT234", "Abraham Lincoln", "+1 305 907 7086", "default@default.com", "120 SW 8th St", 
								"Miami", "Florida", "United States","33130");

INSERT INTO lab_mysql.customers(customer_passport, customer_name, phone, email, address, 
								city, state, country, post_code)
VALUES ("DEFAULT234", "Napoléon Bonaparte", "+33 1 79 75 40 00", "default@default.com", "40 Rue du Colisée", 
								"Paris", "Île-de-France", "France","75008");

/* SEEDING "SALESPERSON" TABLE */

INSERT INTO lab_mysql.salesperson(staff_passport, staff_name, phone, address, city, state, 
									post_code, commmission, store, employee_since)
VALUES ("DEFAULT234", "Petey Cruiser", "DEFAULT234", "DEFAULT234", "Madrid", "Madrid", 
									"default", "10%","Madrid","2021-1-1");

INSERT INTO lab_mysql.salesperson(staff_passport, staff_name, phone, address, city, state, 
									post_code, commmission, store, employee_since)
VALUES ("DEFAULT234", "Anna Sthesia", "DEFAULT234", "DEFAULT234", "Barcelona", "Barcelona", 
									"default", "10%","Barcelona","2021-1-1");

INSERT INTO lab_mysql.salesperson(staff_passport, staff_name, phone, address, city, state, 
									post_code, commmission, store, employee_since)
VALUES ("DEFAULT234", "Paul Molive", "DEFAULT234", "DEFAULT234", "Berlin", "Berlin", 
									"default", "10%","Berlin","2021-1-1");

INSERT INTO lab_mysql.salesperson(staff_passport, staff_name, phone, address, city, state, 
									post_code, commmission, store, employee_since)
VALUES ("DEFAULT234", "Gail Forcewind", "DEFAULT234", "DEFAULT234", "Paris", "Paris", 
									"default", "10%","Paris","2021-1-1");

INSERT INTO lab_mysql.salesperson(staff_passport, staff_name, phone, address, city, state, 
									post_code, commmission, store, employee_since)
VALUES ("DEFAULT234", "Paige Turner", "DEFAULT234", "DEFAULT234", "Mimia", "Mimia", 
									"default", "10%","Mimia","2021-1-1");

INSERT INTO lab_mysql.salesperson(staff_passport, staff_name, phone, address, city, state, 
									post_code, commmission, store, employee_since)
VALUES ("DEFAULT234", "Bob Frapples", "DEFAULT234", "DEFAULT234", "Mexico City", "Mexico City", 
									"default", "10%","Mexico City","2021-1-1");

INSERT INTO lab_mysql.salesperson(staff_passport, staff_name, phone, address, city, state, 
									post_code, commmission, store, employee_since)
VALUES ("DEFAULT234", "Walter Melon", "DEFAULT234", "DEFAULT234", "Amsterdam", "Amsterdam", 
									"default", "10%","Amsterdam","2021-1-1");

INSERT INTO lab_mysql.salesperson(staff_passport, staff_name, phone, address, city, state, 
									post_code, commmission, store, employee_since)
VALUES ("DEFAULT234", "Shonda Leer", "DEFAULT234", "DEFAULT234", "São Paulo", "São Paulo", 
									"default", "10%","São Paulo","2021-1-1");

/* SEEDING "INVOICE" TABLE */

INSERT INTO lab_mysql.invoice(invoice_number, invoice_date, sale_order_id)
VALUES ("852399038", "2018-8-22", "1");

INSERT INTO lab_mysql.invoice(invoice_number, invoice_date, sale_order_id)
VALUES ("731166526", "2018-12-31", "2");

INSERT INTO lab_mysql.invoice(invoice_number, invoice_date, sale_order_id)
VALUES ("271135104", "2019-1-22", "3");


/* SEEDING "SALESORDER" TABLE */

INSERT INTO lab_mysql.salesorder(staff_id, customer_id, car_id, currency, amount, payment_condition, 
									discount, millage_out, date_out)
VALUES ("1", "1", "3", "USD", 12000, "CASH", 0, 159000,"2021-12-11");

INSERT INTO lab_mysql.salesorder(staff_id, customer_id, car_id, currency, amount, payment_condition, 
									discount, millage_out, date_out)
VALUES ("4", "2", "5", "EUR", 9800, "TRANSFER", 0, 80000,"2021-12-11");

INSERT INTO lab_mysql.salesorder(staff_id, customer_id, car_id, currency, amount, payment_condition, 
									discount, millage_out, date_out)
VALUES ("6", "3", "6", "USD", 7000, "20% ADVANCE, 80% DELIVERY", 3, 27000,"2021-12-11");


SELECT * FROM lab_mysql.salesorder
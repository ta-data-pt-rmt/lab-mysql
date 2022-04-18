USE car_sales;

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

SELECT * FROM cars;

INSERT INTO car_sales.cars(car_VIN, prod_year, manufacturer, model, color)
VALUES ("3K096198581DHSNUP", 2019, "Volkswagen", "Tiguan", "Blue");

INSERT INTO car_sales.cars(car_VIN, prod_year, manufacturer, model, color)
VALUES ("ZM8G7BEUQZ971H46V", 2019, "Peugeot", "Rifter", "Red");

INSERT INTO car_sales.cars(car_VIN, prod_year, manufacturer, model, color)
VALUES ("RKXVNNIHLVVZOUB4M", 2018, "Ford", "Fusion", "White");

INSERT INTO car_sales.cars(car_VIN, prod_year, manufacturer, model, color)
VALUES ("HKNDGS7CU31E9Z7JW", 2018, "Toyota", "RAV4", "Silver");

INSERT INTO car_sales.cars(car_VIN, prod_year, manufacturer, model, color)
VALUES ("DAM41UDN3CHU2WVE6", 2019, "Volvo", "V60", "Gray");

INSERT INTO car_sales.cars(car_VIN, prod_year, manufacturer, model, color)
VALUES ("DAM41UDN3CHU2WVF6", 2019, "Volvo", "V60 Cross Country", "Gray");

SELECT * FROM customers;

INSERT INTO car_sales.customers(customer_id, customer_name, phone, email, address, city, state_province, country, zip)
VALUES (10001, "Pablo Picasso", "+34636176382", "-", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", 28045);

INSERT INTO car_sales.customers(customer_id, customer_name, phone, email, address, city, state_province, country, zip)
VALUES (20001, "Abraham Lincoln", "+13059077086", "-", "120 SW 8th St", "Miami", "Florida", "United States", 33130);

INSERT INTO car_sales.customers(customer_id, customer_name, phone, email, address, city, state_province, country, zip)
VALUES (30001, "Napoléon Bonaparte", "+33179754000", "-", "40 Rue du Colisée", "Paris", "ile-de-France", "France", 75008);

SELECT * FROM sales_rep;

INSERT INTO car_sales.sales_rep(salesperson_id, sales_name, phone, email, store)
VALUES (00001, "Petey Cruiser", "+34636176382", "-", "Madrid");

INSERT INTO car_sales.sales_rep(salesperson_id, sales_name, phone, store)
VALUES (00002, "Anna Sthesia", "+34636176382", "Barcelona");

INSERT INTO car_sales.sales_rep(salesperson_id, sales_name, phone, store)
VALUES (00003, "Paul Molive", "+34636176382", "Berlin");

INSERT INTO car_sales.sales_rep(salesperson_id, sales_name, phone, store)
VALUES (00004, "Gail Forcewind", "+34636176382", "Paris");

INSERT INTO car_sales.sales_rep(salesperson_id, sales_name, phone, store)
VALUES (00005, "Paige Turner", "+34636176382", "Mimia");

INSERT INTO car_sales.sales_rep(salesperson_id, sales_name, phone, store)
VALUES (00006, "Bob Frapples", "+34636176382", "Mexico City");

INSERT INTO car_sales.sales_rep(salesperson_id, sales_name, phone, store)
VALUES (00007, "Walter Melon", "+34636176382", "Amsterdam");

INSERT INTO car_sales.sales_rep(salesperson_id, sales_name, phone, store)
VALUES (00008, "Shondaleer", "+34636176382", "Sao Paulo");

SELECT * FROM invoices;

INSERT INTO car_sales.invoices(invoice_num, issue_date, car_VIN, customer_id, salesperson_id)
VALUES (852399038, "2018-08-22", "3K096198581DHSNUP", 20001, 00004 );

INSERT INTO car_sales.invoices(invoice_num, issue_date, car_VIN, customer_id, salesperson_id)
VALUES (731166526, "2018-12-31", "HKNDGS7CU31E9Z7JW", 10001, 00006 );

INSERT INTO car_sales.invoices(invoice_num, issue_date, car_VIN, customer_id, salesperson_id)
VALUES (271135104, "2019-01-22", "RKXVNNIHLVVZOUB4M", 30001, 00008 );












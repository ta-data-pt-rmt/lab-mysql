USE car_sales;

UPDATE car_sales.customers
SET email = "ppicasso@gmail.com"
WHERE customer_id = 10001;

UPDATE car_sales.customers
SET email = "lincoln@us.gov"
WHERE customer_id = 20001;

UPDATE car_sales.customers
SET email = "hello@napoleon.me"
WHERE customer_id = 30001;

UPDATE car_sales.sales_rep
SET store = "Miami"
WHERE salesperson_id = 5;
USE lab_mysql;

/*SET SQL_SAFE_UPDATES = 0;*/
UPDATE customer
SET Email = "ppicasso@gmail.com"
WHERE Customer_ID = 10001;
UPDATE customer
SET Email = "lincoln@us.gov"
WHERE Name = "Abraham Lincoln";
UPDATE customer
SET Email = "hello@napoleon.me"
WHERE Customer_ID = 30001;


SELECT * FROM customer;

/* Already fixed Miami while populating the tables... thought it was an easy Typo .... */
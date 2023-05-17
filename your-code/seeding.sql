USE ironhack;

SET sql_mode = "NO_AUTO_VALUE_ON_ZERO";

INSERT INTO ironhack.customers (customer_id, customer_name, customer_phone, address, city, state_province, country, postal_code)
VALUES
  (10001, 'Pablo Picasso', '+34 636 17 63 82', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid	', 'Spain',  28045),
  (20001, 'Abraham Lincoln', '+1 305 907 7086', '120 SW 8th St', 'Miami',	'Florida', 'United States',	33130),
  (30001,	'Napoléon Bonaparte',	'+33 1 79 75 40 00', '40 Rue du Colisée',	'Paris',	'Île-de-France',	'France',	75008);

 INSERT INTO ironhack.salespersons (staff_id, staff_name, store, city, state_province, country, store_id)
VALUES
  (00001, 'Petey Cruiser', 'Madrid-1', 'Madrid', 'Madrid', 'Spain',  20002),
  (00002, 'Anna Sthesia', 'Barcelona-1', 'Barcelona' , 'Catalunia', 'Spain', 20003),
  (00003, 'Paul Molive', 'Berlin-1', 'Berlin',	'Berlin',	'Germany',	70001);
  
   INSERT INTO ironhack.stores (store_id, address, city, state_province, country)
VALUES
  (20002, 'Calle Mayor, 55', 'Madrid', 'Madrid', 'Spain'),
  (20003, 'Calle Menor, 40', 'Barcelona' , 'Catalunia', 'Spain'),
  (70001, 'Aftas Arden 77', 'Berlin', 'Berlin',	'Germany');
  
     INSERT INTO ironhack.invoices (invoice_number, VIN_id, model, customer_name, staff_id, store_id, purchase_date, city, state_province, country, customer_id)
VALUES
  (1, 377, 'Tiguan', 'Pablo Picasso', 00001, 20002, '2023-05-10', 'Madrid', 'Madrid', 'Spain', 10001 ),
  (2, 456, 'Model S', 'Jane Smith', 102, 202, '2023-05-18', 'Los Angeles', 'CA', 'USA', 5424),
  (3, 789, 'Model 3', 'Michael Johnson', 103, 203, '2023-05-19', 'Chicago', 'IL', 'USA', 78996);

  

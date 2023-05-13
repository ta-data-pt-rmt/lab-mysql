USE My_Auto_Stand;

INSERT INTO cars (car_id, vin, manufacturer, model, year, color) VALUES
(0, '1GNSKJKC9FR118238', 'Chevrolet', 'Tahoe', 2021, 'Black'), 
(1, '1C4HJXEG5MW508599', 'Jeep', 'Wrangler', 2021, 'Blue'), 
(2, '3C6UR5DL7NG125982', 'Ram', '1500', 2022, 'Red'), 
(3, '1FTFW1EG4MFA25897', 'Ford', 'F-150', 2021, 'White'), 
(4, '5TFSX5EN5MX098704', 'Toyota', 'Tacoma', 2021, 'Gray');

INSERT INTO customers (customer_id, name, phone_number, email, address, city, state_province, country, zip_postal_code) VALUES
(0, 'John Doe', '123-456-7890', 'johndoe@example.com', '123 Main St', 'Anytown', 'CA', 'USA', '12345'),
(1, 'Jane Smith', '555-555-5555', 'janesmith@example.com', '456 Elm St', 'Othertown', 'NY', 'USA', '67890'),
(2, 'Bob Johnson', '555-123-4567', 'bjohnson@example.com', '789 Maple St', 'Yetanothertown', 'CA', 'USA', '23456');

INSERT INTO salespersons (staff_id, name, store) VALUES
(0, 'Alice Anderson', 'Downtown'),
(1, 'Bob Brown', 'Uptown'),
(2, 'Charlie Chen', 'Midtown');

INSERT INTO invoices (invoice_id, invoice_date, car_id, customer_id, staff_id) VALUES
(0, '2022-01-01', 0, 0, 0),
(1, '2022-01-02', 1, 1, 1),
(2, '2022-01-03', 2, 2, 2),
(3, '2022-01-04', 3, 0, 1);



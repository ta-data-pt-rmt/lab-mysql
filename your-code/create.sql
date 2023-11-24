USE Mysql_Nhan;

CREATE TABLE Invoices (
    Orders INT AUTO_INCREMENT PRIMARY KEY,
    Invoice_number VARCHAR(17) NOT NULL UNIQUE,
    Billing_date DATE not null,
    Car_Vin VARCHAR(255) not null,
    Customer_ID VARCHAR(17) not null,
    Salesperson_ID VARCHAR(17) not null
    );

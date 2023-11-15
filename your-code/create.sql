CREATE SCHEMA `carsprj` DEFAULT CHARACTER SET utf8 ;

use `carsprj`;

CREATE TABLE `carsprj`.`Cars` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `vin` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(100) NOT NULL,
  `year` INT NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `carsprj`.`Customers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `customername` VARCHAR(45) NOT NULL,
  `phonenumber` VARCHAR(45) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `postcode` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `carsprj`.`Salespersons` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `carsprj`.`Invoices` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `invoicenumber` VARCHAR(45) NOT NULL,
  `invoicedate` DATETIME NOT NULL,
  `carid` INT NOT NULL,
  `customerid` INT NOT NULL,
  `salespersonid` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `carid_idx` (`carid` ASC) VISIBLE,
  INDEX `customerid_idx` (`customerid` ASC) VISIBLE,
  INDEX `staffid_idx` (`salespersonid` ASC) VISIBLE,
  CONSTRAINT `carid`
    FOREIGN KEY (`carid`)
    REFERENCES `carsprj`.`Cars` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `customerid`
    FOREIGN KEY (`customerid`)
    REFERENCES `carsprj`.`Customers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `staffid`
    FOREIGN KEY (`salespersonid`)
    REFERENCES `carsprj`.`salespersons` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
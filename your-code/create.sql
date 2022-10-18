-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema dealership
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dealership
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dealership` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `dealership` ;

-- -----------------------------------------------------
-- Table `dealership`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dealership`.`cars` (
  `idcars` INT NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` YEAR NOT NULL,
  `color` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idcars`),
  UNIQUE INDEX `idcars_UNIQUE` (`idcars` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dealership`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dealership`.`customers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `customer_id` INT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `phone_number` VARCHAR(50) NULL DEFAULT NULL,
  `email` VARCHAR(60) NULL DEFAULT NULL,
  `address` VARCHAR(100) NOT NULL,
  `city` VARCHAR(45) NULL DEFAULT NULL,
  `state/province` VARCHAR(45) NULL DEFAULT NULL,
  `country` VARCHAR(45) NULL DEFAULT NULL,
  `zip/postal_code` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `customer_id`),
  UNIQUE INDEX `idcustomers_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dealership`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dealership`.`salespersons` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `staff_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`, `staff_id`),
  UNIQUE INDEX `idsalespersons_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `dealership`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dealership`.`invoices` (
  `idinvoices` INT NOT NULL AUTO_INCREMENT,
  `salespersons_idsalespersons` INT NOT NULL,
  `customers_idcustomers` INT NOT NULL,
  `cars_idcars` INT NOT NULL,
  `number` INT NOT NULL,
  `date` DATE NOT NULL,
  PRIMARY KEY (`idinvoices`, `salespersons_idsalespersons`, `customers_idcustomers`, `cars_idcars`),
  UNIQUE INDEX `idinvoices_UNIQUE` (`idinvoices` ASC) VISIBLE,
  INDEX `fk_invoices_salespersons1_idx` (`salespersons_idsalespersons` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_idcustomers` ASC) VISIBLE,
  INDEX `fk_invoices_cars1_idx` (`cars_idcars` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_cars1`
    FOREIGN KEY (`cars_idcars`)
    REFERENCES `dealership`.`cars` (`idcars`),
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_idcustomers`)
    REFERENCES `dealership`.`customers` (`id`),
  CONSTRAINT `fk_invoices_salespersons1`
    FOREIGN KEY (`salespersons_idsalespersons`)
    REFERENCES `dealership`.`salespersons` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

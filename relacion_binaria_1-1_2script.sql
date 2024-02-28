-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema relacion_binaria_1-1_2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema relacion_binaria_1-1_2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `relacion_binaria_1-1_2` DEFAULT CHARACTER SET utf8 ;
USE `relacion_binaria_1-1_2` ;

-- -----------------------------------------------------
-- Table `relacion_binaria_1-1_2`.`VEHÍCULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `relacion_binaria_1-1_2`.`VEHÍCULO` (
  `matricula` INT NOT NULL,
  `modelo` VARCHAR(45) NULL,
  PRIMARY KEY (`matricula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `relacion_binaria_1-1_2`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `relacion_binaria_1-1_2`.`EMPLEADO` (
  `codemp` INT NOT NULL,
  `nombres` VARCHAR(45) NULL,
  `apellido_1` VARCHAR(45) NULL,
  `apellido_2` VARCHAR(45) NULL,
  `matricula` INT NULL,
  `fecha_inicio` DATETIME NULL,
  PRIMARY KEY (`codemp`),
  INDEX `matricula_idx` (`matricula` ASC) VISIBLE,
  CONSTRAINT `matricula`
    FOREIGN KEY (`matricula`)
    REFERENCES `relacion_binaria_1-1_2`.`VEHÍCULO` (`matricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

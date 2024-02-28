-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema relaciones_binarias_1-1_3
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema relaciones_binarias_1-1_3
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `relaciones_binarias_1-1_3` DEFAULT CHARACTER SET utf8 ;
USE `relaciones_binarias_1-1_3` ;

-- -----------------------------------------------------
-- Table `relaciones_binarias_1-1_3`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `relaciones_binarias_1-1_3`.`EMPLEADO` (
  `codemp` INT NOT NULL,
  `nombres` VARCHAR(45) NULL,
  `apellido_1` VARCHAR(45) NULL,
  `apellido_2` VARCHAR(45) NULL,
  PRIMARY KEY (`codemp`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `relaciones_binarias_1-1_3`.`VEHÍCULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `relaciones_binarias_1-1_3`.`VEHÍCULO` (
  `matricula` INT NOT NULL,
  `modelo` VARCHAR(45) NULL,
  PRIMARY KEY (`matricula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `relaciones_binarias_1-1_3`.`CONDUCE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `relaciones_binarias_1-1_3`.`CONDUCE` (
  `codemp` INT NOT NULL,
  `matricula` INT NOT NULL,
  `fecha_inicio` DATETIME NULL,
  INDEX `codemp_idx` (`codemp` ASC) VISIBLE,
  INDEX `matricula_idx` (`matricula` ASC) VISIBLE,
  CONSTRAINT `codemp`
    FOREIGN KEY (`codemp`)
    REFERENCES `relaciones_binarias_1-1_3`.`EMPLEADO` (`codemp`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `matricula`
    FOREIGN KEY (`matricula`)
    REFERENCES `relaciones_binarias_1-1_3`.`VEHÍCULO` (`matricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

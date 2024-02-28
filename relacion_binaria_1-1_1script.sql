-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema relacion-binaria-1-1-1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema relacion-binaria-1-1-1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `relacion-binaria-1-1-1` DEFAULT CHARACTER SET utf8 ;
USE `relacion-binaria-1-1-1` ;

-- -----------------------------------------------------
-- Table `relacion-binaria-1-1-1`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `relacion-binaria-1-1-1`.`EMPLEADO` (
  `codemp` INT NOT NULL,
  `nombres` VARCHAR(45) NULL,
  `apellido_1` VARCHAR(45) NULL,
  `apellido_2` VARCHAR(45) NULL,
  PRIMARY KEY (`codemp`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `relacion-binaria-1-1-1`.`VEHÍCULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `relacion-binaria-1-1-1`.`VEHÍCULO` (
  `matricula` INT NOT NULL,
  `modelo` VARCHAR(45) NULL,
  `fecha_inicio` VARCHAR(45) NULL,
  `codemp` INT NOT NULL,
  PRIMARY KEY (`matricula`),
  INDEX `codemp_idx` (`codemp` ASC) VISIBLE,
  CONSTRAINT `codemp`
    FOREIGN KEY (`codemp`)
    REFERENCES `relacion-binaria-1-1-1`.`EMPLEADO` (`codemp`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

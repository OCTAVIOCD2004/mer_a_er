-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema esquema nuevo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema esquema nuevo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `esquema nuevo` DEFAULT CHARACTER SET utf8 ;
USE `esquema nuevo` ;

-- -----------------------------------------------------
-- Table `esquema nuevo`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `esquema nuevo`.`EMPLEADO` (
  `num_empleado` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `fecha_ingreso` VARCHAR(45) NULL,
  `num_deppart` INT NOT NULL,
  PRIMARY KEY (`num_empleado`),
  INDEX `num_deppart_idx` (`num_deppart` ASC) VISIBLE,
  CONSTRAINT `num_deppart`
    FOREIGN KEY (`num_deppart`)
    REFERENCES `esquema nuevo`.`DEPARTAMENTO` (`num_deppart`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `esquema nuevo`.`DEPARTAMENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `esquema nuevo`.`DEPARTAMENTO` (
  `num_deppart` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `presupuesto` DOUBLE NOT NULL,
  `EMPLEADO_num_empleado` INT NOT NULL,
  PRIMARY KEY (`num_deppart`, `EMPLEADO_num_empleado`),
  INDEX `fk_DEPARTAMENTO_EMPLEADO_idx` (`EMPLEADO_num_empleado` ASC) VISIBLE,
  CONSTRAINT `fk_DEPARTAMENTO_EMPLEADO`
    FOREIGN KEY (`EMPLEADO_num_empleado`)
    REFERENCES `esquema nuevo`.`EMPLEADO` (`num_empleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

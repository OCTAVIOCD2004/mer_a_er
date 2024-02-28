-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ejemplo-entidad-relacion-D
-- -----------------------------------------------------
-- ejemplo de entidad relacion

-- -----------------------------------------------------
-- Schema ejemplo-entidad-relacion-D
--
-- ejemplo de entidad relacion
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ejemplo-entidad-relacion-D` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `ejemplo-entidad-relacion-D` ;

-- -----------------------------------------------------
-- Table `ejemplo-entidad-relacion-D`.`LIBRO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ejemplo-entidad-relacion-D`.`LIBRO` (
  `ISBN` INT NOT NULL,
  `editorial` VARCHAR(45) NOT NULL,
  `idioma` VARCHAR(45) NOT NULL,
  `titulo_principal` VARCHAR(45) NOT NULL,
  `subtitulo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ISBN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ejemplo-entidad-relacion-D`.`EDICION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ejemplo-entidad-relacion-D`.`EDICION` (
  `numero` VARCHAR(45) NOT NULL,
  `año` VARCHAR(45) NOT NULL,
  `libro_ISBN` INT NOT NULL,
  INDEX `fk_edicion_libro1_idx` (`libro_ISBN` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ejemplo-entidad-relacion-D`.`TITULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ejemplo-entidad-relacion-D`.`TITULO` (
  `titulo_principal` VARCHAR(45) NOT NULL,
  `subtitulo` VARCHAR(45) NOT NULL,
  `libro_ISBN` INT NOT NULL,
  INDEX `fk_titulo_libro_idx` (`libro_ISBN` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

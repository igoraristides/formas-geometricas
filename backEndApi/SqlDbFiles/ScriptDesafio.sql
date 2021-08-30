-- MySQL Script generated by MySQL Workbench
-- Mon Aug 30 10:32:28 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema desafioIntell
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `desafioIntell` ;

-- -----------------------------------------------------
-- Schema desafioIntell
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `desafioIntell` DEFAULT CHARACTER SET utf8 ;
USE `desafioIntell` ;

-- -----------------------------------------------------
-- Table `desafioIntell`.`diretorios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `desafioIntell`.`diretorios` ;

CREATE TABLE IF NOT EXISTS `desafioIntell`.`diretorios` (
  `idDiretorio` CHAR(38) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idDiretorio`),
  UNIQUE INDEX `idDiretorio_UNIQUE` (`idDiretorio` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `desafioIntell`.`formasGeometricas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `desafioIntell`.`formasGeometricas` ;

CREATE TABLE IF NOT EXISTS `desafioIntell`.`formasGeometricas` (
  `idFormasGeometricas` CHAR(38) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `tipo` ENUM('Trapézio', 'Quadrado', 'Triângulo', 'Retângulo', 'Losango', 'Paralelogramo', 'Círculo') NOT NULL,
  `cor` VARCHAR(45) NOT NULL,
  `tamPixels` INT NOT NULL,
  `id_diretorio` CHAR(38) NOT NULL,
  PRIMARY KEY (`idFormasGeometricas`),
  UNIQUE INDEX `idFormasGeometricas_UNIQUE` (`idFormasGeometricas` ASC) VISIBLE,
  INDEX `fk_formasGeometricas_diretorios_idx` (`id_diretorio` ASC) VISIBLE,
  CONSTRAINT `fk_formasGeometricas_diretorios`
    FOREIGN KEY (`id_diretorio`)
    REFERENCES `desafioIntell`.`diretorios` (`idDiretorio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

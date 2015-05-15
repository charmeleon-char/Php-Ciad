-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema ciadfinal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ciadfinal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ciadfinal` DEFAULT CHARACTER SET utf8 ;
USE `ciadfinal` ;

-- -----------------------------------------------------
-- Table `ciadfinal`.`cargo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciadfinal`.`cargo` (
  `idCargo` BIGINT(100) NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idCargo`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8
ROW_FORMAT = DYNAMIC;


-- -----------------------------------------------------
-- Table `ciadfinal`.`empleados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciadfinal`.`empleados` (
  `idEmpleados` BIGINT(100) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `apellido` VARCHAR(45) NULL DEFAULT NULL,
  `especialidad` VARCHAR(45) NULL DEFAULT NULL,
  `Cargo_idCargo` BIGINT(100) NULL DEFAULT NULL,
  `correo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEmpleados`),
  INDEX `fk_Empleados_Cargo1_idx` (`Cargo_idCargo` ASC),
  CONSTRAINT `fk_Empleados_Cargo1`
    FOREIGN KEY (`Cargo_idCargo`)
    REFERENCES `ciadfinal`.`cargo` (`idCargo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8
ROW_FORMAT = DYNAMIC;


-- -----------------------------------------------------
-- Table `ciadfinal`.`roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciadfinal`.`roles` (
  `idRoles` BIGINT(10) NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idRoles`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8
ROW_FORMAT = DYNAMIC;


-- -----------------------------------------------------
-- Table `ciadfinal`.`pacientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciadfinal`.`pacientes` (
  `idpacientes` BIGINT(100) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `apellido` VARCHAR(45) NULL DEFAULT NULL,
  `fechaNac` DATETIME NULL DEFAULT NULL,
  `direccion` VARCHAR(45) NULL DEFAULT NULL,
  `telefono` VARCHAR(9) NULL DEFAULT NULL,
  `celular` VARCHAR(9) NULL DEFAULT NULL,
  `Roles_idRoles` BIGINT(10) NULL DEFAULT NULL,
  PRIMARY KEY (`idpacientes`),
  INDEX `fk_Pacientes_Roles1_idx` (`Roles_idRoles` ASC),
  CONSTRAINT `fk_Pacientes_Roles1`
    FOREIGN KEY (`Roles_idRoles`)
    REFERENCES `ciadfinal`.`roles` (`idRoles`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8
PACK_KEYS = 1
ROW_FORMAT = DYNAMIC;


-- -----------------------------------------------------
-- Table `ciadfinal`.`expedientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciadfinal`.`expedientes` (
  `idExpedientes` BIGINT(100) NOT NULL AUTO_INCREMENT,
  `fechaApertura` DATE NULL DEFAULT NULL,
  `responsable` VARCHAR(45) NULL DEFAULT NULL,
  `Pacientes_idpacientes` BIGINT(100) NOT NULL DEFAULT '0',
  `Empleados_idEmpleados` BIGINT(100) NULL DEFAULT NULL,
  PRIMARY KEY (`idExpedientes`, `Pacientes_idpacientes`),
  INDEX `fk_Expedientes_Pacientes1_idx` (`Pacientes_idpacientes` ASC),
  INDEX `fk_Expedientes_Empleados1_idx` (`Empleados_idEmpleados` ASC),
  CONSTRAINT `fk_Expedientes_Pacientes1`
    FOREIGN KEY (`Pacientes_idpacientes`)
    REFERENCES `ciadfinal`.`pacientes` (`idpacientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Expedientes_Empleados1`
    FOREIGN KEY (`Empleados_idEmpleados`)
    REFERENCES `ciadfinal`.`empleados` (`idEmpleados`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8
ROW_FORMAT = DYNAMIC;


-- -----------------------------------------------------
-- Table `ciadfinal`.`citas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciadfinal`.`citas` (
  `idCitas` BIGINT(100) NOT NULL AUTO_INCREMENT,
  `fecha` DATE NULL DEFAULT NULL,
  `hora` VARCHAR(45) NULL DEFAULT NULL,
  `Expedientes_idExpedientes` BIGINT(100) NULL DEFAULT NULL,
  `Expedientes_Pacientes_idpacientes` BIGINT(100) NULL DEFAULT NULL,
  `Empleados_idEmpleados` BIGINT(100) NOT NULL,
  PRIMARY KEY (`idCitas`),
  INDEX `fk_Citas_Expedientes1_idx` (`Expedientes_idExpedientes` ASC, `Expedientes_Pacientes_idpacientes` ASC),
  INDEX `fk_Citas_Empleados1_idx` (`Empleados_idEmpleados` ASC),
  CONSTRAINT `fk_Citas_Empleados1`
    FOREIGN KEY (`Empleados_idEmpleados`)
    REFERENCES `ciadfinal`.`empleados` (`idEmpleados`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Citas_Expedientes1`
    FOREIGN KEY (`Expedientes_idExpedientes` , `Expedientes_Pacientes_idpacientes`)
    REFERENCES `ciadfinal`.`expedientes` (`idExpedientes` , `Pacientes_idpacientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8
ROW_FORMAT = DYNAMIC;


-- -----------------------------------------------------
-- Table `ciadfinal`.`detalle_expediente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciadfinal`.`detalle_expediente` (
  `Edad` VARCHAR(45) NULL DEFAULT NULL,
  `altura` DOUBLE NULL DEFAULT NULL,
  `temperatura` DOUBLE NULL DEFAULT NULL,
  `presion` DOUBLE NULL DEFAULT NULL,
  `glucosa` DOUBLE NULL DEFAULT NULL,
  `motivo` VARCHAR(250) NULL DEFAULT NULL,
  `diagnostico` VARCHAR(250) NULL DEFAULT NULL,
  `Expedientes_idExpedientes` BIGINT(100) NOT NULL,
  INDEX `fk_Detalle_expediente_Expedientes1_idx` (`Expedientes_idExpedientes` ASC),
  CONSTRAINT `fk_Detalle_expediente_Expedientes1`
    FOREIGN KEY (`Expedientes_idExpedientes`)
    REFERENCES `ciadfinal`.`expedientes` (`idExpedientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ciadfinal`.`examenes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciadfinal`.`examenes` (
  `idExamenes` BIGINT(100) NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NULL DEFAULT NULL,
  `Expedientes_idExpedientes` BIGINT(100) NULL DEFAULT NULL,
  `Expedientes_Pacientes_idpacientes` BIGINT(100) NULL DEFAULT NULL,
  PRIMARY KEY (`idExamenes`),
  INDEX `fk_Examenes_Expedientes1_idx` (`Expedientes_idExpedientes` ASC, `Expedientes_Pacientes_idpacientes` ASC),
  CONSTRAINT `fk_Examenes_Expedientes1`
    FOREIGN KEY (`Expedientes_idExpedientes` , `Expedientes_Pacientes_idpacientes`)
    REFERENCES `ciadfinal`.`expedientes` (`idExpedientes` , `Pacientes_idpacientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
ROW_FORMAT = DYNAMIC;


-- -----------------------------------------------------
-- Table `ciadfinal`.`recetas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciadfinal`.`recetas` (
  `idRecetas` BIGINT(100) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NULL DEFAULT NULL,
  `Expedientes_idExpedientes` BIGINT(100) NULL DEFAULT NULL,
  `Expedientes_Pacientes_idpacientes` BIGINT(100) NULL DEFAULT NULL,
  PRIMARY KEY (`idRecetas`),
  INDEX `fk_Recetas_Expedientes1_idx` (`Expedientes_idExpedientes` ASC, `Expedientes_Pacientes_idpacientes` ASC),
  CONSTRAINT `fk_Recetas_Expedientes1`
    FOREIGN KEY (`Expedientes_idExpedientes` , `Expedientes_Pacientes_idpacientes`)
    REFERENCES `ciadfinal`.`expedientes` (`idExpedientes` , `Pacientes_idpacientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
ROW_FORMAT = DYNAMIC;


-- -----------------------------------------------------
-- Table `ciadfinal`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciadfinal`.`usuario` (
  `idusuario` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `usuarioemail` VARCHAR(125) NOT NULL,
  `usuarionom` VARCHAR(65) NOT NULL,
  `usuariopwd` VARCHAR(128) NOT NULL,
  `usuarioest` CHAR(3) NOT NULL,
  `usuariofching` TIMESTAMP NULL DEFAULT NULL,
  `usuariolstlgn` VARCHAR(45) NULL DEFAULT NULL,
  `tipo` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idusuario`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8
ROW_FORMAT = DYNAMIC;


-- -----------------------------------------------------
-- Table `ciadfinal`.`roles_has_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciadfinal`.`roles_has_usuario` (
  `Roles_idRoles` BIGINT(10) NOT NULL,
  `Usuario_idusuario` BIGINT(20) NOT NULL,
  PRIMARY KEY (`Roles_idRoles`, `Usuario_idusuario`),
  INDEX `fk_Roles_has_Usuario_Usuario1_idx` (`Usuario_idusuario` ASC),
  INDEX `fk_Roles_has_Usuario_Roles1_idx` (`Roles_idRoles` ASC),
  CONSTRAINT `fk_Roles_has_Usuario_Roles1`
    FOREIGN KEY (`Roles_idRoles`)
    REFERENCES `ciadfinal`.`roles` (`idRoles`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Roles_has_Usuario_Usuario1`
    FOREIGN KEY (`Usuario_idusuario`)
    REFERENCES `ciadfinal`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ciadfinal`.`tratamiento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ciadfinal`.`tratamiento` (
  `idTratamiento` BIGINT(100) NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NULL DEFAULT NULL,
  `medicamento` VARCHAR(45) NULL DEFAULT NULL,
  `Expedientes_idExpedientes` BIGINT(100) NULL DEFAULT NULL,
  `Expedientes_Pacientes_idpacientes` BIGINT(100) NULL DEFAULT NULL,
  PRIMARY KEY (`idTratamiento`),
  INDEX `fk_Tratamiento_Expedientes1_idx` (`Expedientes_idExpedientes` ASC, `Expedientes_Pacientes_idpacientes` ASC),
  CONSTRAINT `fk_Tratamiento_Expedientes1`
    FOREIGN KEY (`Expedientes_idExpedientes` , `Expedientes_Pacientes_idpacientes`)
    REFERENCES `ciadfinal`.`expedientes` (`idExpedientes` , `Pacientes_idpacientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
ROW_FORMAT = DYNAMIC;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

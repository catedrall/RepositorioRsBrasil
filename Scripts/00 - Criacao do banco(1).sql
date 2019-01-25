-- MySQL Script generated by MySQL Workbench
-- Sun Nov 25 14:06:20 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Sistema
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Sistema
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Sistema` DEFAULT CHARACTER SET utf8 ;
USE `Sistema` ;

-- -----------------------------------------------------
-- Table `Sistema`.`PerfilAcesso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`PerfilAcesso` (
  `IdPerfilAcesso` INT NOT NULL,
  `IdPerfil` INT NULL,
  `IdTela` INT NULL,
  `DataInclusao` DATETIME NULL,
  `DataAlteracao` VARCHAR(45) NULL,
  PRIMARY KEY (`IdPerfilAcesso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`Funcionario` (
  `IdFuncionario` INT NOT NULL,
  `NomeFuncionario` VARCHAR(100) NULL,
  `DataNascimento` DATETIME NULL,
  `IdCargo` INT NULL,
  `IdEndereco` INT NULL,
  `Telefone` VARCHAR(10) NULL,
  `Celular` VARCHAR(11) NULL,
  `Login` VARCHAR(45) NULL,
  `Senha` VARCHAR(45) NULL,
  `CPF` VARCHAR(11) NULL,
  `RG` VARCHAR(11) NULL,
  `CarteiraTrabalho` VARCHAR(45) NULL,
  `CarteiraMotorista` VARCHAR(25) NULL,
  `DataInclusao` DATETIME NULL,
  `DataAtualizacao` DATETIME NULL,
  `ColaboradorUniforme_IdColaborador` INT NOT NULL,
  `PerfilAcesso_IdPerfilAcesso` INT NOT NULL,
  PRIMARY KEY (`IdFuncionario`, `ColaboradorUniforme_IdColaborador`, `PerfilAcesso_IdPerfilAcesso`),
  INDEX `fk_Funcionario_PerfilAcesso1_idx` (`PerfilAcesso_IdPerfilAcesso` ASC) VISIBLE,
  CONSTRAINT `fk_Funcionario_PerfilAcesso1`
    FOREIGN KEY (`PerfilAcesso_IdPerfilAcesso`)
    REFERENCES `Sistema`.`PerfilAcesso` (`IdPerfilAcesso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`Cliente` (
  `IdCliente` INT NOT NULL,
  `IdContrato` INT NULL,
  `RazaoSocial` VARCHAR(200) NULL,
  `NomeFantasia` VARCHAR(200) NULL,
  `CNPJ` VARCHAR(20) NULL,
  `Contato` VARCHAR(20) NULL,
  `Telefone` VARCHAR(10) NULL,
  `Email` VARCHAR(100) NULL,
  `Clientecol` VARCHAR(45) NULL,
  PRIMARY KEY (`IdCliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`Enderecos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`Enderecos` (
  `IdEnderecos` INT NOT NULL,
  `IdTipoEndereco` INT NULL,
  `Logradouro` VARCHAR(100) NULL,
  `Numero` INT NULL,
  `Bairro` VARCHAR(100) NULL,
  `Cidade` VARCHAR(100) NULL,
  `UF` VARCHAR(2) NULL,
  `Complemento` VARCHAR(100) NULL,
  `Complemento_copy1` BIT(1) NULL,
  `Matriz` DATETIME NULL,
  `DataAtualizacao` DATETIME NULL,
  `Funcionario_IdFuncionario` INT NOT NULL,
  `Funcionario_ColaboradorUniforme_IdColaborador` INT NOT NULL,
  `Cliente_IdCliente` INT NOT NULL,
  PRIMARY KEY (`IdEnderecos`, `Funcionario_IdFuncionario`, `Funcionario_ColaboradorUniforme_IdColaborador`),
  INDEX `fk_Enderecos_Funcionario1_idx` (`Funcionario_IdFuncionario` ASC, `Funcionario_ColaboradorUniforme_IdColaborador` ASC) VISIBLE,
  INDEX `fk_Enderecos_Cliente1_idx` (`Cliente_IdCliente` ASC) VISIBLE,
  CONSTRAINT `fk_Enderecos_Funcionario1`
    FOREIGN KEY (`Funcionario_IdFuncionario` , `Funcionario_ColaboradorUniforme_IdColaborador`)
    REFERENCES `Sistema`.`Funcionario` (`IdFuncionario` , `ColaboradorUniforme_IdColaborador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Enderecos_Cliente1`
    FOREIGN KEY (`Cliente_IdCliente`)
    REFERENCES `Sistema`.`Cliente` (`IdCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`TipoDeEndereços`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`TipoDeEndereços` (
  `IdTipoDeEndereços` INT NOT NULL,
  `Descricao` VARCHAR(45) NULL,
  `Enderecos_IdEnderecos` INT NOT NULL,
  PRIMARY KEY (`IdTipoDeEndereços`),
  INDEX `fk_TipoDeEndereços_Enderecos1_idx` (`Enderecos_IdEnderecos` ASC) VISIBLE,
  CONSTRAINT `fk_TipoDeEndereços_Enderecos1`
    FOREIGN KEY (`Enderecos_IdEnderecos`)
    REFERENCES `Sistema`.`Enderecos` (`IdEnderecos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`HistoricoSalario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`HistoricoSalario` (
  `IdHistoricoSalario` INT NOT NULL,
  `IdFuncionario` INT NULL,
  `Salario` DECIMAL NULL,
  `DataPagamento` DATETIME NULL,
  `DataInclusao` DATETIME NULL,
  `DataAtualizacao` DATETIME NULL,
  `Funcionario_IdFuncionario` INT NOT NULL,
  `Funcionario_ColaboradorUniforme_IdColaborador` INT NOT NULL,
  PRIMARY KEY (`IdHistoricoSalario`),
  INDEX `fk_HistoricoSalario_Funcionario1_idx` (`Funcionario_IdFuncionario` ASC, `Funcionario_ColaboradorUniforme_IdColaborador` ASC) VISIBLE,
  CONSTRAINT `fk_HistoricoSalario_Funcionario1`
    FOREIGN KEY (`Funcionario_IdFuncionario` , `Funcionario_ColaboradorUniforme_IdColaborador`)
    REFERENCES `Sistema`.`Funcionario` (`IdFuncionario` , `ColaboradorUniforme_IdColaborador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`HistoricoDePromocoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`HistoricoDePromocoes` (
  `IdHistoricoDePromocoes` INT NOT NULL,
  `IdFuncionario` INT NULL,
  `IdCargo` INT NULL,
  `DataPromocao` DATETIME NULL,
  `DataInclusao` DATETIME NULL,
  `DataAtualizacao` DATETIME NULL,
  `Funcionario_IdFuncionario` INT NOT NULL,
  PRIMARY KEY (`IdHistoricoDePromocoes`),
  INDEX `fk_HistoricoDePromocoes_Funcionario_idx` (`Funcionario_IdFuncionario` ASC) VISIBLE,
  CONSTRAINT `fk_HistoricoDePromocoes_Funcionario`
    FOREIGN KEY (`Funcionario_IdFuncionario`)
    REFERENCES `Sistema`.`Funcionario` (`IdFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`Cargo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`Cargo` (
  `IdCargo` INT NOT NULL,
  `Descricao` VARCHAR(100) NULL,
  `HistoricoDePromocoes_IdHistoricoDePromocoes` INT NOT NULL,
  `Funcionario_IdFuncionario` INT NOT NULL,
  `Funcionario_ColaboradorUniforme_IdColaborador` INT NOT NULL,
  PRIMARY KEY (`IdCargo`, `HistoricoDePromocoes_IdHistoricoDePromocoes`, `Funcionario_IdFuncionario`, `Funcionario_ColaboradorUniforme_IdColaborador`),
  INDEX `fk_Cargo_HistoricoDePromocoes1_idx` (`HistoricoDePromocoes_IdHistoricoDePromocoes` ASC) VISIBLE,
  INDEX `fk_Cargo_Funcionario1_idx` (`Funcionario_IdFuncionario` ASC, `Funcionario_ColaboradorUniforme_IdColaborador` ASC) VISIBLE,
  CONSTRAINT `fk_Cargo_HistoricoDePromocoes1`
    FOREIGN KEY (`HistoricoDePromocoes_IdHistoricoDePromocoes`)
    REFERENCES `Sistema`.`HistoricoDePromocoes` (`IdHistoricoDePromocoes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cargo_Funcionario1`
    FOREIGN KEY (`Funcionario_IdFuncionario` , `Funcionario_ColaboradorUniforme_IdColaborador`)
    REFERENCES `Sistema`.`Funcionario` (`IdFuncionario` , `ColaboradorUniforme_IdColaborador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`HistoricoDeLocalTrabalho`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`HistoricoDeLocalTrabalho` (
  `IdHistoricoDeLocalTrabalho` INT NOT NULL,
  `IdCliente` INT NULL,
  `IdFuncionario` INT NULL,
  `DataInicio` DATETIME NULL,
  `DataFinalizacao` DATETIME NULL,
  `DataInclusao` DATETIME NULL,
  `DataAtualizacao` DATETIME NULL,
  PRIMARY KEY (`IdHistoricoDeLocalTrabalho`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`HistoricoDeExameMedico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`HistoricoDeExameMedico` (
  `IdHistoricoDeExameMedico` INT NOT NULL,
  `IdFuncionario` INT NULL,
  `DataAusencia` DATETIME NULL,
  `DiasAusentes` INT NULL,
  `IdDocumentos` INT NULL,
  `DataInclusao` DATETIME NULL,
  `DataAtualizacao` DATETIME NULL,
  `Funcionario_IdFuncionario` INT NOT NULL,
  `Funcionario_ColaboradorUniforme_IdColaborador` INT NOT NULL,
  PRIMARY KEY (`IdHistoricoDeExameMedico`, `Funcionario_IdFuncionario`, `Funcionario_ColaboradorUniforme_IdColaborador`),
  INDEX `fk_HistoricoDeExameMedico_Funcionario1_idx` (`Funcionario_IdFuncionario` ASC, `Funcionario_ColaboradorUniforme_IdColaborador` ASC) VISIBLE,
  CONSTRAINT `fk_HistoricoDeExameMedico_Funcionario1`
    FOREIGN KEY (`Funcionario_IdFuncionario` , `Funcionario_ColaboradorUniforme_IdColaborador`)
    REFERENCES `Sistema`.`Funcionario` (`IdFuncionario` , `ColaboradorUniforme_IdColaborador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`HistoricoDeFalta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`HistoricoDeFalta` (
  `IdHistoricoDeFalta` INT NOT NULL,
  `IdFuncionario` INT NULL,
  `IdCliente` INT NULL,
  `DataFalta` DATETIME NULL,
  `DataAtualizacao` DATETIME NULL,
  `DataInclusao` DATETIME NULL,
  `Funcionario_IdFuncionario` INT NOT NULL,
  `Funcionario_ColaboradorUniforme_IdColaborador` INT NOT NULL,
  PRIMARY KEY (`IdHistoricoDeFalta`),
  INDEX `fk_HistoricoDeFalta_Funcionario1_idx` (`Funcionario_IdFuncionario` ASC, `Funcionario_ColaboradorUniforme_IdColaborador` ASC) VISIBLE,
  CONSTRAINT `fk_HistoricoDeFalta_Funcionario1`
    FOREIGN KEY (`Funcionario_IdFuncionario` , `Funcionario_ColaboradorUniforme_IdColaborador`)
    REFERENCES `Sistema`.`Funcionario` (`IdFuncionario` , `ColaboradorUniforme_IdColaborador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`AfastamentoMedico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`AfastamentoMedico` (
  `IdAfastamentoMedico` INT NOT NULL,
  `IdFuncionario` INT NULL,
  `IdDocumento` INT NULL,
  `IdTipoAfastamento` INT NULL,
  `Descricao` VARCHAR(4000) NULL,
  `DataInicioAfastamento` DATETIME NULL,
  `DataFimAfastamento` DATETIME NULL,
  `DataInclusao` DATETIME NULL,
  `DataAtuaizacao` DATETIME NULL,
  `Funcionario_IdFuncionario` INT NOT NULL,
  `Funcionario_ColaboradorUniforme_IdColaborador` INT NOT NULL,
  PRIMARY KEY (`IdAfastamentoMedico`),
  INDEX `fk_AfastamentoMedico_Funcionario1_idx` (`Funcionario_IdFuncionario` ASC, `Funcionario_ColaboradorUniforme_IdColaborador` ASC) VISIBLE,
  CONSTRAINT `fk_AfastamentoMedico_Funcionario1`
    FOREIGN KEY (`Funcionario_IdFuncionario` , `Funcionario_ColaboradorUniforme_IdColaborador`)
    REFERENCES `Sistema`.`Funcionario` (`IdFuncionario` , `ColaboradorUniforme_IdColaborador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`HistoricoPunicoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`HistoricoPunicoes` (
  `IdHistoricoPunicoes` INT NOT NULL,
  `IdFuncionario` INT NULL,
  `Descricao` VARCHAR(4000) NULL,
  `DataPunicao` DATETIME NULL,
  `DataInclusao` DATETIME NULL,
  `DataAtualizacao` DATETIME NULL,
  `Funcionario_IdFuncionario` INT NOT NULL,
  `Funcionario_ColaboradorUniforme_IdColaborador` INT NOT NULL,
  PRIMARY KEY (`IdHistoricoPunicoes`),
  INDEX `fk_HistoricoPunicoes_Funcionario1_idx` (`Funcionario_IdFuncionario` ASC, `Funcionario_ColaboradorUniforme_IdColaborador` ASC) VISIBLE,
  CONSTRAINT `fk_HistoricoPunicoes_Funcionario1`
    FOREIGN KEY (`Funcionario_IdFuncionario` , `Funcionario_ColaboradorUniforme_IdColaborador`)
    REFERENCES `Sistema`.`Funcionario` (`IdFuncionario` , `ColaboradorUniforme_IdColaborador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`Documentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`Documentos` (
  `IdDocumentos` INT NOT NULL,
  `IdTipoDocumento` INT NULL,
  `Documento` VARCHAR(4000) NULL,
  `HistoricoDeFalta_IdHistoricoDeFalta` INT NOT NULL,
  `AfastamentoMedico_IdAfastamentoMedico` INT NOT NULL,
  `HistoricoPunicoes_IdHistoricoPunicoes1` INT NOT NULL,
  `HistoricoDeExameMedico_IdHistoricoDeExameMedico` INT NOT NULL,
  `HistoricoDeExameMedico_Funcionario_IdFuncionario` INT NOT NULL,
  `HistExameMedico_Func_ColabUniforme_IdCola` INT NOT NULL,
  PRIMARY KEY (`IdDocumentos`, `HistoricoDeFalta_IdHistoricoDeFalta`, `AfastamentoMedico_IdAfastamentoMedico`),
  INDEX `fk_Documentos_HistoricoDeFalta1_idx` (`HistoricoDeFalta_IdHistoricoDeFalta` ASC) VISIBLE,
  INDEX `fk_Documentos_AfastamentoMedico1_idx` (`AfastamentoMedico_IdAfastamentoMedico` ASC) VISIBLE,
  INDEX `fk_Documentos_HistoricoPunicoes2_idx` (`HistoricoPunicoes_IdHistoricoPunicoes1` ASC) VISIBLE,
  INDEX `fk_Documentos_HistoricoDeExameMedico1_idx` (`HistoricoDeExameMedico_IdHistoricoDeExameMedico` ASC, `HistoricoDeExameMedico_Funcionario_IdFuncionario` ASC, `HistExameMedico_Func_ColabUniforme_IdCola` ASC) VISIBLE,
  CONSTRAINT `fk_Documentos_HistoricoDeFalta1`
    FOREIGN KEY (`HistoricoDeFalta_IdHistoricoDeFalta`)
    REFERENCES `Sistema`.`HistoricoDeFalta` (`IdHistoricoDeFalta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Documentos_AfastamentoMedico1`
    FOREIGN KEY (`AfastamentoMedico_IdAfastamentoMedico`)
    REFERENCES `Sistema`.`AfastamentoMedico` (`IdAfastamentoMedico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Documentos_HistoricoPunicoes2`
    FOREIGN KEY (`HistoricoPunicoes_IdHistoricoPunicoes1`)
    REFERENCES `Sistema`.`HistoricoPunicoes` (`IdHistoricoPunicoes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Documentos_HistoricoDeExameMedico1`
    FOREIGN KEY (`HistoricoDeExameMedico_IdHistoricoDeExameMedico` , `HistoricoDeExameMedico_Funcionario_IdFuncionario` , `HistExameMedico_Func_ColabUniforme_IdCola`)
    REFERENCES `Sistema`.`HistoricoDeExameMedico` (`IdHistoricoDeExameMedico` , `Funcionario_IdFuncionario` , `Funcionario_ColaboradorUniforme_IdColaborador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`Uniforme`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`Uniforme` (
  `IdUniforme` INT NOT NULL,
  `Descricao` VARCHAR(45) NULL,
  `DataCompra` DATETIME NULL,
  `Duracao` INT NULL,
  `DataInclusao` DATETIME NULL,
  `DataAtualizacao` DATETIME NULL,
  PRIMARY KEY (`IdUniforme`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`FuncionarioUniforme`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`FuncionarioUniforme` (
  `IdFuncionario` INT NOT NULL,
  `IdUniforme` INT NULL,
  `DataEmprestimo` DATETIME NULL,
  `Uniforme_IdUniforme` INT NOT NULL,
  `Funcionario_IdFuncionario` INT NOT NULL,
  `Funcionario_ColaboradorUniforme_IdColaborador` INT NOT NULL,
  PRIMARY KEY (`IdFuncionario`),
  INDEX `fk_FuncionarioUniforme_Uniforme1_idx` (`Uniforme_IdUniforme` ASC) VISIBLE,
  INDEX `fk_FuncionarioUniforme_Funcionario1_idx` (`Funcionario_IdFuncionario` ASC, `Funcionario_ColaboradorUniforme_IdColaborador` ASC) VISIBLE,
  CONSTRAINT `fk_FuncionarioUniforme_Uniforme1`
    FOREIGN KEY (`Uniforme_IdUniforme`)
    REFERENCES `Sistema`.`Uniforme` (`IdUniforme`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_FuncionarioUniforme_Funcionario1`
    FOREIGN KEY (`Funcionario_IdFuncionario` , `Funcionario_ColaboradorUniforme_IdColaborador`)
    REFERENCES `Sistema`.`Funcionario` (`IdFuncionario` , `ColaboradorUniforme_IdColaborador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`TipoDocumento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`TipoDocumento` (
  `IdTipoDocumento` INT NOT NULL,
  `Descricao` VARCHAR(45) NULL,
  `Documentos_IdDocumentos` INT NOT NULL,
  PRIMARY KEY (`IdTipoDocumento`, `Documentos_IdDocumentos`),
  INDEX `fk_TipoDocumento_Documentos1_idx` (`Documentos_IdDocumentos` ASC) VISIBLE,
  CONSTRAINT `fk_TipoDocumento_Documentos1`
    FOREIGN KEY (`Documentos_IdDocumentos`)
    REFERENCES `Sistema`.`Documentos` (`IdDocumentos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`TipoAfastamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`TipoAfastamento` (
  `IdTipoAfastamento` INT NOT NULL,
  `Descricao` VARCHAR(45) NULL,
  `AfastamentoMedico_IdAfastamentoMedico` INT NOT NULL,
  PRIMARY KEY (`IdTipoAfastamento`, `AfastamentoMedico_IdAfastamentoMedico`),
  INDEX `fk_TipoAfastamento_AfastamentoMedico1_idx` (`AfastamentoMedico_IdAfastamentoMedico` ASC) VISIBLE,
  CONSTRAINT `fk_TipoAfastamento_AfastamentoMedico1`
    FOREIGN KEY (`AfastamentoMedico_IdAfastamentoMedico`)
    REFERENCES `Sistema`.`AfastamentoMedico` (`IdAfastamentoMedico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`HistoricoDeFerias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`HistoricoDeFerias` (
  `IdHistoricoDeFerias` INT NOT NULL,
  `IdFuncionario` VARCHAR(45) NULL,
  `DataInicio` DATETIME NULL,
  `DataFim` DATETIME NULL,
  `PeriodoCompleto` DECIMAL(1) NULL,
  `DataInclusao` DATETIME NULL,
  `DataAtualizacao` DATETIME NULL,
  `Funcionario_IdFuncionario` INT NOT NULL,
  `Funcionario_ColaboradorUniforme_IdColaborador` INT NOT NULL,
  PRIMARY KEY (`IdHistoricoDeFerias`, `Funcionario_IdFuncionario`, `Funcionario_ColaboradorUniforme_IdColaborador`),
  INDEX `fk_HistoricoDeFerias_Funcionario1_idx` (`Funcionario_IdFuncionario` ASC, `Funcionario_ColaboradorUniforme_IdColaborador` ASC) VISIBLE,
  CONSTRAINT `fk_HistoricoDeFerias_Funcionario1`
    FOREIGN KEY (`Funcionario_IdFuncionario` , `Funcionario_ColaboradorUniforme_IdColaborador`)
    REFERENCES `Sistema`.`Funcionario` (`IdFuncionario` , `ColaboradorUniforme_IdColaborador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`HistoricoBeneficios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`HistoricoBeneficios` (
  `IdHistoricoPagamentoVAVR` INT NOT NULL,
  `IdTipoBeneficios` INT NULL,
  `IdFuncionario` INT NULL,
  `DataPagamento` DATETIME NULL,
  `DataInclusao` DATETIME NULL,
  `DataAtualizacao` DATETIME NULL,
  `Funcionario_IdFuncionario` INT NOT NULL,
  `Funcionario_ColaboradorUniforme_IdColaborador` INT NOT NULL,
  PRIMARY KEY (`IdHistoricoPagamentoVAVR`, `Funcionario_IdFuncionario`, `Funcionario_ColaboradorUniforme_IdColaborador`),
  INDEX `fk_HistoricoBeneficios_Funcionario1_idx` (`Funcionario_IdFuncionario` ASC, `Funcionario_ColaboradorUniforme_IdColaborador` ASC) VISIBLE,
  CONSTRAINT `fk_HistoricoBeneficios_Funcionario1`
    FOREIGN KEY (`Funcionario_IdFuncionario` , `Funcionario_ColaboradorUniforme_IdColaborador`)
    REFERENCES `Sistema`.`Funcionario` (`IdFuncionario` , `ColaboradorUniforme_IdColaborador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`TipoHistoricoBeneficio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`TipoHistoricoBeneficio` (
  `IdTipoHistoricoBeneficio` INT NOT NULL,
  `Descricao` VARCHAR(45) NULL,
  `HistoricoBeneficios_IdHistoricoPagamentoVAVR` INT NOT NULL,
  `HistoricoBeneficios_Funcionario_IdFuncionario` INT NOT NULL,
  `HistBeneficios_Func_ColabUniforme_IdColab` INT NOT NULL,
  PRIMARY KEY (`IdTipoHistoricoBeneficio`, `HistoricoBeneficios_IdHistoricoPagamentoVAVR`, `HistoricoBeneficios_Funcionario_IdFuncionario`, `HistBeneficios_Func_ColabUniforme_IdColab`),
  INDEX `fk_TipoHistoricoBeneficio_HistoricoBeneficios1_idx` (`HistoricoBeneficios_IdHistoricoPagamentoVAVR` ASC, `HistoricoBeneficios_Funcionario_IdFuncionario` ASC, `HistBeneficios_Func_ColabUniforme_IdColab` ASC) VISIBLE,
  CONSTRAINT `fk_TipoHistoricoBeneficio_HistoricoBeneficios1`
    FOREIGN KEY (`HistoricoBeneficios_IdHistoricoPagamentoVAVR` , `HistoricoBeneficios_Funcionario_IdFuncionario` , `HistBeneficios_Func_ColabUniforme_IdColab`)
    REFERENCES `Sistema`.`HistoricoBeneficios` (`IdHistoricoPagamentoVAVR` , `Funcionario_IdFuncionario` , `Funcionario_ColaboradorUniforme_IdColaborador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`HistoricoDeLocalTrabalho_has_Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`HistoricoDeLocalTrabalho_has_Funcionario` (
  `HistoricoDeLocalTrabalho_IdHistoricoDeLocalTrabalho` INT NOT NULL,
  `Funcionario_IdFuncionario` INT NOT NULL,
  `Funcionario_ColaboradorUniforme_IdColaborador` INT NOT NULL,
  PRIMARY KEY (`HistoricoDeLocalTrabalho_IdHistoricoDeLocalTrabalho`, `Funcionario_IdFuncionario`, `Funcionario_ColaboradorUniforme_IdColaborador`),
  INDEX `fk_HistoricoDeLocalTrabalho_has_Funcionario_Funcionario1_idx` (`Funcionario_IdFuncionario` ASC, `Funcionario_ColaboradorUniforme_IdColaborador` ASC) VISIBLE,
  INDEX `fk_HistoricoDeLocalTrabalho_has_Funcionario_HistoricoDeLoca_idx` (`HistoricoDeLocalTrabalho_IdHistoricoDeLocalTrabalho` ASC) VISIBLE,
  CONSTRAINT `fk_HistoricoDeLocalTrabalho_has_Funcionario_HistoricoDeLocalT1`
    FOREIGN KEY (`HistoricoDeLocalTrabalho_IdHistoricoDeLocalTrabalho`)
    REFERENCES `Sistema`.`HistoricoDeLocalTrabalho` (`IdHistoricoDeLocalTrabalho`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_HistoricoDeLocalTrabalho_has_Funcionario_Funcionario1`
    FOREIGN KEY (`Funcionario_IdFuncionario` , `Funcionario_ColaboradorUniforme_IdColaborador`)
    REFERENCES `Sistema`.`Funcionario` (`IdFuncionario` , `ColaboradorUniforme_IdColaborador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`Cliente_has_Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`Cliente_has_Funcionario` (
  `Cliente_IdCliente` INT NOT NULL,
  `Funcionario_IdFuncionario` INT NOT NULL,
  `Funcionario_ColaboradorUniforme_IdColaborador` INT NOT NULL,
  PRIMARY KEY (`Cliente_IdCliente`, `Funcionario_IdFuncionario`, `Funcionario_ColaboradorUniforme_IdColaborador`),
  INDEX `fk_Cliente_has_Funcionario_Funcionario1_idx` (`Funcionario_IdFuncionario` ASC, `Funcionario_ColaboradorUniforme_IdColaborador` ASC) VISIBLE,
  INDEX `fk_Cliente_has_Funcionario_Cliente1_idx` (`Cliente_IdCliente` ASC) VISIBLE,
  CONSTRAINT `fk_Cliente_has_Funcionario_Cliente1`
    FOREIGN KEY (`Cliente_IdCliente`)
    REFERENCES `Sistema`.`Cliente` (`IdCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cliente_has_Funcionario_Funcionario1`
    FOREIGN KEY (`Funcionario_IdFuncionario` , `Funcionario_ColaboradorUniforme_IdColaborador`)
    REFERENCES `Sistema`.`Funcionario` (`IdFuncionario` , `ColaboradorUniforme_IdColaborador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`Contratos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`Contratos` (
  `IdContrato` INT NOT NULL,
  `IdCliente` INT NULL,
  `PeriodoDe` DATETIME NULL,
  `PeriodoAte` DATETIME NULL,
  `Ativo` BIT NULL,
  `DataInclusao` DATETIME NULL,
  `DataAtualizacao` DATETIME NULL,
  `Cliente_IdCliente` INT NOT NULL,
  PRIMARY KEY (`IdContrato`),
  INDEX `fk_Contratos_Cliente1_idx` (`Cliente_IdCliente` ASC) VISIBLE,
  CONSTRAINT `fk_Contratos_Cliente1`
    FOREIGN KEY (`Cliente_IdCliente`)
    REFERENCES `Sistema`.`Cliente` (`IdCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`HistoricoDePrecos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`HistoricoDePrecos` (
  `IdHistoricoDePrecos` INT NOT NULL,
  `DataVencimento` DATETIME NULL,
  `IdContrato` INT NULL,
  `Valor` DECIMAL NULL,
  `DataInclusao` DATETIME NULL,
  `DataAtualizacao` DATETIME NULL,
  `Contratos_IdContrato` INT NOT NULL,
  PRIMARY KEY (`IdHistoricoDePrecos`),
  INDEX `fk_HistoricoDePrecos_Contratos1_idx` (`Contratos_IdContrato` ASC) VISIBLE,
  CONSTRAINT `fk_HistoricoDePrecos_Contratos1`
    FOREIGN KEY (`Contratos_IdContrato`)
    REFERENCES `Sistema`.`Contratos` (`IdContrato`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`TipoPerfil`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`TipoPerfil` (
  `IdPerfil` INT NOT NULL,
  `Descricao` VARCHAR(45) NULL,
  `PerfilAcesso_IdPerfilAcesso` INT NOT NULL,
  PRIMARY KEY (`IdPerfil`),
  INDEX `fk_TipoPerfil_PerfilAcesso1_idx` (`PerfilAcesso_IdPerfilAcesso` ASC) VISIBLE,
  CONSTRAINT `fk_TipoPerfil_PerfilAcesso1`
    FOREIGN KEY (`PerfilAcesso_IdPerfilAcesso`)
    REFERENCES `Sistema`.`PerfilAcesso` (`IdPerfilAcesso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sistema`.`Telas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sistema`.`Telas` (
  `IdTelas` INT NOT NULL,
  `Descricao` VARCHAR(45) NULL,
  `DataInclusao` DATETIME NULL,
  `Ativa` BIT NULL,
  `Telascol` VARCHAR(45) NULL,
  PRIMARY KEY (`IdTelas`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

ALTER TABLE enderecos
  DROP FOREIGN KEY fk_Enderecos_Funcionario1;

ALTER TABLE historicosalario
  DROP FOREIGN KEY fk_HistoricoSalario_Funcionario1;

alter table historicodepromocoes
  drop foreign key fk_HistoricoDePromocoes_Funcionario;

alter table historicodeexamemedico
  drop foreign key fk_HistoricoDeExameMedico_Funcionario1;

alter table historicodefalta
 drop foreign key fk_HistoricoDeFalta_Funcionario1;

alter table afastamentomedico
 drop foreign key fk_AfastamentoMedico_Funcionario1;

alter table historicopunicoes
 drop foreign key fk_HistoricoPunicoes_Funcionario1;

alter table funcionariouniforme
 drop foreign key fk_FuncionarioUniforme_Funcionario1;

alter table historicodeferias
 drop foreign key fk_HistoricoDeFerias_Funcionario1;

alter table historicobeneficios
 drop foreign key fk_HistoricoBeneficios_Funcionario1;

alter table historicodelocaltrabalho_has_funcionario
 drop foreign key fk_HistoricoDeLocalTrabalho_has_Funcionario_Funcionario1;

alter table cliente_has_funcionario
 drop foreign key fk_Cliente_has_Funcionario_Funcionario1;

alter table cargo 
 drop foreign key fk_Cargo_Funcionario1;
Drop table funcionario;

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
  `Ativo` BOOLEAN,
  `ColaboradorUniforme_IdColaborador` INT NOT NULL,
  `IdPerfilAcesso` INT NOT NULL,
  PRIMARY KEY (`IdFuncionario`, `ColaboradorUniforme_IdColaborador`, `IdPerfilAcesso`),
  INDEX `fk_Funcionario_PerfilAcesso1_idx` (`IdPerfilAcesso` ASC) VISIBLE,
  CONSTRAINT `fk_Funcionario_PerfilAcesso1`
    FOREIGN KEY (`IdPerfilAcesso`)
    REFERENCES `Sistema`.`PerfilAcesso` (`IdPerfilAcesso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

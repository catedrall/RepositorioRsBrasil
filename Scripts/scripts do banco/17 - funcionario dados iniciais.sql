CREATE TABLE `sistema`.`funcionariodadosiniciais` (
  `Id` INT NOT NULL,
  `IdFuncionario` INT NULL,
  `SalarioInicial` DECIMAL(5,2) NULL,
  `Cargo` VARCHAR(45) NULL,
  `DiaExame` DATE NULL,
  `HorasSemanais` INT NULL,
  `HorasMensais` INT NULL,
  `Local` VARCHAR(45) NULL,
  `Departamento` VARCHAR(45) NULL,
  `Setor` VARCHAR(45) NULL,
  PRIMARY KEY (`Id`),
  INDEX `IdFuncionario_idx` (`IdFuncionario` ASC) VISIBLE,
  CONSTRAINT `Funcionario`
    FOREIGN KEY (`IdFuncionario`)
    REFERENCES `sistema`.`funcionario` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

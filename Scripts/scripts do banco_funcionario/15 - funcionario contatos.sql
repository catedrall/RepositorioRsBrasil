CREATE TABLE `sistema`.`funcionariocontatos` (
  `Id` INT NOT NULL,
  `IdFuncionario` INT NULL,
  `TipoContato` VARCHAR(45) NULL,
  `DadosContato` VARCHAR(45) NULL,
  `Observacoes` VARCHAR(455) NULL,
  PRIMARY KEY (`Id`),
  INDEX `IdFuncionario_idx` (`IdFuncionario` ASC) VISIBLE,
  CONSTRAINT `IdFuncionario`
    FOREIGN KEY (`IdFuncionario`)
    REFERENCES `sistema`.`funcionario` (`IdFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
COMMENT = '	';

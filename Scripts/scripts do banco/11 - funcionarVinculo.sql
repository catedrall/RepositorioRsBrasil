CREATE TABLE `sistema`.`funcionariovinculo` (
  `idFuncionarioVinculo` INT NOT NULL,
  `idFuncionario` INT NULL,
  `valeTransporte` TINYINT NULL,
  `Linha1` VARCHAR(45) NULL,
  `Valor1` DECIMAL(4,2) NULL,
  `Linha2` VARCHAR(45) NULL,
  `Valor2` DECIMAL(4,2) NULL,
  `PrimeiroEmprego` TINYINT NULL,
  PRIMARY KEY (`idFuncionarioVinculo`),
  INDEX `Vinculo_X_Funcionario_idx` (`idFuncionario` ASC) VISIBLE,
  CONSTRAINT `Vinculo_X_Funcionario`
    FOREIGN KEY (`idFuncionario`)
    REFERENCES `sistema`.`funcionario` (`IdFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

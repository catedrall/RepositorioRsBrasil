CREATE TABLE `sistema`.`funcionariodependente` (
  `idFuncionarioDependente` INT NOT NULL,
  `IdFuncionario` INT NULL,
  `tipo` INT NULL,
  `Nome` VARCHAR(100) NULL,
  `dataNascimento` DATE NULL,
  `cpf` VARCHAR(11) NULL,
  PRIMARY KEY (`idFuncionarioDependente`),
  INDEX `idFuncionario_x_Dependente_idx` (`IdFuncionario` ASC) VISIBLE,
  CONSTRAINT `idFuncionario_x_Dependente`
    FOREIGN KEY (`IdFuncionario`)
    REFERENCES `sistema`.`funcionario` (`IdFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
COMMENT = '							';

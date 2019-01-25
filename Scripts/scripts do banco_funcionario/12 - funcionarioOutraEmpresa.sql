CREATE TABLE `sistema`.`funcionariooutraempresa` (
  `idfuncionarioOutraEmpresa` INT NOT NULL,
  `IdFuncionario` INT NULL,
  `RazaoSocial` VARCHAR(200) NULL,
  `CNPJ` VARCHAR(14) NULL,
  `remuneracao` DECIMAL(6,2) NULL,
  `Observacao` TEXT NULL,
  PRIMARY KEY (`idfuncionarioOutraEmpresa`),
  INDEX `OutroEmpresa_x_funcionario_idx` (`IdFuncionario` ASC) VISIBLE,
  CONSTRAINT `OutroEmpresa_x_funcionario`
    FOREIGN KEY (`IdFuncionario`)
    REFERENCES `sistema`.`funcionario` (`IdFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `sistema`.`funcionarioextrangeiro` (
  `idfuncionarioExtrangeiro` INT NOT NULL,
  `idfuncionario` INT NULL,
  `dataChegadaBrasil` DATE NULL,
  `dataNaturalizacao` DATE NULL,
  `CasadoBrasileiro` TINYINT NULL,
  `FilhoBrasileiro` TINYINT NULL,
  `funcionarioExtrangeirocol` VARCHAR(45) NULL,
  PRIMARY KEY (`idfuncionarioExtrangeiro`),
  INDEX `idextrangeiro_X_funcionario_idx` (`idfuncionario` ASC) VISIBLE,
  CONSTRAINT `idextrangeiro_X_funcionario`
    FOREIGN KEY (`idfuncionario`)
    REFERENCES `sistema`.`funcionario` (`IdFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

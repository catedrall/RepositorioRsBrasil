
alter table sistema.funcionario drop column cpf;
alter table sistema.funcionario drop column rg;
alter table sistema.funcionario drop column carteiratrabalho;
alter table sistema.funcionario drop column carteiramotorista;
alter table sistema.funcionario add IdFuncionarioDocumento int;


CREATE TABLE `sistema`.`funcionariodocumento` (
  `idfuncionarioDocumento` INT NOT NULL,
  `cpf` VARCHAR(11) NULL,
  `pispasef` VARCHAR(45) NULL,
  `rg` VARCHAR(12) NULL,
  `orgaoemissor` VARCHAR(10) NULL,
  `emissao` DATE NULL,
  `carteiradetrabalho` VARCHAR(20) NULL,
  `serie` VARCHAR(10) NULL,
  `uf` VARCHAR(2) NULL,
  `tituloeleitoral` VARCHAR(20) NULL,
  `zona` VARCHAR(10) NULL,
  `secao` VARCHAR(10) NULL,
  `cnh` VARCHAR(20) NULL,
  `categoriacng` VARCHAR(2) NULL,
  `dataprimeirahabilitacao` DATE NULL,
  `dataexpedicaocng` DATE NULL,
  `datavalidade` DATE NULL,
  `reservista` VARCHAR(20) NULL,
  `serviuexercito` TINYINT NULL,
  `categoriaexercito` VARCHAR(20) NULL,
  INDEX `idfuncionario_idx` (`idfuncionarioDocumento` ASC) VISIBLE,
  CONSTRAINT `idfuncionario_x_documentos`
    FOREIGN KEY (`idfuncionarioDocumento`)
    REFERENCES `sistema`.`funcionario` (`IdFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

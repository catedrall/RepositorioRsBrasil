
alter table sistema.enderecos drop foreign key fk_Enderecos_Cliente1;
alter table sistema.tipodeendereços drop foreign key fk_TipoDeEndereços_Enderecos1;
drop table sistema.enderecos;

CREATE TABLE `sistema`.`enderecos` (
  `idenderecos` INT NOT NULL,
  `idclientefuncionario` INT NULL,
  `residenciapropria` TINYINT NULL,
  `cep` VARCHAR(9) NULL,
  `logradouro` VARCHAR(100) NULL,
  `numero` VARCHAR(5) NULL,
  `complemento` VARCHAR(45) NULL,
  `bairro` VARCHAR(70) NULL,
  `cidade` VARCHAR(70) NULL,
  `uf` VARCHAR(2) NULL,
  `pais` VARCHAR(30) NULL,
  PRIMARY KEY (`idenderecos`));



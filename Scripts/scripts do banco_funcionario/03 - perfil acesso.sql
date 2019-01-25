alter table sistema.tipoperfil
  drop foreign key fk_TipoPerfil_PerfilAcesso1;

alter table sistema.tipoperfil
	drop column PerfilAcesso_IdPerfilAcesso;


Insert into sistema.tipoperfil (idperfil, descricao) values (1, 'Administrador');
Insert into sistema.tipoperfil (idperfil, descricao) values (2, 'Operador');

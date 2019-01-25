alter table sistema.telas
	drop column telascol;

alter table sistema.telas
	add column IdTelaPai int;
    
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (1, 'Administrador', sysdate(), 1, null);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (2, 'Funcionario', sysdate(), 1, null);
	
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (3, 'Relatórios', sysdate(), 1, null);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (4, 'Cadastro', sysdate(), 1, null);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (5, 'Cliente', sysdate(), 1, null);

-- menu administrador
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (6, 'Telas', sysdate(), 1, 1);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (7, 'Tipo Perfil', sysdate(), 1, 1);
    
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (8, 'Perfil Acesso', sysdate(), 1, 1);
    
-- Menu Funcionario
    
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (9, 'Cadastro Funcionario', sysdate(), 1, 2);
    
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (10, 'Uniforme', sysdate(), 1, 2);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (11, 'Afastamento', sysdate(), 1, 2);
    
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (12, 'Exames', sysdate(), 1, 2);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (13, 'Cargo', sysdate(), 1, 2);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (14, 'Local De Trabalho', sysdate(), 1, 2);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (15, 'Férias', sysdate(), 1, 2);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (16, 'Beneficios', sysdate(), 1, 2);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (17, 'Punições', sysdate(), 1, 2);
            
--  menu relatorios
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (18, 'Funcionario', sysdate(), 1, 3);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (19, 'Faltas', sysdate(), 1, 3);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (20, 'Beneficios x Funcionario', sysdate(), 1, 3);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (21, 'Afastamento', sysdate(), 1, 3);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (22, 'Funcionario x Local de Trabalho', sysdate(), 1, 3);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (23, 'Histórico de Salário', sysdate(), 1, 3);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (24, 'Funcionario x Afastamento', sysdate(), 1, 3);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (25, 'Contrato Clientes', sysdate(), 1, 3);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (26, 'Cliente valores', sysdate(), 1, 3);
            
-- menu cadastro
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (27, 'Funcionario', sysdate(), 1, 4);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (28, 'Tipo Funcionario', sysdate(), 1, 4);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (29, 'Cargo', sysdate(), 1, 4);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (30, 'Tipo de documento', sysdate(), 1, 4);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (31, 'Afastamento', sysdate(), 1, 4);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (32, 'Beneficios', sysdate(), 1, 4);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (33, 'Uniforme', sysdate(), 1, 4);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (34, 'Tipo de endereço', sysdate(), 1, 4);
            
-- menu cliente

insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (35, 'Cliente', sysdate(), 1, 5);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (36, 'Contrato', sysdate(), 1, 5);
            
insert into sistema.telas (idtelas, descricao, datainclusao, ativa, idtelapai)
			values (37, 'Funcionario x Cliente', sysdate(), 1, 5);
            

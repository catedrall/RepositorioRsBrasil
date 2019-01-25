alter table sistema.cliente 
modify column telefone varchar(11);

alter table sistema.cliente change id id int(10)auto_increment;
ALTER table sistema.funcionario add column dataAdmissao date;
ALTER table sistema.funcionario add column ultimoPeriodoFeriasInicio date;
ALTER table sistema.funcionario add column ultimoPeriodoFeriasFim date;
ALTER table sistema.funcionario add column FeriasGozadas int;
ALTER table sistema.funcionario add column FeriasGozar int;
ALTER table sistema.funcionario add column DataLimiteFerias date;

alter table sistema.historicodeferias drop column PeriodoCompleto;
alter table sistema.historicodeferias add column NumeroFerias int;
alter table sistema.historicodeferias add column QtdDias int;
alter table sistema.historicodeferias add column PeriodoAquisitivoInicio date;
alter table sistema.historicodeferias add column PeriodoAquisitivoFim date;


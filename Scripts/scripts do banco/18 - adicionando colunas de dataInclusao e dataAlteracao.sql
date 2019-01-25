alter table sistema.afastamentomedico rename column DataAtuaizacao to DataAlteracao;

alter table sistema.cargo drop foreign key fk_Cargo_HistoricoDePromocoes1;
alter table sistema.cargo drop column HistoricoDePromocoes_IdHistoricoDePromocoes;
alter table sistema.cargo add DataInclusao Date;
alter table sistema.cargo add DataAlteracao Date;

alter table sistema.cliente drop column Clientecol;
alter table sistema.cliente add DataInclusao Date;
alter table sistema.cliente add DataAlteracao Date;

alter table sistema.contratos drop foreign key fk_Contratos_Cliente1;
alter table sistema.contratos drop column cliente_idcliente;

alter table sistema.documentos add DataInclusao Date;
alter table sistema.documentos add DataAlteracao Date;

alter table sistema.enderecos add DataInclusao Date;
alter table sistema.enderecos add DataAlteracao Date;

alter table sistema.funcionario rename column DataAtualizacao to DataAlteracao;

alter table sistema.funcionariocontatos add DataInclusao Date;
alter table sistema.funcionariocontatos add DataAlteracao Date;

alter table sistema.funcionariodependente add DataInclusao Date;
alter table sistema.funcionariodependente add DataAlteracao Date;

alter table sistema.funcionariodocumento add DataInclusao Date;
alter table sistema.funcionariodocumento add DataAlteracao Date;

alter table sistema.funcionariooutraempresa add DataInclusao Date;
alter table sistema.funcionariooutraempresa add DataAlteracao Date;

alter table sistema.funcionariouniforme add DataInclusao Date;
alter table sistema.funcionariouniforme add DataAlteracao Date;

alter table sistema.funcionariovinculo add DataInclusao Date;
alter table sistema.funcionariovinculo add DataAlteracao Date;

alter table sistema.historicobeneficios rename column DataAtualizacao to DataAlteracao;

alter table sistema.historicodeexamemedico rename column DataAtualizacao to DataAlteracao;

alter table sistema.historicodefalta rename column DataAtualizacao to DataAlteracao;

alter table sistema.historicodeferias rename column DataAtualizacao to DataAlteracao;

alter table sistema.historicodelocaltrabalho rename column DataAtualizacao to DataAlteracao;

alter table sistema.historicodeprecos rename column DataAtualizacao to DataAlteracao;

alter table sistema.historicodepromocoes rename column DataAtualizacao to DataAlteracao;

alter table sistema.historicopunicoes rename column DataAtualizacao to DataAlteracao;

alter table sistema.historicosalario rename column DataAtualizacao to DataAlteracao;

alter table sistema.telas add DataAlteracao Date;

alter table sistema.tipoafastamento add DataInclusao Date;
alter table sistema.tipoafastamento add DataAlteracao Date;

alter table sistema.tipodeenderecos add DataInclusao Date;
alter table sistema.tipodeenderecos add DataAlteracao Date;

alter table sistema.tipodocumento add DataInclusao Date;
alter table sistema.tipodocumento add DataAlteracao Date;

alter table sistema.tipohistoricobeneficio add DataInclusao Date;
alter table sistema.tipohistoricobeneficio add DataAlteracao Date;

alter table sistema.tipoperfil add DataInclusao Date;
alter table sistema.tipoperfil add DataAlteracao Date;

alter table sistema.uniforme rename column DataAtualizacao to DataAlteracao;

alter table sistema.funcionariodadosiniciais add DataInclusao Date;
alter table sistema.funcionariodadosiniciais add DataAlteracao Date;



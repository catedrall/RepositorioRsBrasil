alter table sistema.afastamentomedico rename column idAfastamentoMedico to Id;
alter table sistema.afastamentomedico drop foreign key fk_AfastamentoMedico_Funcionario1;
alter table sistema.afastamentomedico drop column Funcionario_IdFuncionario;
alter table sistema.afastamentomedico drop column Funcionario_ColaboradorUniforme_IdColaborador;

alter table sistema.Cargo rename column IdCargo to Id;
alter table sistema.cargo drop foreign key fk_Cargo_Funcionario1;
alter table sistema.cargo drop column Funcionario_IdFuncionario;
alter table sistema.cargo drop column Funcionario_ColaboradorUniforme_IdColaborador;

alter table sistema.cliente rename column IdCliente to Id;

alter table sistema.cliente_has_funcionario drop foreign key fk_Cliente_has_Funcionario_Cliente1;
alter table sistema.cliente_has_funcionario drop column Funcionario_ColaboradorUniforme_IdColaborador;

alter table sistema.contratos rename column idcontrato to Id;
alter table sistema.cliente_has_funcionario drop foreign key fk_Cliente_has_Funcionario_Funcionario1;
alter table sistema.cliente_has_funcionario drop column Cliente_idCLiente;

alter table sistema.documentos rename column IdDocumentos to Id;
alter table sistema.documentos drop foreign key fk_Documentos_HistoricoDeFalta1;
alter table sistema.documentos drop column HistoricoDeFalta_IdHistoricoDeFalta;
alter table sistema.documentos drop foreign key fk_Documentos_AfastamentoMedico1;
alter table sistema.documentos drop column AfastamentoMedico_idAfastamentoMedico;
alter table sistema.documentos drop foreign key fk_Documentos_HistoricoPunicoes2;
alter table sistema.documentos drop column HistoricoPunicoes_idHistoricoPunicoes1;
alter table sistema.documentos drop foreign key fk_Documentos_HistoricoDeExameMedico1;
alter table sistema.documentos drop column HistoricoDeExameMedico_idHistoricoDeExameMedico;
alter table sistema.documentos drop column HistoricoDeExameMedico_Funcionario_IdFuncionario;
alter table sistema.documentos drop column HistExameMedico_Func_ColabUniforme_IdCola;

alter table sistema.enderecos rename column IdEnderecos to Id;

alter table sistema.funcionario rename column IdFuncionario to Id;
alter table sistema.historicosalario drop foreign key fk_HistoricoSalario_Funcionario1;
alter table sistema.funcionario drop column ColaboradorUniforme_IdColaborador;
alter table sistema.funcionario drop foreign key fk_Funcionario_PerfilAcesso1;
alter table sistema.funcionario drop column PerfilAcesso_IdPerfilAcesso;

alter table sistema.funcionariodependente rename column IdFuncionarioDependente to Id;

alter table sistema.funcionariodocumento rename column idFuncionarioDocumento to Id;

alter table sistema.funcionariooutraempresa rename column idfuncionariooutraempresa to Id;

alter table sistema.funcionariouniforme drop foreign key fk_FuncionarioUniforme_Uniforme1;
alter table sistema.funcionariouniforme drop column Uniforme_Iduniforme;
alter table sistema.funcionariouniforme drop foreign key fk_FuncionarioUniforme_Funcionario1;
alter table sistema.funcionariouniforme drop column Funcionario_IdFuncionario;
alter table sistema.funcionariouniforme drop column Funcionario_ColaboradorUniforme_IdColaborador;

alter table sistema.funcionariovinculo rename column idfuncionarioVinculo to Id;

alter table sistema.historicobeneficios rename column idHistoricoPagamentoVAVR to Id;
alter table sistema.historicobeneficios drop foreign key fk_HistoricoBeneficios_Funcionario1;
alter table sistema.tipohistoricobeneficio drop foreign key fk_TipoHistoricoBeneficio_HistoricoBeneficios1;
alter table sistema.historicobeneficios drop column funcionario_idfuncionario;
alter table sistema.historicobeneficios drop column funcionario_colaboradoruniforme_idcolaborador;

alter table sistema.historicodeexamemedico rename column idhistoricodeexamemedico to Id;
alter table sistema.historicodeexamemedico drop foreign key fk_HistoricoDeExameMedico_Funcionario1;
alter table sistema.historicodeexamemedico drop column funcionario_idfuncionario;
alter table sistema.historicodeexamemedico drop column funcionario_colaboradoruniforme_idcolaborador;

alter table sistema.historicodefalta rename column idhistoricodefalta to Id;
alter table sistema.historicodefalta drop foreign key fk_HistoricoDeFalta_Funcionario1;
alter table sistema.historicodefalta drop column funcionario_idfuncionario;
alter table sistema.historicodefalta drop column funcionario_colaboradoruniforme_idcolaborador;

alter table sistema.historicodeferias rename column idhistoricodeferias to Id;
alter table sistema.historicodeferias drop foreign key fk_HistoricoDeFerias_Funcionario1;
alter table sistema.historicodeferias drop column funcionario_idfuncionario;
alter table sistema.historicodeferias drop column funcionario_colaboradoruniforme_idcolaborador;

alter table sistema.historicodelocaltrabalho rename column idhistoricodelocaltrabalho to Id;

alter table sistema.historicodeprecos rename column idhistoricodeprecos to Id;
alter table sistema.historicodeprecos drop foreign key fk_HistoricoDePrecos_Contratos1;
alter table sistema.historicodeprecos drop column Contratos_IdContrato;

alter table sistema.historicodepromocoes rename column idhistoricodepromocoes to Id;
alter table sistema.historicodepromocoes drop foreign key fk_HistoricoDePromocoes_Funcionario;
alter table sistema.historicodepromocoes drop column Funcionario_IdFuncionario;

alter table sistema.historicopunicoes rename column idhistoricopunicoes to Id;
alter table sistema.historicopunicoes drop foreign key fk_HistoricoPunicoes_Funcionario1;
alter table sistema.historicopunicoes drop column Funcionario_IdFuncionario;
alter table sistema.historicopunicoes drop column Funcionario_ColaboradorUniforme_IdColaborador;

alter table sistema.historicosalario rename column idhistoricosalario to Id;
alter table sistema.historicosalario drop column Funcionario_IdFuncionario;
alter table sistema.historicosalario drop column Funcionario_ColaboradorUniforme_IdColaborador;

alter table sistema.perfilacesso rename column idperfilacesso to Id;

alter table sistema.telas rename column idtelas to Id;

alter table sistema.tipoafastamento rename column idtipoafastamento to Id;
alter table sistema.tipoafastamento drop foreign key fk_TipoAfastamento_AfastamentoMedico1;
alter table sistema.tipoafastamento drop column afastamentoMedico_IdAfastamentoMedico;

rename table sistema.tipodeendereços to sistema.tipodeenderecos;
alter table sistema.tipodeenderecos rename column idtipodeendereços to Id;
alter table sistema.tipodeenderecos drop column enderecos_idenderecos;

alter table sistema.tipodocumento rename column idtipodocumento to Id;
alter table sistema.tipodocumento drop foreign key fk_TipoDocumento_Documentos1;
alter table sistema.tipodocumento drop column Documentos_IdDocumentos;

alter table sistema.tipohistoricobeneficio rename column idtipohistoricobeneficio to Id;
alter table sistema.tipohistoricobeneficio drop column historicobeneficios_idhistoricoPagamentoVAVR;
alter table sistema.tipohistoricobeneficio drop column historicobeneficios_funcionario_idfuncionario;
alter table sistema.tipohistoricobeneficio drop column histbeneficios_func_colabuniforme_idcolab;

alter table sistema.tipoperfil rename column idperfil to Id;

alter table sistema.uniforme rename column iduniforme to Id;


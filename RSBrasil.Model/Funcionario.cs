using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RSBrasil.Model
{
    public class Funcionario
    {
        public string CarteiraMotorista { get; set; }
        public string CarteiraTrabalho { get; set; }
        public string Celular { get; set; }
        public string CPF { get; set; }
        public string Login { get; set; }
        public string NomeFuncionario { get; set; }
        public string RG { get; set; }
        public string Senha { get; set; }
        public string Telefone { get; set; }
        public DateTime? DataAtualizacao { get; set; }
        public DateTime? DataInclusao { get; set; }
        public DateTime? DataNascimento { get; set; }
        public int? ColaboradorUniforme_IdColaborador { get; set; }
        public int? IdCargo { get; set; }
        public int? IdEndereco { get; set; }
        public int? IdFuncionario { get; set; }
        public int? IdPerfilAcesso { get; set; }
    }
}

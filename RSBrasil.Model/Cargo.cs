using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RSBrasil.Model
{
    public class Cargo
    {
        public string Descricao { get; set; }
        public int? Funcionario_ColaboradorUniforme_IdColaborador { get; set; }
        public int? Funcionario_IdFuncionario { get; set; }
        public int? HistoricoDePromocoes_IdHistoricoDePromocoes { get; set; }
        public int? IdCargo { get; set; }
    }
}

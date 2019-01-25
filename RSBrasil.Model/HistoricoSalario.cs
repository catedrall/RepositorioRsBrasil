using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RSBrasil.Model
{
    public class HistoricoSalario
    {
        public DateTime? DataAtualizacao { get; set; }
        public DateTime? DataInclusao { get; set; }
        public DateTime? DataPagamento { get; set; }
        public int? Funcionario_ColaboradorUniforme_IdColaborador { get; set; }
        public int? Funcionario_IdFuncionario { get; set; }
        public int? IdFuncionario { get; set; }
        public int? IdHistoricoSalario { get; set; }
        public double? Salario { get; set; }
    }
}

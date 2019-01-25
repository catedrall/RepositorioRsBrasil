using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RSBrasil.Model
{
    public class Contratos
    {
        public DateTime? DataAtualizacao { get; set; }
        public DateTime? DataInclusao { get; set; }
        public DateTime? PeriodoAte { get; set; }
        public DateTime? PeriodoDe { get; set; }
        public int? Ativo { get; set; }
        public int? Cliente_IdCliente { get; set; }
        public int? IdCliente { get; set; }
        public int? IdContrato { get; set; }
    }
}

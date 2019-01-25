using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RSBrasil.Model
{
    public class Uniforme
    {
        public string Descricao { get; set; }
        public DateTime? DataAtualizacao { get; set; }
        public DateTime? DataCompra { get; set; }
        public DateTime? DataInclusao { get; set; }
        public int? Duracao { get; set; }
        public int? IdUniforme { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RSBrasil.Model
{
    public class PerfilAcesso
    {
        public string DataAlteracao { get; set; }
        public DateTime? DataInclusao { get; set; }
        public int? IdPerfil { get; set; }
        public int? IdPerfilAcesso { get; set; }
        public int? IdTela { get; set; }
    }
}

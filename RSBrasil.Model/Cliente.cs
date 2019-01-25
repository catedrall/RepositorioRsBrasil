using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RSBrasil.Model
{
    public class Cliente
    {
        public string Clientecol { get; set; }
        public string CNPJ { get; set; }
        public string Contato { get; set; }
        public string Email { get; set; }
        public string NomeFantasia { get; set; }
        public string RazaoSocial { get; set; }
        public string Telefone { get; set; }
        public int? IdCliente { get; set; }
        public int? IdContrato { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RSBrasil.Model;
using RSBrasil.Data;

namespace RSBrasil.Business
{
    public class Login
    {
        public List<Telas> VerificaLogin(string usuario, string senha)
        {
            var Validacao = new Data.Login();
            var funcionario = Validacao.VerificaLogin(usuario, senha);

            if (funcionario.IdPerfilAcesso > 0)
            {
                return Validacao.GetTelasPerfilAcesso(funcionario.IdPerfilAcesso.Value);
            }
            else
            {
                return new List<Telas>();
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Console._1_TipoReferencia
{
    internal class PessoaJuridica : Pessoa
    {
        public string Cnpj { get; set; }

        public PessoaJuridica(string nome, string sobrenome, string cnpj) : base(nome, sobrenome)
        {
            this.Cnpj = cnpj;
        }

        public override string Saudacao()
        {
            return base.Saudacao() + " - " + this.Cnpj;
        }
    }
}

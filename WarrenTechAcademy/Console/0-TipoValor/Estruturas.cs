using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Console._0_TipoValor
{
    internal class Estruturas
    {
        public static void Executa()
        {
            PessoaClasse p1 = new PessoaClasse();
            p1.Nome = "Chimbinha";
            PessoaStruct p2 = new PessoaStruct();
            p2.Nome = "Jojo";
            System.Console.WriteLine(p1.Nome);
            System.Console.WriteLine(p2.Nome);

            PessoaClasse p3 = new PessoaClasse();
            p3 = p1;
            PessoaStruct p4 = new PessoaStruct();
            p4 = p2;
            System.Console.WriteLine(p3.Nome);
            System.Console.WriteLine(p4.Nome);
            p1.Nome = "Chimbinha Melhor guitarrista do Mundo";
            p2.Nome = "Jojo melhor dancarina > Shakira";
            System.Console.WriteLine("Valores alterados");
            System.Console.WriteLine(p1.Nome);
            System.Console.WriteLine(p2.Nome); 
            System.Console.WriteLine(p3.Nome);
            System.Console.WriteLine(p4.Nome);




        }
    }
    struct PessoaStruct
    {
        public string Nome { get; set; }
        public string Sobrenome { get; set; }
        public byte Idade { get; set; }
    }
    class PessoaClasse
    {
        public string Nome { get; set; }
        public string Sobrenome { get; set; }
        public byte Idade { get; set; }
    }
}

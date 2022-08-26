using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Console._99_Exercicios
{
    internal class _000Cadastro
    {
        // Crie um sistema de cadastro de pessoas
        // 1 - O sistema deve exibir uma mensagem de boas vindas
        // 2 - Deve solicitar as seguintes informações ao usuário:
        //      Nome, Sobrenome e Idade
        // 3 - Ao fim da execução, deve exibir o nome completo e idade, juntamente com mensagem
        // de despedida.
        public void Executa()
        {
            System.Console.WriteLine("Bem-vindo ao sistema de cadatro de pessoas");
            System.Console.Write("Digite seu nome: ");
            string nome = System.Console.ReadLine();
            System.Console.Write("Digite seu sobrenome: ");
            string sobrenome = System.Console.ReadLine();
            System.Console.Write("Digite seu idade: ");
            byte idade = Byte.Parse(System.Console.ReadLine());
            System.Console.WriteLine("Obrigado, " + nome + " " + sobrenome + ",(" + idade + ")");
        }
    }
}

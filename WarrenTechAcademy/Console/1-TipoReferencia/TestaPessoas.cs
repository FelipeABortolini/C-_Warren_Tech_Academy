using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Console._1_TipoReferencia
{
    internal class TestaPessoas
    {
        public static void ExecutaPessoa()
        {
            Pessoa p = new Pessoa("Maykon", "Granemann");
            Pessoa pf = new PessoaFisica("N", "S", "cpf");
            Pessoa pj = new PessoaJuridica("N", "S", "cnpj");

            PessoaFisica pf2 = (PessoaFisica)pf;
            PessoaJuridica pj2 = (PessoaJuridica)pj;

            BaseRepository repo = new BaseRepository();
            repo.Create(p);
            repo.Create(pf2);
            repo.Create(pj2);
            foreach (var pessoa in repo.Read())
            {
                System.Console.WriteLine(pessoa.Saudacao());
            }

            Produto prod1 = new Produto();
           
        }



        public static void ExecutaFisica()
        {
            PessoaFisica pessoaFisica = new PessoaFisica("Maykon", "Granemann", "05389977788");
            PessoaFisica pessoaFisica2 = new PessoaFisica("Jojo", "Do Calypso", "777777997979");

            PessoaFisicaRepository repository = new PessoaFisicaRepository();
            repository.Create(pessoaFisica2);
            string msg = repository.Create(pessoaFisica);
            System.Console.WriteLine(msg);

            List<PessoaFisica> pessoas = repository.Read();
            foreach (PessoaFisica p in pessoas)
            {
                System.Console.WriteLine(p.Saudacao());
            }
        }
        public static void ExecutaJuridica()
        {
            PessoaJuridica pessoaFisica = new PessoaJuridica("Warren", "Invest", "15.565.565/0001-35");
            PessoaJuridica pessoaFisica2 = new PessoaJuridica("XP", "Invest", "15.565.123/0001-88");

            PessoaJuridicaRepository repository = new PessoaJuridicaRepository();
            repository.Create(pessoaFisica2);
            string msg = repository.Create(pessoaFisica);
            System.Console.WriteLine(msg);

            List<PessoaJuridica> pessoas = repository.Read();
            foreach (PessoaJuridica p in pessoas)
            {
                System.Console.WriteLine(p.Saudacao());
            }
        }
    }
}

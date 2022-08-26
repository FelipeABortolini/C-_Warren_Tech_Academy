using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Console._0_TipoValor
{
    internal class TipoBooleano
    {
        public static void Executa()
        {
            bool gostaDeCalypso = true;
            Boolean naoGostaDeBaroes = false;

            bool emaior = 10>11;
            bool eigual = 10 + 11 == 21;
            if (emaior)
            {
                System.Console.WriteLine("É maior");
            }
            else
            {
                System.Console.WriteLine("É menor");
            }
        }

    }
}

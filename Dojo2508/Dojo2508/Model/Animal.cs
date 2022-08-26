using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dojo2508.Model
{
    internal class Animal : BaseModel
    {
        public string Especie { get; set; }
        public string Name { get; set; }
        public double Peso { get; set; }

        public override string ToString()
        {
            return $"Especie: {Especie}, Nome: {Name}, Peso: {Peso}";
        }
    }
}

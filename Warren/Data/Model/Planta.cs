using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.Model
{
    public class Planta : BaseModel
    {
        public string Nome { get; set; }
        public string Cor { get; set; }
        public string Tipo { get; set; }
    }
}

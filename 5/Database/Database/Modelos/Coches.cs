using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Database.Modelos
{
    public class Coche
    {
        public long id { get; set; }
        public string matricula { get; set; }
        public long idmarca { get; set; }
        public string color { get; set; }
        public decimal cilindrada { get; set; }
        public TipoCombustible tipocombustible { get; set; }
    }
}

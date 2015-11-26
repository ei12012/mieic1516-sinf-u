using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FirstREST.Lib_Primavera.Model
{
    public class Pagamento
    {
        public string codCliente { get; set; }
        public string codArtigo { get; set; }

        public DateTime adicionado { get; set; }
        public DateTime comprado { get; set; }
    }
}
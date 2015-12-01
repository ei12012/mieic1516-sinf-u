using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FirstREST.Lib_Primavera.View
{
    public class CarrinhoPagamento
    {
        public string cliente { get; set; }
        public string artigo { get; set; }
        public double preco { get; set; }
        public DateTime adicionado { get; set; }
    }
}
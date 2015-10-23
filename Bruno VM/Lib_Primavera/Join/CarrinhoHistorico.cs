using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FirstREST.Lib_Primavera.Join
{
    public class CarrinhoHistorico
    {
        public string cliente { get; set; }
        public string artigo { get; set; }
        public double preco { get; set; }
        public DateTime adicionado { get; set; }
        public DateTime comprado { get; set; }
    }
}
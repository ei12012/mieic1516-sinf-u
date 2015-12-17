using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FirstREST.Lib_Primavera.Model
{
    public class Carrinho
    {
        public string cliente { get; set; }
        public string artigo { get; set; }
        public string adicionado { get; set; }
        public string comprado { get; set; }
        public int remover { get; set; }
    }
}
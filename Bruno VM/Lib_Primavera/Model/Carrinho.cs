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
        public int plataforma { get; set; }
        public double preco { get; set; }
        public int stock { get; set; }
        public int vendidos { get; set; }
    }
}
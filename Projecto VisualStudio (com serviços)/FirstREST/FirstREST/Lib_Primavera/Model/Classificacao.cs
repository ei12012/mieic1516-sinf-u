using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FirstREST.Lib_Primavera.Model
{
    public class Classificacao
    {
        public string codArtigo { get; set; }
        public string codCliente { get; set; }

        public int valor { get; set; }
        public string comentario { get; set; }
    }
}
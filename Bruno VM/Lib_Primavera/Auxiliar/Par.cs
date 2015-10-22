using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FirstREST.Lib_Primavera.Auxiliar
{
    public class Par
    {
        public string var1 { get; set; }
        public string var2 { get; set; }

        public Par(string arg1, string arg2)
        {
            var1 = arg1;
            var2 = arg2;
        }
    }
}
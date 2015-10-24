using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FirstREST.Lib_Primavera.View
{
    public class AcessoLogin2
    {
        public string email { get; set; }
        public string password { get; set; }
        public string sexo { get; set; }
        public string contacto { get; set; }

        public string Morada
        {
            get;
            set;
        }

        public string CodCliente
        {
            get;
            set;
        }

        public string NomeCliente
        {
            get;
            set;
        }

        public string NumContribuinte
        {
            get;
            set;
        }

        public string Moeda
        {
            get;
            set;
        }
    }
}
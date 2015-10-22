using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using FirstREST.Lib_Primavera.Model;

namespace FirstREST.Controllers
{
    public class TestaController : ApiController
    {
        // localhost:49822/api/testa?morada=#&contri=#
        public IEnumerable<Lib_Primavera.Model.Cliente> Get(string morada, string contri)
        {
            Lib_Primavera.Auxiliar.Par listaParam = new Lib_Primavera.Auxiliar.Par(morada, contri);

            return Lib_Primavera.Integration.IntegracaoCliente.ListaClientes2(listaParam);
        }
    }
}

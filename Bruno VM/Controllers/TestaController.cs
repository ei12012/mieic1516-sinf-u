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
        //
        // GET: /Clientes/
        //public IEnumerable<Lib_Primavera.Model.Cliente> Get()
        //{
        //    return Lib_Primavera.PriIntegration.ListaClientes();
        //}

        //
        // GET: /Clientes/
        public IEnumerable<Lib_Primavera.Model.Cliente> Get(Lib_Primavera.Auxiliar.Par arg)
        {
            return Lib_Primavera.Integration.IntegracaoCliente.ListaClientes2(arg);
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using FirstREST.Lib_Primavera.Model;

namespace FirstREST.Controllers
{
    public class GenerosController : ApiController
    {
        //
        // GET: /Artigos/

        public IEnumerable<Lib_Primavera.Model.Genero> Get()
        {
            return Lib_Primavera.Integration.IntegracaoGenero.ListaGeneros();
        }

        // localhost:49822/api/generos?codartigo=#
        public List<Lib_Primavera.Model.Genero> Get(string codartigo)
        {
            List<Lib_Primavera.Model.Genero> lista = Lib_Primavera.Integration.IntegracaoGenero.ListaGenerosArtigos(codartigo);
            return lista;
            //return lista.ElementAt(0);
        }
    }
}

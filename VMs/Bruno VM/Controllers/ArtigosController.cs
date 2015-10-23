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
    public class ArtigosController : ApiController
    {
        //
        // GET: /Artigos/

        public IEnumerable<Lib_Primavera.Model.Artigo> Get()
        {
            return Lib_Primavera.Integration.IntegracaoArtigo.ListaArtigos();

        }

        // GET api/artigo/codartigo    
        public Artigo Get(string id)
        {
            Lib_Primavera.Model.Artigo artigo = Lib_Primavera.Integration.IntegracaoArtigo.GetArtigo(id);
            if (artigo == null)
            {
                throw new HttpResponseException(
                  Request.CreateResponse(HttpStatusCode.NotFound));
            }
            else
            {
                return artigo;
            }
        }

    }
}


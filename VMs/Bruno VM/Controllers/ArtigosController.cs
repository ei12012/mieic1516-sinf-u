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
        // GET: /api/artigos/
        public IEnumerable<Lib_Primavera.Model.Artigo> Get()
        {
            return Lib_Primavera.Integration.IntegracaoArtigo.ListaArtigos();

        }

        // GET: /api/artigos/A0001   
        public Artigo Get(string id)
        {
            List<Lib_Primavera.Model.Artigo> artigo = Lib_Primavera.Integration.IntegracaoArtigo.GetArtigo(id);

            if (artigo.Count() == 0)
            {
                throw new HttpResponseException(
                  Request.CreateResponse(HttpStatusCode.NotFound));
            }
            else
            {
                return artigo.ElementAt(0);
            }
        }

        // localhost:49822/api/artigos/
        /*
                {"CodArtigo" : "A0001",
                "Descricao" : "Grand Theft Auto V (PS3)",
                "Stock" : "20",
                "Moeda" : "EUR",
                "Preco" : "19.99",
                "Empresa" : "Rockstar Games",
                "Ano" : "2013",
                "Idade" : "18",
                "Oculto" : "true",
                "Visitas" : "0"
                }
         */
        public HttpResponseMessage Put(Lib_Primavera.Model.Artigo registo)
        {

            Lib_Primavera.Model.RespostaErro erro = new Lib_Primavera.Model.RespostaErro();

            try
            {
                erro = Lib_Primavera.Integration.IntegracaoArtigo.AlterarDadosMain(registo);
                if (erro.Erro == 0)
                {
                    return Request.CreateResponse(HttpStatusCode.OK, erro.Descricao);
                }
                else
                {
                    return Request.CreateResponse(HttpStatusCode.NotFound, erro.Descricao);
                }
            }

            catch (Exception exc)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, erro.Descricao);
            }
        }
    }
}


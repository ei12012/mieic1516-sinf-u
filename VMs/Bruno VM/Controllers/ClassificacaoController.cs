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
    public class ClassificacaoController : ApiController
    {
        // localhost:49822/api/classificacao?codartigo=#
        public IEnumerable<Lib_Primavera.View.ClassificacaoA> Get(string codartigo)
        {
            return Lib_Primavera.Integration.IntegracaoClassificacao.ListaClassificacoes(codartigo);
        }

        // localhost:49822/api/classificacao/
        /*
                {"codArtigo" : "A0003",
                "codCliente" : "C0002",
                "valor" : "81",
                "comentario" : "Fixe"
                }
         */
        public HttpResponseMessage Post(Lib_Primavera.Model.Classificacao cla)
        {
            Lib_Primavera.Model.RespostaErro erro = new Lib_Primavera.Model.RespostaErro();
            erro = Lib_Primavera.Integration.IntegracaoClassificacao.InsereClassificacao(cla);

            if (erro.Erro == 0)
            {
                var response = Request.CreateResponse(
                   HttpStatusCode.Created, cla);
                string uri = Url.Link("DefaultApi", new { CodCliente = cla.codArtigo });
                response.Headers.Location = new Uri(uri);
                return response;
            }

            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest);
            }

        }
    }
}

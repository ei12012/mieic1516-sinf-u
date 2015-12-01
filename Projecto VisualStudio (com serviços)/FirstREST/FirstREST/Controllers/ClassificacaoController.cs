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
        // localhost:49822/api/classificacao?codartigo=A0001
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

            try
            {
                erro = Lib_Primavera.Integration.IntegracaoClassificacao.InsereClassificacao(cla);
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

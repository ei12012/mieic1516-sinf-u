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
    public class DadosController : ApiController
    {
        // localhost:49822/api/dados/
        /*
                {"CodCliente" : "C0001",
                "NomeCliente" : "Bruno Moreira",
                "NumContribuinte" : "111111111",
                "Morada" : "Rua A",
                "Moeda" : "EUR",
                "contacto" : "111111111",
                "email" : "ei12012@fe.up.pt",
                "sexo" : "M",
                "password" : "pass"
                }
         */
        public HttpResponseMessage Post(Lib_Primavera.View.AcessoLogin2 registo)
        {
            Lib_Primavera.Model.RespostaErro erro = new Lib_Primavera.Model.RespostaErro();
            erro = Lib_Primavera.Integration.IntegracaoAcesso.AlterarDados(registo);

            if (erro.Erro == 0)
            {
                var response = Request.CreateResponse(
                   HttpStatusCode.Created, registo);
                string uri = Url.Link("DefaultApi", new { CodCliente = registo.CodCliente });
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

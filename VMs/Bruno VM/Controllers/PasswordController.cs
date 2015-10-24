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
    public class PasswordController : ApiController
    {
        /*      {"username" : "C0001",
         *      "password" : "pass"
                }
        */
        public HttpResponseMessage Post(Lib_Primavera.View.AcessoLogin registo)
        {
            Lib_Primavera.Model.RespostaErro erro = new Lib_Primavera.Model.RespostaErro();

            try
            {
                erro = Lib_Primavera.Integration.IntegracaoAcesso.AlterarPassword(registo.username, registo.password);
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

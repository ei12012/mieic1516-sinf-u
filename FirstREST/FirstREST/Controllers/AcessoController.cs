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
    public class AcessoController : ApiController
    {
        /*
          
         */
        // GET /api/acesso?email=ei12012@fe.up.pt&password=pass
        public Lib_Primavera.View.AcessoLogin2 Get(string email, string password)
        {
            List<Lib_Primavera.View.AcessoLogin2> res = Lib_Primavera.Integration.IntegracaoAcesso.Login(email, password);

            if (res.Count() == 0)
            {
                return null;
                //throw new HttpResponseException(
                  //Request.CreateResponse(HttpStatusCode.NotFound));
            }
            else
            {
                return res.ElementAt(0);
            }
        }

        // localhost:49822/api/acesso/
        /*
                {"CodCliente" : "C0010",
                "NomeCliente" : "Persona X",
                "NumContribuinte" : "123456789",
                "Morada" : "Rua X",
                "contacto" : "123456789",
                "email" : "domain@host.com",
                "sexo" : "M",
                "password" : "pass"
                }
         */
        public HttpResponseMessage Post(Lib_Primavera.View.AcessoLogin2 registo)
        {
            Lib_Primavera.Model.RespostaErro erro = new Lib_Primavera.Model.RespostaErro();

            try
            {
                erro = Lib_Primavera.Integration.IntegracaoAcesso.Registar(registo);
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

        // localhost:49822/api/acesso/
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
        public HttpResponseMessage Put(Lib_Primavera.View.AcessoLogin2 registo)
        {
            Lib_Primavera.Model.RespostaErro erro = new Lib_Primavera.Model.RespostaErro();

            try
            {
                erro = Lib_Primavera.Integration.IntegracaoAcesso.AlterarDados(registo);
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

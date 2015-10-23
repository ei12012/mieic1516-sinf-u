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
        // GET /api/acesso?email=ei12012@fe.up.pt&password=pass
        public Lib_Primavera.View.AcessoLogin2 Get(string email, string password)
        {
            List<Lib_Primavera.View.AcessoLogin2> res = Lib_Primavera.Integration.IntegracaoAcesso.Login(email, password);

            if (res.Count() == 0)
            {
                throw new HttpResponseException(
                  Request.CreateResponse(HttpStatusCode.NotFound));
            }
            else
            {
                return res.ElementAt(0);;
            }
        }
    }
}

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
    public class PesquisaController : ApiController
    {
        // GET /api/acesso?email=ei12012@fe.up.pt&password=pass
        public List<Lib_Primavera.Model.Artigo> Get(string tipo, string arg)
        {
            List<Lib_Primavera.Model.Artigo> artigo;

            if (tipo == "plataforma")
            {
                artigo = Lib_Primavera.Integration.IntegracaoPesquisa.GetPlataforma(arg);
            }
            else if (tipo == "nome")
            {
                artigo = Lib_Primavera.Integration.IntegracaoPesquisa.GetNome(arg);
            }
            else if (tipo == "empresa")
            {
                artigo = Lib_Primavera.Integration.IntegracaoPesquisa.GetEmpresa(arg);
            }
            else
            {
                return null;
            }
            return artigo;
        }
    }
}

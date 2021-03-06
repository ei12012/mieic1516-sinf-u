﻿using System;
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
    public class IdiomasController : ApiController
    {
        // GET: /api/generos/
        public IEnumerable<Lib_Primavera.Model.Idioma> Get()
        {
            return Lib_Primavera.Integration.IntegracaoIdioma.ListaIdiomas();
        }

        // GET: /api/generos?codartigo=A0001
        public List<Lib_Primavera.View.ArtigoIdioma> Get(string codartigo)
        {
            List<Lib_Primavera.View.ArtigoIdioma> lista = Lib_Primavera.Integration.IntegracaoIdioma.ListaIdiomasArtigos(codartigo);
            return lista;
        }


        public HttpResponseMessage Post(Lib_Primavera.Model.ArtigoIdioma registo)
        {
            Lib_Primavera.Model.RespostaErro erro = new Lib_Primavera.Model.RespostaErro();

            try
            {
                erro = Lib_Primavera.Integration.IntegracaoIdioma.NovoIdioma(registo);
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

        public HttpResponseMessage Delete(string codartigo)
        {
            Lib_Primavera.Model.RespostaErro erro = new Lib_Primavera.Model.RespostaErro();

            try
            {
                erro = Lib_Primavera.Integration.IntegracaoIdioma.ApagarIdiomas(codartigo);
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

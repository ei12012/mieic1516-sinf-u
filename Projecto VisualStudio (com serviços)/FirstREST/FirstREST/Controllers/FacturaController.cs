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
    public class FacturaController : ApiController
    {
        //
        // GET: /Clientes/
        public IEnumerable<Lib_Primavera.Model.DocVenda> Get()
        {
            return Lib_Primavera.Integration.IntegracaoDocVenda.Encomendas_List("FA");
        }


        // idFactura    
        public Lib_Primavera.Model.DocVenda Get(string id)
        {
            Lib_Primavera.Model.DocVenda docvenda = Lib_Primavera.Integration.IntegracaoDocVenda.Encomenda_Get(id, "FA");
            if (docvenda == null)
            {
                throw new HttpResponseException(
                        Request.CreateResponse(HttpStatusCode.NotFound));

            }
            else
            {
                return docvenda;
            }
        }

        /*
           {
                “id”: "1",
                “Entidade” : “Persona X”,
                “NumDoc”: "1",
                “Data”:”29-10-2015”,
                “TotalDoc”: "79.99",
                “Serie”: ”S01”,
                “LinhasDoc”: "[
                {
                “CodArtigo”: ”A0001”,
                “DescArtigo”: ”Grand Theft Auto VI (PS4)”,
                “IdCabecDoc”: "1",
                “Quantidade”: "2",
                “Unidade”: ”UN”,
                “Desconto”: "0",
                “PrecoUnitario”: "9.99",
                “TotalILiquido”: "9.99",
                “TotalLiquido”: "5"
                }
                ]",
                “tipoDoc” : “FA”
                }
         */
        public HttpResponseMessage Post(Lib_Primavera.Model.DocVenda dv)
        {
            Lib_Primavera.Model.RespostaErro erro = new Lib_Primavera.Model.RespostaErro();
            erro = Lib_Primavera.Integration.IntegracaoDocVenda.Encomendas_New(dv);

            if (erro.Erro == 0)
            {
                var response = Request.CreateResponse(
                   HttpStatusCode.Created, dv.id);
                string uri = Url.Link("DefaultApi", new { DocId = dv.id });
                response.Headers.Location = new Uri(uri);
                return Request.CreateResponse(HttpStatusCode.OK, erro.Descricao);
            }

            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest);
            }

        }

    }
}

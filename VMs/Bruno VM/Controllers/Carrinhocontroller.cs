using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using FirstREST.Lib_Primavera.Model;

namespace FirstREST.Controllers
{
    public class CarrinhoController : ApiController
    {
        // localhost:49822/api/Carrinho?codcliente=#
        public IEnumerable<Lib_Primavera.Join.CarrinhoPagamento> Get(string codcliente)
        {
            return Lib_Primavera.Integration.IntegracaoCarrinho.ListarCarrinho(codcliente);
        }


        public HttpResponseMessage Delete(Carrinho carrinho)
        {


            Lib_Primavera.Model.RespostaErro erro = new Lib_Primavera.Model.RespostaErro();

            try
            {

                erro = Lib_Primavera.Integration.IntegracaoCarrinho.ApagarArtigoCarrinho(carrinho);

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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Interop.ErpBS800;
using Interop.StdPlatBS800;
using Interop.StdBE800;
using Interop.GcpBE800;
using ADODB;
using Interop.IGcpBS800;

namespace FirstREST.Lib_Primavera.Integration
{
    public class IntegracaoCarrinho
    {
        public static List<Model.Carrinho> ListarCarrinho(string codcliente)
        {
            StdBELista objList;
            List<Model.Carrinho> lista = new List<Model.Carrinho>();

            if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
            {
                string query = "SELECT pagamento.[CDU_idArtigo], artigo.[CDU_idPlataforma],artigo.[CDU_Preco],artigo.[CDU_QuantidadeStock],artigo.[CDU_QuantidadeVendida] FROM [TDU_Pagamento] as pagamento, [TDU_ArtigoPlataforma] as artigo WHERE pagamento.[CDU_idArtigo]=artigo.[CDU_idArtigo] AND pagamento.[CDU_comprado]='1900-01-01 00:00:00.000' AND pagamento.[CDU_adicionado]!='1900-01-01 00:00:00.000' AND pagamento.CDU_CodCliente='"+codcliente+"'";

                objList = PriEngine.Engine.Consulta(query);

                while (!objList.NoFim())
                {
                    lista.Add(new Model.Carrinho
                    {
                        cliente=codcliente,
                        artigo = objList.Valor("CDU_idArtigo"),
                        plataforma = objList.Valor("CDU_idPlataforma"),
                        preco = objList.Valor("CDU_Preco"),
                        stock = objList.Valor("CDU_QuantidadeStock"),
                        vendidos = objList.Valor("CDU_QuantidadeVendida")
                    });
                    objList.Seguinte();
                }
                return lista;
            }
            else
                return null;
        }


        public static Lib_Primavera.Model.RespostaErro ApagarArtigoCarrinho(Model.Carrinho carrinho)
        {
            Lib_Primavera.Model.RespostaErro erro = new Model.RespostaErro();

            StdBECamposChave objRegisto = new StdBECamposChave();
            StdBECampos campos = new StdBECampos();
            StdBECampo cmp1 = new StdBECampo();
            StdBECampo cmp2 = new StdBECampo();

            objRegisto.AddCampoChave("CDU_idArtigo", carrinho.artigo);
            objRegisto.AddCampoChave("CDU_CodCliente", carrinho.cliente);  

            try
            {
                if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
                {
                    if (PriEngine.Engine.TabelasUtilizador.Existe("TDU_Pagamento", objRegisto) == false)
                    {
                        erro.Erro = 1;
                        erro.Descricao = "Não existe esta linha no carrinho";
                        return erro;
                    }
                    else
                    {

                        PriEngine.Engine.TabelasUtilizador.Remove("TDU_Pagamento", objRegisto);
                        erro.Erro = 0;
                        erro.Descricao = "Sucesso";
                        return erro;
                    }

                       
                }
                else
                {
                    erro.Erro = 1;
                    erro.Descricao = "Erro ao abrir empresa";
                    return erro;
                }
            }
            catch (Exception ex)
            {
                erro.Erro = 1;
                erro.Descricao = ex.Message;
                return erro;
            }
        }
    }
}
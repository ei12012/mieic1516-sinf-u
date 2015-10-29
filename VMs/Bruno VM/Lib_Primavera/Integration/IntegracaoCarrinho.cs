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
        public static List<View.CarrinhoPagamento> ListarCarrinho(string codcliente)
        {
            StdBELista objList;
            List<View.CarrinhoPagamento> lista = new List<View.CarrinhoPagamento>();

            if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
            {
                //string query = "SELECT pagamento.[CDU_idArtigo], artigo.[CDU_idPlataforma],artigo.[CDU_Preco],artigo.[CDU_QuantidadeStock],artigo.[CDU_QuantidadeVendida] FROM [TDU_Pagamento] as pagamento, [TDU_ArtigoPlataforma] as artigo WHERE pagamento.[CDU_idArtigo]=artigo.[CDU_idArtigo] AND pagamento.[CDU_comprado]='1900-01-01 00:00:00.000' AND pagamento.[CDU_adicionado]!='1900-01-01 00:00:00.000' AND pagamento.CDU_CodCliente='"+codcliente+"'";
                string query = "SELECT pagamento.[CDU_idArtigo],pagamento.CDU_adicionado,artigo.PVP1 FROM [TDU_Pagamento] as pagamento, [ArtigoMoeda] as artigo WHERE pagamento.[CDU_idArtigo]=artigo.Artigo AND pagamento.[CDU_comprado]='1900-01-01 00:00:00.000' AND pagamento.[CDU_adicionado]!='1900-01-01 00:00:00.000' AND pagamento.CDU_CodCliente='" + codcliente + "'";

                objList = PriEngine.Engine.Consulta(query);

                while (!objList.NoFim())
                {
                    lista.Add(new View.CarrinhoPagamento
                    {
                        cliente = codcliente,
                        artigo = objList.Valor("CDU_idArtigo"),
                        preco = objList.Valor("PVP1"),
                        adicionado = objList.Valor("CDU_adicionado")
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

        public static Lib_Primavera.Model.RespostaErro InsereArtigoCarrinho(Model.Carrinho carrinho)
        {
            Lib_Primavera.Model.RespostaErro erro = new Model.RespostaErro();

            string data = String.Format("{0:yyyy-M-d HH:mm:ss}", DateTime.Now) + ".000";

            StdBERegistoUtil objRegisto = new StdBERegistoUtil();
            StdBECampos campos = new StdBECampos();
            StdBECampo cmp1 = new StdBECampo();
            StdBECampo cmp2 = new StdBECampo();
            StdBECampo cmp3 = new StdBECampo();
            StdBECampo cmp4 = new StdBECampo();

            try
            {
                if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
                {
                    cmp1.Nome = "CDU_idArtigo";
                    cmp2.Nome = "CDU_CodCliente";
                    cmp3.Nome = "CDU_adicionado";
                    cmp4.Nome = "CDU_comprado";

                    cmp1.Valor = carrinho.artigo;
                    cmp2.Valor = carrinho.cliente;
                    cmp3.Valor = data;
                    cmp4.Valor = "1900-01-01 00:00:00.000";

                    campos.Insere(cmp1);
                    campos.Insere(cmp2);
                    campos.Insere(cmp3);
                    campos.Insere(cmp4);

                    objRegisto.set_Campos(campos);
                    PriEngine.Engine.TabelasUtilizador.Actualiza("TDU_Pagamento", objRegisto);

                    erro.Erro = 0;
                    erro.Descricao = "Sucesso";
                    return erro;
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
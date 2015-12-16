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
    public class IntegracaoClassificacao
    {
        public static List<View.ClassificacaoA> ListaClassificacoes(string codartigo)
        {
            StdBELista objList;
            List<View.ClassificacaoA> lista = new List<View.ClassificacaoA>();

            if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
            {
                //objList = PriEngine.Engine.Comercial.Clientes.LstClientes();
                string query = "SELECT TDU_Classificacao.CDU_Valor, TDU_Classificacao.CDU_Comentario, Clientes.Nome FROM TDU_Classificacao, Clientes WHERE TDU_Classificacao.CDU_idCliente = Clientes.Cliente AND TDU_Classificacao.CDU_idArtigo = '" + codartigo + "'";

                objList = PriEngine.Engine.Consulta(query);

                while (!objList.NoFim())
                {
                    lista.Add(new View.ClassificacaoA
                    {
                        valor = objList.Valor("CDU_Valor"),
                        comentario = objList.Valor("CDU_Comentario"),
                        nomeCliente = objList.Valor("Nome")
                    });
                    objList.Seguinte();
                }
                return lista;
            }
            else
                return null;
        }

        public static Lib_Primavera.Model.RespostaErro InsereClassificacao(Model.Classificacao cla)
        {
            Lib_Primavera.Model.RespostaErro erro = new Model.RespostaErro();

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
                    cmp2.Nome = "CDU_idCliente";
                    cmp3.Nome = "CDU_Valor";
                    cmp4.Nome = "CDU_Comentario";

                    cmp1.Valor = cla.codArtigo;
                    cmp2.Valor = cla.codCliente;
                    cmp3.Valor = cla.valor;
                    cmp4.Valor = cla.comentario;

                    campos.Insere(cmp1);
                    campos.Insere(cmp2);
                    campos.Insere(cmp3);
                    campos.Insere(cmp4);

                    objRegisto.set_Campos(campos);
                    PriEngine.Engine.TabelasUtilizador.Actualiza("TDU_Classificacao", objRegisto);

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
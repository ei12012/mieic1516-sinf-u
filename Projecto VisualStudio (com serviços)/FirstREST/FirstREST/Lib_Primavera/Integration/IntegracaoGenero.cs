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
using System.Web;

namespace FirstREST.Lib_Primavera.Integration
{
    public class IntegracaoGenero
    {
        public static List<Model.Genero> ListaGeneros()
        {
            StdBELista objList;
            List<Model.Genero> lista = new List<Model.Genero>();

            if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
            {
                //objList = PriEngine.Engine.Comercial.Clientes.LstClientes();
                objList = PriEngine.Engine.Consulta("SELECT * FROM  TDU_Genero");

                while (!objList.NoFim())
                {
                    lista.Add(new Model.Genero
                    {
                        ID = objList.Valor("CDU_ID"),
                        Nome = objList.Valor("CDU_Nome")
                    });
                    objList.Seguinte();
                }
                return lista;
            }
            else
                return null;
        }

        public static List<Lib_Primavera.Model.Genero> ListaGenerosArtigos(string codartigo)
        {
            StdBELista objList;

            Model.Genero art = new Model.Genero();
            List<Model.Genero> lista = new List<Model.Genero>();

            if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
            {
                string query = "SELECT TDU_Genero.CDU_ID, TDU_Genero.CDU_Nome FROM TDU_ArtigoGenero, TDU_Genero WHERE TDU_ArtigoGenero.CDU_idGenero = TDU_Genero.CDU_ID AND TDU_ArtigoGenero.CDU_idArtigo = '" + codartigo + "'";

                objList = PriEngine.Engine.Consulta(query);

                while (!objList.NoFim())
                {
                    art = new Model.Genero();
                    art.ID = objList.Valor("CDU_ID");
                    art.Nome = objList.Valor("CDU_Nome");

                    lista.Add(art);
                    objList.Seguinte();
                }
                return lista;
            }
            else
            {
                return null;
            }
        }

        public static Lib_Primavera.Model.RespostaErro NovoGenero(Model.ArtigoGenero registo)
        {
            Lib_Primavera.Model.RespostaErro erro = new Model.RespostaErro();

            try
            {
                if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
                {
                    StdBERegistoUtil objRegisto = new StdBERegistoUtil();
                    StdBECampos campos = new StdBECampos();
                    StdBECampo cmp1 = new StdBECampo();
                    StdBECampo cmp2 = new StdBECampo();

                    cmp1.Nome = "CDU_idArtigo";
                    cmp2.Nome = "CDU_idGenero";

                    cmp1.Valor = registo.idArtigo;
                    cmp2.Valor = registo.idGenero;

                    campos.Insere(cmp1);
                    campos.Insere(cmp2);

                    objRegisto.set_Campos(campos);
                    PriEngine.Engine.TabelasUtilizador.Actualiza("TDU_ArtigoGenero", objRegisto);

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

        public static Lib_Primavera.Model.RespostaErro ApagarGeneros(string CodArtigo)
        {
            Lib_Primavera.Model.RespostaErro erro = new Model.RespostaErro();

            try
            {
                if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
                {
                    StdBECamposChave chave = new StdBECamposChave();
                    chave.AddCampoChave("CDU_idArtigo", CodArtigo);

                    PriEngine.Engine.TabelasUtilizador.Remove("TDU_ArtigoGenero", chave);

                    erro.Erro = 0;
                    erro.Descricao = "Sucesso";
                    return erro;
                }
                else
                {
                    erro.Erro = 1;
                    erro.Descricao = "Erro ao abrir a empresa";
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
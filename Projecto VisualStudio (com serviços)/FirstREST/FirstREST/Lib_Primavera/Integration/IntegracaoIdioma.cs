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
    public class IntegracaoIdioma
    {
        public static List<Model.Idioma> ListaIdiomas()
        {
            StdBELista objList;
            List<Model.Idioma> lista = new List<Model.Idioma>();

            if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
            {
                //objList = PriEngine.Engine.Comercial.Clientes.LstClientes();
                objList = PriEngine.Engine.Consulta("SELECT * FROM  TDU_Idioma");

                while (!objList.NoFim())
                {
                    lista.Add(new Model.Idioma
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

        public static List<Lib_Primavera.View.ArtigoIdioma> ListaIdiomasArtigos(string codartigo)
        {
            StdBELista objList;

            View.ArtigoIdioma art = new View.ArtigoIdioma();
            List<View.ArtigoIdioma> lista = new List<View.ArtigoIdioma>();

            if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
            {
                string query = "SELECT TDU_Idioma.CDU_ID, TDU_Idioma.CDU_Nome,TDU_ArtigoIdioma.CDU_Tipo FROM TDU_ArtigoIdioma, TDU_Idioma WHERE TDU_ArtigoIdioma.CDU_idIdioma = TDU_Idioma.CDU_ID AND TDU_ArtigoIdioma.CDU_idArtigo = '" + codartigo + "' ORDER BY CDU_Tipo, CDU_ID";
                objList = PriEngine.Engine.Consulta(query);

                while (!objList.NoFim())
                {
                    art = new View.ArtigoIdioma();
                    art.ID = objList.Valor("CDU_ID");
                    art.Nome = objList.Valor("CDU_Nome");
                    art.Tipo = objList.Valor("CDU_Tipo");
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

        public static Lib_Primavera.Model.RespostaErro NovoIdioma(Model.ArtigoIdioma registo)
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
                    StdBECampo cmp3 = new StdBECampo();

                    cmp1.Nome = "CDU_idArtigo";
                    cmp2.Nome = "CDU_idIdioma";
                    cmp3.Nome = "CDU_Tipo";

                    cmp1.Valor = registo.idArtigo;
                    cmp2.Valor = registo.idIdioma;
                    cmp3.Valor = registo.Tipo;

                    campos.Insere(cmp1);
                    campos.Insere(cmp2);
                    campos.Insere(cmp3);

                    objRegisto.set_Campos(campos);
                    PriEngine.Engine.TabelasUtilizador.Actualiza("TDU_ArtigoIdioma", objRegisto);

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

        public static Lib_Primavera.Model.RespostaErro ApagarIdiomas(string CodArtigo)
        {
            Lib_Primavera.Model.RespostaErro erro = new Model.RespostaErro();

            try
            {
                if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
                {
                    StdBECamposChave chave = new StdBECamposChave();
                    chave.AddCampoChave("CDU_idArtigo", CodArtigo);

                    PriEngine.Engine.TabelasUtilizador.Remove("TDU_ArtigoIdioma", chave);

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
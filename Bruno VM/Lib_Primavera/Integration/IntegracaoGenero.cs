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
                string select = "SELECT TDU_Genero.CDU_ID AS CDU_ID, TDU_Genero.CDU_Nome AS CDU_Nome";
                string from = "FROM TDU_ArtigoGenero, TDU_Genero, TDU_Artigo";
                string where = "WHERE TDU_ArtigoGenero.CDU_idArtigo = TDU_Artigo.ID AND TDU_ArtigoGenero.CDU_idGenero = TDU_Genero.ID AND TDU_Artigo.ID = " + codartigo;

                string query = select + from + where;
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
    }
}
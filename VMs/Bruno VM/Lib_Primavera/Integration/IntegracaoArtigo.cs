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
//using Interop.StdBESql800;
//using Interop.StdBSSql800;

namespace FirstREST.Lib_Primavera.Integration
{
    public class IntegracaoArtigo
    {
        public static  List<Lib_Primavera.Model.Artigo> GetArtigo(string codArtigo)
        {
            StdBELista objList;
            List<Model.Artigo> lista = new List<Model.Artigo>();

            if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
            {
                string query = "SELECT Artigo.Artigo as CodArtigo, Artigo.Descricao, Artigo.STKActual as Stock, ArtigoMoeda.Moeda as Moeda, ArtigoMoeda.PVP1 as Preco, TDU_ArtigoAuxiliar.CDU_Empresa, TDU_ArtigoAuxiliar.CDU_Ano, TDU_ArtigoAuxiliar.CDU_Idade, TDU_ArtigoAuxiliar.CDU_Visitas, TDU_ArtigoAuxiliar.CDU_Oculto FROM Artigo, ArtigoMoeda, TDU_ArtigoAuxiliar WHERE Artigo.Artigo = ArtigoMoeda.Artigo AND Artigo.Artigo = TDU_ArtigoAuxiliar.CDU_codArtigo AND Artigo.Artigo = '" + codArtigo + "'";

                objList = PriEngine.Engine.Consulta(query);
                while (!objList.NoFim())
                {
                    lista.Add(new Model.Artigo
                    {
                        CodArtigo = objList.Valor("CodArtigo"),
                        Descricao = objList.Valor("Descricao"),

                        Stock = objList.Valor("Stock"),
                        Moeda = objList.Valor("Moeda"),
                        Preco = objList.Valor("Preco"),
                        Empresa = objList.Valor("CDU_Empresa"),

                        Ano = objList.Valor("CDU_Ano"),
                        Idade = objList.Valor("CDU_Idade"),

                        Oculto = objList.Valor("CDU_Oculto"),
                        Visitas = objList.Valor("CDU_Visitas")
                    });
                    objList.Seguinte();
                }

                return lista;
            }
            else
                return null;
        }

        

        public static List<Model.Artigo> ListaArtigos()
        {
            StdBELista objList;
            List<Model.Artigo> lista = new List<Model.Artigo>();

            if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
            {
                string query = "SELECT Artigo.Artigo as CodArtigo, Artigo.Descricao, Artigo.STKActual as Stock, ArtigoMoeda.Moeda as Moeda, ArtigoMoeda.PVP1 as Preco, TDU_ArtigoAuxiliar.CDU_Empresa, TDU_ArtigoAuxiliar.CDU_Ano, TDU_ArtigoAuxiliar.CDU_Idade, TDU_ArtigoAuxiliar.CDU_Visitas, TDU_ArtigoAuxiliar.CDU_Oculto FROM Artigo, ArtigoMoeda, TDU_ArtigoAuxiliar WHERE Artigo.Artigo = ArtigoMoeda.Artigo AND Artigo.Artigo = TDU_ArtigoAuxiliar.CDU_codArtigo";

                objList = PriEngine.Engine.Consulta(query);

                while (!objList.NoFim())
                {
                    lista.Add(new Model.Artigo
                    {
                        CodArtigo = objList.Valor("CodArtigo"),
                        Descricao = objList.Valor("Descricao"),

                        Stock = objList.Valor("Stock"),
                        Moeda = objList.Valor("Moeda"),
                        Preco = objList.Valor("Preco"),
                        Empresa = objList.Valor("CDU_Empresa"),

                        Ano = objList.Valor("CDU_Ano"),
                        Idade = objList.Valor("CDU_Idade"),

                        Oculto = objList.Valor("CDU_Oculto"),
                        Visitas = objList.Valor("CDU_Visitas")
                    });
                    objList.Seguinte();
                }

                return lista;
            }
            else
                return null;
        }
    }
}
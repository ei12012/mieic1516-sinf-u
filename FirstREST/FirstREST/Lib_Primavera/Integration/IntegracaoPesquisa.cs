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
using System.Globalization;

namespace FirstREST.Lib_Primavera.Integration
{
    public class IntegracaoPesquisa
    {
        public static List<Lib_Primavera.Model.Artigo> GetNome(string arg)
        {
            StdBELista objList;
            List<Model.Artigo> lista = new List<Model.Artigo>();

            if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
            {
                string query = "SELECT Artigo.Artigo as CodArtigo, Artigo.Descricao, Artigo.STKActual as Stock, ArtigoMoeda.Moeda as Moeda, ArtigoMoeda.PVP1 as Preco, CDU_Empresa, CDU_Ano, CDU_Idade, CDU_Visitas, CDU_Oculto FROM Artigo, ArtigoMoeda WHERE Artigo.Artigo = ArtigoMoeda.Artigo AND Artigo.Descricao LIKE '%" + arg + "%'";

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

        public static List<Lib_Primavera.Model.Artigo> GetEmpresa(string arg)
        {
            StdBELista objList;
            List<Model.Artigo> lista = new List<Model.Artigo>();

            if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
            {
                string query = "SELECT Artigo.Artigo as CodArtigo, Artigo.Descricao, Artigo.STKActual as Stock, ArtigoMoeda.Moeda as Moeda, ArtigoMoeda.PVP1 as Preco, CDU_Empresa, CDU_Ano, CDU_Idade, CDU_Visitas, CDU_Oculto FROM Artigo, ArtigoMoeda WHERE Artigo.Artigo = ArtigoMoeda.Artigo AND Artigo.CDU_Empresa LIKE '%" + arg + "%'";

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

        public static List<Lib_Primavera.Model.Artigo> GetPlataforma(string arg)
        {
            StdBELista objList;
            List<Model.Artigo> lista = new List<Model.Artigo>();

            if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
            {
                string query = "SELECT Artigo.Artigo as CodArtigo, Artigo.Descricao, Artigo.STKActual as Stock, ArtigoMoeda.Moeda as Moeda, ArtigoMoeda.PVP1 as Preco, CDU_Empresa, CDU_Ano, CDU_Idade, CDU_Visitas, CDU_Oculto FROM Artigo, ArtigoMoeda WHERE Artigo.Artigo = ArtigoMoeda.Artigo AND AND Artigo.Descricao LIKE '%(%" + arg + "%)'";

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
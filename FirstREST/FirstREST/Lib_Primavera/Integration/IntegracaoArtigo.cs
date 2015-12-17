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
    public class IntegracaoArtigo
    {
        public static  List<Lib_Primavera.Model.Artigo> GetArtigo(string codArtigo)
        {
            StdBELista objList;
            List<Model.Artigo> lista = new List<Model.Artigo>();

            if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
            {
                string query = "SELECT Artigo.Artigo as CodArtigo, Artigo.Descricao, Artigo.STKActual as Stock, ArtigoMoeda.Moeda as Moeda, ArtigoMoeda.PVP1 as Preco, CDU_Empresa, CDU_Ano, CDU_Idade, CDU_Visitas, CDU_Oculto FROM Artigo, ArtigoMoeda WHERE Artigo.Artigo = ArtigoMoeda.Artigo AND Artigo.Artigo = '" + codArtigo + "'";

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
                string query = "SELECT Artigo.Artigo as CodArtigo, Artigo.Descricao, Artigo.STKActual as Stock, ArtigoMoeda.Moeda as Moeda, ArtigoMoeda.PVP1 as Preco, CDU_Empresa, CDU_Ano, CDU_Idade, CDU_Visitas, CDU_Oculto FROM Artigo, ArtigoMoeda WHERE Artigo.Artigo = ArtigoMoeda.Artigo";

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

        public static List<Model.Artigo> ListaArtigosMaisVisitados()
        {
            StdBELista objList;
            List<Model.Artigo> lista = new List<Model.Artigo>();

            if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
            {
                string query = "SELECT TOP 5 Artigo.Artigo as CodArtigo, Artigo.Descricao, Artigo.STKActual as Stock, ArtigoMoeda.Moeda as Moeda, ArtigoMoeda.PVP1 as Preco, CDU_Empresa, CDU_Ano, CDU_Idade, CDU_Visitas, CDU_Oculto FROM Artigo, ArtigoMoeda WHERE Artigo.Artigo = ArtigoMoeda.Artigo ORDER BY Artigo.CDU_Visitas, ArtigoMoeda.PVP1 DESC, Artigo.Artigo";

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

        public static List<Model.Artigo> ListaArtigosMaisRecentes()
        {
            StdBELista objList;
            List<Model.Artigo> lista = new List<Model.Artigo>();

            if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
            {
                string query = "SELECT TOP 5 Artigo.Artigo as CodArtigo, Artigo.Descricao, Artigo.STKActual as Stock, ArtigoMoeda.Moeda as Moeda, ArtigoMoeda.PVP1 as Preco, CDU_Empresa, CDU_Ano, CDU_Idade, CDU_Visitas, CDU_Oculto FROM Artigo, ArtigoMoeda WHERE Artigo.Artigo = ArtigoMoeda.Artigo ORDER BY Artigo.CDU_Ano DESC, ArtigoMoeda.PVP1 DESC, Artigo.Artigo";

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

        public static Lib_Primavera.Model.RespostaErro Registar(Model.Artigo registo)
        {
            Lib_Primavera.Model.RespostaErro erro = new Model.RespostaErro();

            try
            {
                StdBELista objList;

                if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
                {
                    Double v = registo.Preco;

                    NumberFormatInfo nfi = new NumberFormatInfo();
                    nfi.NumberDecimalSeparator = ".";
                    string add = v.ToString(nfi);
                    
                    string query = "Execute PDU_RegistarArtigo @codigo = '" + registo.CodArtigo + "', @empresa = '" + registo.Empresa + "', @ano = " + registo.Ano + ", @idade = " + registo.Idade + ", @descricao = '" + registo.Descricao + "', @stock = " + registo.Stock + ", @preco = " + add;

                    objList = PriEngine.Engine.Consulta(query);

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

        public static Lib_Primavera.Model.RespostaErro AlterarDadosMain(Model.Artigo registo)
        {
            Lib_Primavera.Model.RespostaErro erro = new Model.RespostaErro();
            try
            {
                if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
                {
                    if (PriEngine.Engine.Comercial.Artigos.Existe(registo.CodArtigo) == false)
                    {
                        erro.Erro = 1;
                        erro.Descricao = "O artigo não existe";
                        return erro;
                    }
                    else
                    {
                        /* Artigo */
                        GcpBEArtigo obj = new GcpBEArtigo();
                        obj = PriEngine.Engine.Comercial.Artigos.Edita(registo.CodArtigo);
                        obj.set_EmModoEdicao(true);

                        obj.set_Descricao(registo.Descricao); // Nome do producto

                        PriEngine.Engine.Comercial.Artigos.Actualiza(obj);
                        
                        /* ArtigoMoeda */
                        GcpBEArtigoMoeda obj2 = new GcpBEArtigoMoeda();
                        obj2 = PriEngine.Engine.Comercial.ArtigosPrecos.Edita(registo.CodArtigo, registo.Moeda, "UN");
                        
                        obj2.set_EmModoEdicao(true);
                        
                        obj2.set_PVP1(registo.Preco);

                        PriEngine.Engine.Comercial.ArtigosPrecos.Actualiza(obj2);

                        /* TDU_ArtigoAuxiliar */
                        StdBECamposChave chave = new StdBECamposChave();
                        StdBECampos campos = new StdBECampos();
                        StdBECampo cmp1 = new StdBECampo();
                        StdBECampo cmp2 = new StdBECampo();
                        StdBECampo cmp3 = new StdBECampo();
                        StdBECampo cmp4 = new StdBECampo();

                        chave.AddCampoChave("CDU_codArtigo", registo.CodArtigo);

                        cmp1.Nome = "CDU_Ano";
                        cmp1.Valor = registo.Ano;
                        cmp2.Nome = "CDU_Idade";
                        cmp2.Valor = registo.Idade;
                        cmp3.Nome = "CDU_Empresa";
                        cmp3.Valor = registo.Empresa;
                        cmp4.Nome = "CDU_Oculto";
                        cmp4.Valor = (registo.Oculto ? 1 : 0);

                        campos.Insere(cmp1);
                        campos.Insere(cmp2);
                        campos.Insere(cmp3);
                        campos.Insere(cmp4);

                        PriEngine.Engine.TabelasUtilizador.ActualizaValorAtributos("TDU_ArtigoAuxiliar", chave, campos);

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

        public static Lib_Primavera.Model.RespostaErro IncrementarVisitas(Model.Artigo registo)
        {
            Lib_Primavera.Model.RespostaErro erro = new Model.RespostaErro();
            try
            {
                if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
                {
                    if (PriEngine.Engine.Comercial.Artigos.Existe(registo.CodArtigo) == false)
                    {
                        erro.Erro = 1;
                        erro.Descricao = "O artigo não existe";
                        return erro;
                    }
                    else
                    {
                        StdBECamposChave chave = new StdBECamposChave();
                        StdBECampos campos = new StdBECampos();
                        StdBECampo cmp1 = new StdBECampo();

                        cmp1.Nome = "CDU_Visitas";
                        cmp1.Valor = registo.Visitas + 1;
                        campos.Insere(cmp1);

                        PriEngine.Engine.Comercial.Artigos.ActualizaValorAtributos(registo.CodArtigo, campos);
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
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Interop.ErpBS800;
using Interop.StdPlatBS800;
using Interop.StdBE800;
using Interop.GcpBE800;
using ADODB;
using Interop.IGcpBS800;
using System.Security.Cryptography;
using System.Text;

namespace FirstREST.Lib_Primavera.Integration
{
    public class IntegracaoAcesso
    {
        private static string sha1(string src)
        {
            SHA1 ss = SHA1.Create();
            byte[] hash = ss.ComputeHash(Encoding.UTF8.GetBytes(src));
            StringBuilder sb = new StringBuilder();


            for (int i = 0; i < hash.Length; i++)
                sb.Append(hash[i].ToString("X2"));

            return sb.ToString();
        }

        public static List<View.AcessoLogin2> Login(string email, string password)
        {
            StdBELista objList;
            List<View.AcessoLogin2> lista = new List<View.AcessoLogin2>();

            if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
            {
                //objList = PriEngine.Engine.Comercial.Clientes.LstClientes();
                string pass = sha1(password);
                string query = "SELECT TDU_ClienteAuxiliar.CDU_codCliente, TDU_ClienteAuxiliar.CDU_Password, TDU_ClienteAuxiliar.CDU_Email, TDU_ClienteAuxiliar.CDU_Sexo, Clientes.Nome, Clientes.Fac_Mor as Morada, Clientes.Fac_Tel as Contacto, Clientes.Moeda, Clientes.NumContrib FROM TDU_ClienteAuxiliar, Clientes WHERE TDU_ClienteAuxiliar.CDU_codCliente = Clientes.Cliente AND TDU_ClienteAuxiliar.CDU_Email = '" + email + "' AND TDU_ClienteAuxiliar.CDU_Password = '" + pass + "'";

                objList = PriEngine.Engine.Consulta(query);


                while (!objList.NoFim())
                {
                    lista.Add(new View.AcessoLogin2
                    {
                        Morada = objList.Valor("Morada"),
                        CodCliente = objList.Valor("CDU_codCliente"),
                        NomeCliente = objList.Valor("Nome"),
                        NumContribuinte = objList.Valor("NumContrib"),
                        email = objList.Valor("CDU_Email"),
                        password = objList.Valor("CDU_Password"),
                        sexo = objList.Valor("CDU_Sexo"),
                        contacto = objList.Valor("Contacto"),
                        Moeda = objList.Valor("Moeda")
                    });
                    objList.Seguinte();
                }

                return lista;
            }
            else
                return null;
        }

        public static Lib_Primavera.Model.RespostaErro Registar(View.AcessoLogin2 registo)
        {
            Lib_Primavera.Model.RespostaErro erro = new Model.RespostaErro();

            try
            {
                StdBELista objList;

                if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
                {
                    string query = "Execute PDU_RegistarCliente @codigo = '" + registo.CodCliente + "', @nome = '" + registo.NomeCliente + "', @contribuinte = " + registo.NumContribuinte + ", @morada = '" + registo.Morada + "', @contacto = " + registo.contacto + ", @email = '" + registo.email + "', @sexo = '" + registo.sexo + "', @password = '" + sha1(registo.password) + "'";

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

        public static Lib_Primavera.Model.RespostaErro AlterarDados(View.AcessoLogin2 registo)
        {
            Lib_Primavera.Model.RespostaErro erro = new Model.RespostaErro();
            try
            {
                if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
                {
                    StdBECamposChave chave = new StdBECamposChave();
                    StdBECampos campos = new StdBECampos();
                    StdBECampo cmp1 = new StdBECampo();
                    StdBECampo cmp2 = new StdBECampo();

                    chave.AddCampoChave("CDU_codCliente", registo.CodCliente);

                    cmp1.Nome = "CDU_Email";
                    cmp1.Valor = registo.email;
                    cmp2.Nome = "CDU_Sexo";
                    cmp2.Valor = registo.sexo;

                    campos.Insere(cmp1);
                    campos.Insere(cmp2);

                    PriEngine.Engine.TabelasUtilizador.ActualizaValorAtributos("TDU_ClienteAuxiliar", chave, campos);

                    GcpBECliente objCli = new GcpBECliente();
                    objCli = PriEngine.Engine.Comercial.Clientes.Edita(registo.CodCliente);
                    objCli.set_EmModoEdicao(true);

                    objCli.set_Nome(registo.NomeCliente);
                    objCli.set_NumContribuinte(registo.NumContribuinte);
                    objCli.set_Moeda(registo.Moeda);
                    objCli.set_Morada(registo.Morada);

                    PriEngine.Engine.Comercial.Clientes.Actualiza(objCli);

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

        public static Lib_Primavera.Model.RespostaErro AlterarPassword(string codcliente, string nova)
        {
            Lib_Primavera.Model.RespostaErro erro = new Model.RespostaErro();

            try
            {
                if (PriEngine.InitializeCompany(FirstREST.Properties.Settings.Default.Company.Trim(), FirstREST.Properties.Settings.Default.User.Trim(), FirstREST.Properties.Settings.Default.Password.Trim()) == true)
                {
                    StdBECamposChave chave = new StdBECamposChave();
                    chave.AddCampoChave("CDU_codCliente", codcliente);

                    PriEngine.Engine.TabelasUtilizador.ActualizaValorAtributo
                        ("TDU_ClienteAuxiliar", chave, "CDU_Password" , sha1(nova));

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
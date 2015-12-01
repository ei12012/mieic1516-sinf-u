using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FirstREST.Lib_Primavera.Model
{
    public class Artigo
    {
        /*
            SELECT Artigo.Artigo as CodArtigo, Artigo.Descricao, Artigo.STKActual as Stock, ArtigoMoeda.Moeda as Moeda, ArtigoMoeda.PVP1 as Preco, TDU_ArtigoAuxiliar.CDU_Empresa, TDU_ArtigoAuxiliar.CDU_Ano, TDU_ArtigoAuxiliar.CDU_Idade, TDU_ArtigoAuxiliar.CDU_Visitas, TDU_ArtigoAuxiliar.CDU_Oculto 
            FROM Artigo, ArtigoMoeda, TDU_ArtigoAuxiliar
            WHERE
	            Artigo.Artigo = ArtigoMoeda.Artigo AND
	            Artigo.Artigo = TDU_ArtigoAuxiliar.CDU_codArtigo
         */
        public string CodArtigo { get; set; }
        public string Descricao { get; set; }

        public double Stock { get; set; }
        public string Moeda { get; set; }
        public double Preco { get; set; }
        public string Empresa { get; set; }

        public int Ano { get; set; }
        public int Idade { get; set; }

        public Boolean Oculto { get; set; }
        public int Visitas { get; set; }
    }
}
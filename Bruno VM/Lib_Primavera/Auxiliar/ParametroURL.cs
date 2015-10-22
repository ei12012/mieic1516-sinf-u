using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FirstREST.Lib_Primavera.Auxiliar
{
    public class ParametroURL
    {
        public string src { get; set; }

        public ParametroURL(string arg)
        {
            src = arg;
        }

        public List<string> obterDados(string raiz)
        {
            List<string> r = new List<string>();
            string rr = "";

            for (int i = 0; i < raiz.Length; i++ )
            {
                if (raiz[i] == '&' || raiz[i] == '=')
                {
                    r.Add(rr);
                    rr = "";
                }
                else
                {
                    rr += raiz[i];
                }
            }

            return r;
        }

        public List<Par> get()
        {
            List<Par> r = new List<Par>();

            if (src[0] == '?')
            {
                string go = src;
                go.Remove(0);

                List<string> rr = obterDados(go);
                for(int i = 0; i < rr.Count(); i+=2)
                {
                    r.Add(new Par(rr.ElementAt(i), rr.ElementAt(i+1) ) );
                }
            }

            return r;
        }
    }
}
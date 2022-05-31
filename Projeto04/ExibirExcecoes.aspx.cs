using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADS2022T;

namespace Projeto04
{
    /// <summary>
    ///    Este metodo e executado sempre que a página for recarregada no navegador
    /// </summary>
    public partial class ExibirExcecoes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TratamentoExcecao ex = new TratamentoExcecao();
            ex.FileName = "~/Log.txt";
            Excecoes.Text = ex.LoadException().Replace ("\n", "<br />");
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            TratamentoExcecao ex = new TratamentoExcecao();
            ex.FileName = "~/Log.txt";
            ex.ClearException();
            Excecoes.Text = "";


        }
    }
}
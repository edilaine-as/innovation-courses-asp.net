using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto04
{
    public partial class Page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Autenticado"] != null)
            {
                LinkAdmin.Visible = true;
            }
            else
            {
                LinkAdmin.Visible = false;
            }
        }
    }
}
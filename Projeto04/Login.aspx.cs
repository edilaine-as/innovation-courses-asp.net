using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto04
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Entrar_Click(object sender, EventArgs e)
        {
            if(NomeAcesso.Text.Trim() == "")
            {
                Mensagem.Text = "Digite seu nome de acesso!";
            }else if(Senha.Text.Trim() == "")
            {
                Mensagem.Text = "Digite sua senha!";
            }
            else
            {
                if(NomeAcesso.Text == "Admin" && Senha.Text == "12345")
                {
                    //variavel de seção
                    Session["Autenticado"] = "Admin";

                    //inicializa autentificação
                    System.Web.Security.FormsAuthentication.Initialize();

                    //cria um ticket de autentificação
                    FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, "Admin", DateTime.Now, DateTime.Now.AddMinutes(20), false, FormsAuthentication.FormsCookieName);

                    //criptografa o ticket e registra no arquivo cookie no navegador
                    Response.Cookies.Add(new HttpCookie(FormsAuthentication.FormsCookieName, FormsAuthentication.Encrypt(ticket)));

                    Response.Redirect(FormsAuthentication.GetRedirectUrl("Admin", false));
                }
                else
                {
                    Mensagem.Text = "Dados incorretos!";
                }
            }
        }
    }
}
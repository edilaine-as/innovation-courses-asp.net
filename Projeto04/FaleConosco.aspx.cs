using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ADS2022T;

// RELACIONADO A E-MAIL
using System.Net.Mail;


namespace Projeto04
{
    public partial class FaleConosco : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            try
            {
                // 1. VALIDAR OS DADOS DIGITADOS
                string mensagem = Mensagem.Text.Trim();
                string nome = Nome.Text.Trim();
                string email = Email.Text.Trim();

                if (mensagem == "")
                {
                    Msg.Text = "Ops... Para continuar você deve informar uma mensagem!";
                }
                else if (nome == "")
                {
                    Msg.Text = "Ops... Para continuar você deve informar um nome!";
                }
                else if (email == "")
                {
                    Msg.Text = "Ops... Para continuar você deve informar um email!";
                }
                else
                {
                    // 2. CRIAR O PACOTE DO EMAIL
                    // Criar uma instância da classe MailMessage
                    MailMessage mail = new MailMessage();
                    mail.To.Add("edilaine.santos839@gmail.com"); //"contato@seudominio.com"
                    mail.Subject = "E-mail enviado pelo formulário do contato";

                    MailAddress from = new MailAddress(email); //"contato@seudominio.com"
                    mail.From = from;
                    mail.Body = "Mensagem: " + mensagem + "\n";
                    mail.Body += "Nome: " + nome + "\n";
                    mail.Body += "E-mail: " + email + "\n";
                    mail.IsBodyHtml = false;

                    // 3. ENVIAR O E-MAIL
                    //Criar uma instância da classe SmtpClient
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.seudominio.com"; //"smtp.seudominio.com"
                    smtp.Port = 587;
                    smtp.Credentials = new System.Net.NetworkCredential("contato@seudominio.com", "suasenha");
                    smtp.Send(mail);

                    //LIMPAR A MEMÓRIA
                    mail.Dispose();
                    smtp.Dispose();
                }
            }
            catch (Exception ex)
            {
                Msg.Text = "Houve uma falha ao enviar o e-mail. " + ex.Message;
                TratamentoExcecao exx = new TratamentoExcecao();
                exx.FileName = "log.txt";
                exx.SaveException(ex);
            }
        }
    }
}
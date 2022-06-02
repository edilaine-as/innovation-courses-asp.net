using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//colocar nas referencias do projeto a dll chamada de appDataBase está na pasta bin\source\appDataBaseb 4.0
using AppDatabase;



namespace Projeto04
{
    public partial class Usuarios : System.Web.UI.Page
    {
        //string de conexão com o banco de dados acces
        //ref: https://www.connectionstrings.com
        string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/DBADST2022.accdb") + ";Persist Security Info=False;";

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadUsuarios();
        }

        protected void Salvar_Click(object sender, EventArgs e)
        {
            if(NomeAcessoExiste(Nome.Text))
            {
                Mensagem.Text = "Esse nome de acesso já está cadastrado para outro usuário";
            }
            else
            {
                AppDatabase.OleDBTransaction db = new OleDBTransaction();
                db.ConnectionString = conexao;
                string comando;

                if (Codigo.Text == "")
                {
                    //filter se ouver mais de um apostofro, ele substitiu o apostofro por 2, ai o banco não entende como um delimitador
                    comando = "INSERT INTO Usuarios(Nome,NomeAcesso,Senha) VALUES('" + Utilities.Filter(Nome.Text) + "','" + Utilities.Filter(NomeAcesso.Text) + "','" + Utilities.Filter(Senha.Text) + "');";
                    db.Query(comando);
                }
                else
                {
                    comando = "UPDATE Usuarios SET nome='" + Utilities.Filter(Nome.Text) + "', nomeAcesso='" + Utilities.Filter(NomeAcesso.Text) + "', senha='" + Utilities.Filter(Senha.Text) + "' WHERE codigo =" + Codigo.Text;
                    db.Query(comando);
                }

                LoadUsuarios();
                LimparControles();
            }
            
        }


        //CARREGA O GRID COM OS DADOS DA TABELA
        protected void LoadUsuarios()
        {
            string comando = "SELECT codigo, nome, nomeAcesso FROM usuarios ORDER BY nome ASC";
            AppDatabase.OleDBTransaction db = new OleDBTransaction();
            db.ConnectionString = conexao;
            System.Data.DataTable tb = (System.Data.DataTable)db.Query(comando);

            ExibirUsuarios.DataSource = tb;
            ExibirUsuarios.DataBind(); 

        }

        protected void LimparControles()
        {
            Codigo.Text = "";
            Nome.Text = "";
            NomeAcesso.Text = "";
            Senha.Text = "";
            Deletar.Visible = false;
        }


        //CARREGA CAMPOS DE ACORDO COM CODIGO SELECIONADO
        protected void ExibirUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            Codigo.Text += ExibirUsuarios.SelectedRow.Cells[1].Text;

            string comando = "SELECT * FROM Usuarios WHERE Codigo=" + Codigo.Text;

            AppDatabase.OleDBTransaction db = new OleDBTransaction();
            db.ConnectionString = conexao;
            System.Data.DataTable tb = (System.Data.DataTable)db.Query(comando);

            Nome.Text = tb.Rows[0]["Nome"].ToString();
            NomeAcesso.Text = tb.Rows[0]["NomeAcesso"].ToString();
            Senha.Text = tb.Rows[0]["Senha"].ToString();
            Deletar.Visible = true;

        }

        protected void Deletar_Click(object sender, EventArgs e)
        {
            AppDatabase.OleDBTransaction db = new OleDBTransaction();
            db.ConnectionString = conexao;
            string comando;

            comando = "DELETE FROM Usuarios WHERE codigo=" + Codigo.Text;
            db.Query(comando);
            LoadUsuarios();
            LimparControles();
           
        }

        protected bool NomeAcessoExiste(string nomeAcesso)
        {

            AppDatabase.OleDBTransaction db = new OleDBTransaction();
            db.ConnectionString = conexao;

            string comando = "SELECT * FROM Usuarios WHERE nomeAcesso='" + nomeAcesso + "'";

            System.Data.DataTable tb = (System.Data.DataTable)db.Query(comando);

            if(tb.Rows.Count > 0)
            {
                return false;
            }
            else
            {
                return true;
            }

        }
    }
}
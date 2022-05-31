<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Projeto04.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="margin-top-60">
            <div class="row"> 
                <!--Formulário-->
                <div class="col-6">
                    <div class="box margin-right-20">
                        <asp:Label ID="Mensagem" runat="server" ></asp:Label>
                        <br />
                        <asp:Label ID="Codigo" runat="server" Text=""></asp:Label>
                        <br />
                        <label>NOME</label>
                        <asp:TextBox ID="Nome" runat="server"></asp:TextBox>
                        <label>NOME ACESSO</label>
                        <asp:TextBox ID="NomeAcesso" runat="server"></asp:TextBox>
                        <label>SENHA</label>
                        <asp:TextBox ID="Senha" runat="server"></asp:TextBox>
                        <br />
                        <asp:Button ID="Salvar" OnClick="Salvar_Click" runat="server" Text="Salvar" />
                    </div>                
                </div>
                <div class="col-6">
                    <asp:GridView AutoGenerateSelectButton="true" OnSelectedIndexChanged="ExibirUsuarios_SelectedIndexChanged" ID="ExibirUsuarios" CellPadding="8" Width="100%" BorderColor="#c0c0c0" runat="server"></asp:GridView>
                </div>
            </div>
        </div>


</asp:Content>

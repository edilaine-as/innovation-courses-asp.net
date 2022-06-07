<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Projeto04.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5">
        <div class="row">
            <div class="col-4">
                <h2>Entrar</h2>
                <br />
                <asp:Label ID="Mensagem" runat="server" />
                <br />
                <asp:TextBox ID="NomeAcesso" runat="server" placeholder="Usuário" />
                <asp:TextBox ID="Senha" runat="server" placeholder="Senha" />
                <asp:Button ID="Entrar" OnClick="Entrar_Click" Text="Entrar" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>

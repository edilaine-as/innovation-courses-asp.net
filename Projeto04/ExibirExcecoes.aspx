<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="ExibirExcecoes.aspx.cs" Inherits="Projeto04.ExibirExcecoes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  

     <div class="margin-top-60">
        <div>
            <h1>Log de Exceções da Aplicação</h1>
            <br />
            <br />
            <asp:Label ID = "Excecoes" runat="server"></asp:Label>

            <asp:Button ID="Button1" OnClick="Button1_Click1" runat="server" Text="Limpar Log" />
        </div>
    </div>
</asp:Content>

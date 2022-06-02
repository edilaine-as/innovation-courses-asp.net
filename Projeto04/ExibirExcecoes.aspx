<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="ExibirExcecoes.aspx.cs" Inherits="Projeto04.ExibirExcecoes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">       
    <div class="mt-5 mb-2 container">
        <div class="text-center mb-5 mt-5">
        <h1>Log de Exceções da Aplicação</h1>
    </div>
    <hr />
        <asp:Label ID = "Excecoes" runat="server"></asp:Label>
        <asp:Button ID="Button1" OnClick="Button1_Click1" runat="server" Text="Limpar Log" />
    </div>
    
</asp:Content>

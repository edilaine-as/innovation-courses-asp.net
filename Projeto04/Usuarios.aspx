<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Projeto04.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .danger{
            background-color: #dc3545 !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container mt-5">
            <div class="text-center mb-2 mt-5">
                <h1>Cadastrar usuário</h1>
                <hr />
            </div>
            <div class="row d-flex justify-content-center"> 
                <!--Formulário-->
                <div class="col-6">
                    <asp:Label ID="Codigo" Visible="false" CssClass="d-flex justify-content-end" runat="server" Text=""></asp:Label>
                    <asp:Label ID="Mensagem" CssClass="d-flex justify-content-end" runat="server" ></asp:Label><br />
                    <asp:TextBox ID="Nome" placeholder="Nome" CssClass="input-group mb-3" runat="server"></asp:TextBox>
                    <asp:TextBox ID="NomeAcesso" placeholder="Usuário" CssClass="input-group mb-3" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Senha" placeholder="Senha" CssClass="input-group mb-3" runat="server"></asp:TextBox>
                    <div class="w-100 d-flex justify-content-center mb-lg-0 mb-sm-5 mb-5">
                        <asp:Button Text="Salvar" Visible="true" ID="Salvar" OnClick="Salvar_Click" runat="server" CssClass="btn btn-primary w-50" />
                        <asp:Button Text="Deletar" Visible="false" ID="Deletar" OnClick="Deletar_Click" runat="server" CssClass="btn btn-danger danger w-50" />
                    </div>            
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-12">
                    <asp:GridView CssClass="table table-striped" AutoGenerateSelectButton="true" OnSelectedIndexChanged="ExibirUsuarios_SelectedIndexChanged" BorderStyle="None" ID="ExibirUsuarios" CellPadding="8" Width="100%" runat="server"></asp:GridView>
                </div>
            </div>
                
            
        </div>


</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Projeto04.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .danger{
            background-color: #dc3545 !important;
        }
        .delete{
            padding: 10px;
            position: relative;
            right: 25px;
            border: none;
            background: none;
        }
        .icon-delete{
            color: red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container mt-5">
            <div class="text-center mb-2 mt-5">
                <h1>Usuários</h1>
                <hr />
            </div>

            <div class="my-4">
                <div class="d-flex justify-content-between align-items-center flex-wrap">
                    <div>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#cadUser">Pressione para cadastrar!</button>
                    </div>
                    <div>
                        <asp:Label ID="Mensagem" class="alert alert-danger" role="alert" Visible="false" runat="server" ></asp:Label><br />   
                    </div>
                </div>
            </div>
            
            <!--
            data-bs-toggle="modal" data-bs-target="#cadUser"
            -->

            <!-- modal -->
            <div class="modal fade" id="cadUser" tabindex="-1" aria-labelledby="cadUserLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="cadUserLabel">Cadastro de usuário</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fechar"></button>
                  </div>
                  <div class="modal-body">
                    <!--formulário-->
                    <asp:Label ID="Codigo" Visible="false" CssClass="d-flex justify-content-end" runat="server" Text=""></asp:Label>  
                    <asp:TextBox ID="Nome" placeholder="Nome" CssClass="input-group mb-3" runat="server"></asp:TextBox>
                    <asp:TextBox ID="NomeAcesso" placeholder="Usuário" CssClass="input-group mb-3" runat="server"></asp:TextBox>
                    <asp:TextBox ID="Senha" placeholder="Senha" CssClass="input-group mb-3" runat="server"></asp:TextBox>
                  </div>
                  <div class="modal-footer d-flex justify-content-between">
                    <!--botoes-->
                    <div>
                        <i class="fa-solid fa-trash-can fa-xl icon-delete"><asp:Button Text="" Visible="false" ID="Deletar" CssClass="delete" OnClick="Deletar_Click" runat="server"/></i>
                    </div>
                    <div>
                        <asp:Button ID="Fechar" CssClass="btn btn-secondary" data-bs-dismiss="modal" runat="server" Text="Fechar" />
                        <asp:Button Text="Salvar" Visible="true" ID="Salvar" OnClick="Salvar_Click" runat="server" CssClass="btn btn-primary" />
                    </div>
                    
                    
                  </div>
                </div>
              </div>
            </div>

            <!--tabela-->
            <div class="row mt-1">
                <section class="content">
                    <div class="container-fluid table-responsive p-0">
                        <asp:GridView CssClass="table table-striped table-bordered" AutoGenerateSelectButton="true" OnSelectedIndexChanged="ExibirUsuarios_SelectedIndexChanged" BorderStyle="None" ID="ExibirUsuarios" CellPadding="8" Width="100%" runat="server"></asp:GridView>
                    </div>
                </section>
            </div>
            
        </div>
        
</asp:Content>

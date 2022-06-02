<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="FaleConosco.aspx.cs" Inherits="Projeto04.FaleConosco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mt-5">
        <div class="text-center mb-5 mt-5">
            <h1>Fale Conosco</h1>
            <hr />
            <div class="my-5">
                <h2>Nós podemos te ajudar!</h2>
                <p>Sinta-se livre para nos pedir ajuda e sugerir melhorias em nossa unidade de ensino.</p>
            </div>
        </div>
        <div class="row mt-5 mb-5">
            <asp:Label ID="Msg" runat="server" ForeColor="red"></asp:Label>
            <div class="col-md-6 col-sm-12">
                <asp:TextBox ID="Nome" placeholder="Nome" CssClass="input-group mb-3" MaxLength="100" runat="server"></asp:TextBox>

                <asp:TextBox ID="Email" placeholder="E-mail" CssClass="input-group mb-3" MaxLength="256" runat="server"></asp:TextBox>

                <asp:TextBox ID="Mensagem" placeholder="Mensagem" CssClass="input-group mb-3" TextMode="MultiLine" MaxLength="256" Rows="12" runat="server"></asp:TextBox>

                <div class="w-100 d-flex justify-content-center mb-lg-0 mb-sm-5 mb-5">
                    <asp:Button Text="Enviar" ID="Button1" OnClick="Enviar_Click" runat="server" CssClass="btn btn-primary w-50" />
                </div>

            </div>
            <div class="col-md-1"></div>
            <div class="col-md-5 col-sm-12 info">
                <div class="d-flex mb-5 align-items-center" style="align-items=center;">
                    <i class="fa-solid fa-location-dot fa-2x"></i>
                    <div class="m-auto">
                        <p class="desc-icon"><strong>Fatec - Americana</strong></p>
                        <p class="desc-icon">R. Emílio de Menezes, s/n – Vila Amorim</p>
                    </div>
                </div>
                <div class="d-flex mb-5 align-items-center">
                    <i class="fa-solid fa-phone fa-2x"></i>
                    <div class="m-auto">
                        <p class="desc-icon" style="line-height: 56px">(19) 3406-5776</p>
                    </div>
                </div>
                <div class="d-flex mb-5 align-items-center">
                    <i class="fa-solid fa-envelope fa-2x"></i>
                    <div class="m-auto">
                        <p class="desc-icon" style="line-height: 56px">f004acad@cps.sp.gov.br</p>
                    </div>
                </div>
                <hr />
                <div class="d-flex justify-content-center align-items-center" style="height: 65px; gap: 50px">
                    <a href="https://pt-br.facebook.com/fatecamoficial/" target="_blank"><i class="fa-brands fa-facebook fa-2x"></i></a>
                    <a href="https://www.instagram.com/fatecamoficial/" target="_blank"><i class="fa-brands fa-instagram-square fa-2x"></i></a>
                    <a href="https://br.linkedin.com/company/fatec" target="_blank"><i class="fa-brands fa-linkedin fa-2x"></i></a>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="FaleConosco.aspx.cs" Inherits="Projeto04.FaleConosco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
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
                <label>Nome</label>
                <asp:TextBox ID="Nome" CssClass="input-group mb-3" MaxLength="100" runat="server"></asp:TextBox>

                <label>E-mail</label>
                    <asp:TextBox ID="Email" CssClass="input-group mb-3" MaxLength="256" runat="server"></asp:TextBox>

                <label>Mensagem</label>
                <asp:TextBox ID="Mensagem" CssClass="input-group mb-3" TextMode="MultiLine" MaxLength="256" Rows="5" runat="server"></asp:TextBox>

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
        <!--<div class="row mb-5">
            <div style="height:500px">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3679.6919946833546!2d-47.3523499850375!3d-22.73968678509704!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94c89bea5cdb94f9%3A0xffb368bd91ea12ae!2sFatec%20Americana%20-%20Faculdade%20de%20Tecnologia%20de%20Americana%20Ministro%20Ralph%20Biasi!5e0!3m2!1spt-BR!2sbr!4v1651598924325!5m2!1spt-BR!2sbr" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
        </div>-->
    </div>

</asp:Content>

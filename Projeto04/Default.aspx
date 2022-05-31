<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Projeto04.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="flexslider">
        <ul class="slides">
            <li>
                <img src="Imagem/banner0.png" />
            </li>

            <li>
                <img src="Imagem/banner1.png" />
            </li>

            <li>
                <img src="Imagem/banner2.png" />
            </li>

            <li>
                <img src="Imagem/banner3.png" />
            </li>

            <li>
                <img src="Imagem/banner4.png" />
            </li>

        </ul>
    </div>

    <script>
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide",
                rtl: true
            });
        });
    </script>


    <div class="margin-top-60">
        <div class="row">


            <div class="col-3">
                <div class="box border margin-right-20">
                    <a href="https://www.instagram.com/fatecsp/?hl=pt">
                        <img width="100%" src="Imagem/instagram.png" /></a>
                </div>
                <div>
                    <br />
                    <center><h1>Instagram</h1> </center>
                    <br />
                    <!-- Adicione um texto aqui!-->
                </div>
            </div>


            <div class="col-3">
                <div class="box border margin-right-20">
                    <a href="https://pt-br.facebook.com/fatecspoficial/">
                        <img width="100%" src="Imagem/facebook-icone-icon-1.png" /></a>
                </div>
                <div>
                    <br />
                    <center><h1>Facebook</h1> </center>
                    <br />
                    <!-- Adicione um texto aqui!-->
                </div>
            </div>


            <div class="col-3">
                <div class="box border margin-right-20">
                    <a href="https://www.microsoft.com/pt-br/microsoft-teams/group-chat-software">
                        <img width="100%" src="Imagem/teams.png" /></a>
                </div>
                <div>
                    <br />
                    <center><h1>Teams</h1> </center>
                    <br />
                    <!-- Adicione um texto aqui!-->
                </div>
            </div>


            <div class="col-3">
                <div class="box border margin-right-20">
                    <a href="https://siga.cps.sp.gov.br/aluno/login.aspx">
                        <img width="100%" src="Imagem/siga.png" /></a>
                </div>
                <div>
                    <br />
                    <center><h1>Siga</h1> </center>
                    <br />
                    <!-- Adicione um texto aqui!-->
                </div>
            </div>

        </div>
    </div>

</asp:Content>

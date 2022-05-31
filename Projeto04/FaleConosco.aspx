<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="FaleConosco.aspx.cs" Inherits="Projeto04.FaleConosco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="margin-top-60">
        <h1>Fale Conosco</h1>
        <br />
        <br />
        <div class="row">
            <!--FORMULÁRIO-->
            <div class="col-6">
                <div class="box border margin-right-20">
                    <asp:Label ID="Msg" runat="server" ForeColor="red"></asp:Label>
                    <br />
                    <br />


                    <label>MENSAGEM</label>
                    <asp:TextBox ID="Mensagem" TextMode="MultiLine" MaxLength="256" Rows="6" runat="server"></asp:TextBox>

                    <label>NOME</label>
                    <asp:TextBox ID="Nome" MaxLength="100" runat="server"></asp:TextBox>

                    <label>E-MAIL</label>
                    <asp:TextBox ID="Email" MaxLength="256" runat="server"></asp:TextBox>
                    <br />
                    <br />

                    <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />
                </div>
            </div>

            <!--MAPA LOCALIZAÇÃO-->
            <div class="col-6">
                <div style="height:500px">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3679.6919946833546!2d-47.3523499850375!3d-22.73968678509704!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94c89bea5cdb94f9%3A0xffb368bd91ea12ae!2sFatec%20Americana%20-%20Faculdade%20de%20Tecnologia%20de%20Americana%20Ministro%20Ralph%20Biasi!5e0!3m2!1spt-BR!2sbr!4v1651598924325!5m2!1spt-BR!2sbr" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>

        </div>
    </div>

</asp:Content>

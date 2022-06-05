<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Cursos.aspx.cs" Inherits="Projeto04.Sobre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .course-box{
            text-align: center;
            margin-bottom: 50px;
        }
        .course-box i, .course-box h4, .course-box .btn-secondary{
            transition: .5s;
        }
        .course-box i{
            font-size: 36px;
            margin-bottom: 20px;
            color: #444;
        }
        .course-box h4{
            font-size: 24px;
            margin-bottom: 20px;
        }
        .course-box > i:hover, .course-box > h4:hover{
            color: #CD851C;
        }
        .course-box > .btn-secondary:hover{
            background-color: #CD851C;
            border-color: #CD851C;
        }
        .course-box a, .course-box a:hover{
            text-decoration: none;
            color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--SEÇÃO-->
    <div class="container mt-5">
        <div class="text-center mb-5 mt-5">
            <h1>Conheça nossos Cursos</h1>
            <hr />
        </div>
        <div class="row my-5">
            <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                <img src="Imagem/cursos-02.jpg" class="img-fluid" alt="...">
            </div>
            <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                <h5 class="mt-lg-0 mt-md-0 mt-sm-3 mt-3">Uma equipe qualificada</h5>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                <p>Mauris iaculis rhoncus lacus, a auctor nisl pellentesque eget. Nam feugiat leo felis, quis dapibus nunc rutrum id. Maecenas dapibus felis in turpis tempor sodales.</p>
                <p>Mauris iaculis rhoncus lacus, a auctor nisl pellentesque eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam feugiat leo felis, quis dapibus nunc rutrum id. Maecenas dapibus felis in turpis tempor sodales.</p>
                <p>Quisque eleifend eleifend pellentesque.</p>
                <p>Mauris iaculis rhoncus lacus, a auctor nisl pellentesque eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam feugiat leo felis, quis dapibus nunc rutrum id. Maecenas dapibus felis in turpis tempor sodales.</p>
            </div>
        </div>

        <!--SEÇÃO SERVIÇOS-->
        <div id="service-area">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h2>Nossos cursos</h2>
                    </div>
                    <div class="col-md-4 course-box mt-5">
                        <i class="fa-brands fa-java"></i>
                        <h4>Desenvolvimento Java</h4>
                        <p>Mauris iaculis rhoncus lacus, a auctor nisl pellentesque eget. Nam feugiat leo felis, quis dapibus nunc rutrum id. Maecenas dapibus felis in turpis tempor sodales.</p>
                        <button class="btn btn-secondary" type="button"><a href="#">Saiba mais!</a></button>
                    </div>
                    <div class="col-md-4 course-box mt-5">
                        <i class="fab fa-android"></i>
                        <h4>Desenvolvimento Android</h4>
                        <p>Mauris iaculis rhoncus lacus, a auctor nisl pellentesque eget. Nam feugiat leo felis, quis dapibus nunc rutrum id. Maecenas dapibus felis in turpis tempor sodales.</p>
                        <button class="btn btn-secondary" type="button"><a href="#">Saiba mais!</a></button>
                    </div>
                    <div class="col-md-4 course-box mt-5">
                        <i class="fas fa-code"></i>
                        <h4>Desenvolvimento WEB</h4>
                        <p>Mauris iaculis rhoncus lacus, a auctor nisl pellentesque eget. Nam feugiat leo felis, quis dapibus nunc rutrum id. Maecenas dapibus felis in turpis tempor sodales.</p>
                        <button class="btn btn-secondary" type="button"><a href="#">Saiba mais!</a></button>
                    </div>
                </div>
        </div>
        </div>
        
    </div>

    
</asp:Content>

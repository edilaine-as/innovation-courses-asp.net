<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Projeto04.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="min-vw-100">
        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="Imagem/fundo-01.png" class="d-block w-100 background" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Lorem Ipsum</h5>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris iaculis rhoncus lacus, a auctor nisl pellentesque eget.</p>
                   </div>
                </div>
                <div class="carousel-item">
                    <img src="Imagem/fundo-02.png" class="d-block w-100 background" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Lorem Ipsum</h5>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris iaculis rhoncus lacus, a auctor nisl pellentesque eget.</p>
                   </div>
                </div>
                <div class="carousel-item">
                    <img src="Imagem/fundo-03.png" class="d-block w-100 background" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Lorem Ipsum</h5>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris iaculis rhoncus lacus, a auctor nisl pellentesque eget.</p>
                   </div>
                </div>
                <div class="carousel-item">
                    <img src="Imagem/fundo-04.png" class="d-block w-100 background" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Lorem Ipsum</h5>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris iaculis rhoncus lacus, a auctor nisl pellentesque eget.</p>
                   </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
            </button>
        </div>

        <!--SEÇÃO SOBRE-->
        <div class="container my-5">
            <h1 class="text-center">Sobre a Innovation Courses</h1>
            <hr />
            <div class="row my-5">
                <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                    <img src="Imagem/sobre-01.png" class="img-fluid" alt="...">
                </div>
                <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                    <h5 class="mt-lg-0 mt-md-0 mt-sm-3 mt-3">Uma instituição acolhedora</h5>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <p>Mauris iaculis rhoncus lacus, a auctor nisl pellentesque eget. Nam feugiat leo felis, quis dapibus nunc rutrum id. Maecenas dapibus felis in turpis tempor sodales.</p>
                    <p>Mauris iaculis rhoncus lacus, a auctor nisl pellentesque eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam feugiat leo felis, quis dapibus nunc rutrum id. Maecenas dapibus felis in turpis tempor sodales.</p>
                    <p>Quisque eleifend eleifend pellentesque.</p>
                    <p>Quisque eleifend eleifend pellentesque:</p>
                    <ul class="ul-about">
                        <li><i class="fa-solid fa-check"></i>Mauris iaculis rhoncus</li>
                        <li><i class="fa-solid fa-check"></i>Auctor nisl pellentesque eget</li>
                        <li><i class="fa-solid fa-check"></i>Nam feugiat leo felis</li>
                        <li><i class="fa-solid fa-check"></i>Mauris iaculis rhoncus</li>
                        <li><i class="fa-solid fa-check"></i>Auctor nisl pellentesque eget</li>
                        <li><i class="fa-solid fa-check"></i>Nam feugiat leo felis</li>
                    </ul>
                </div>
            </div>
        </div>

        <!--SEÇÃO DADOS-->
        <div id="data-area" class="parallax-window">
            <!--PARALLAX-->
            <div class="container">
                <div class="row">
                    <div class="col-md-3 circle-box">
                        <div id="circleA"></div>
                        <p>Mauris iaculis</p>
                    </div>
                    <div class="col-md-3 circle-box">
                        <div id="circleB"></div>
                        <p>Mauris iaculis</p>
                    </div>
                    <div class="col-md-3 circle-box">
                        <div id="circleC"></div>
                        <p>Mauris iaculis</p>
                    </div>
                    <div class="col-md-3 circle-box">
                        <div id="circleD"></div>
                        <p>Mauris iaculis</p>
                    </div>
                </div>
            </div>
        </div>

        <!--SEÇÃO-->
        <div class="container my-5">
            <div class="row my-5">
                <div class="col-lg-6 col-md-12 col-sm-12 col-12 section-order">
                    <h5 class="mt-lg-0 mt-md-0 mt-sm-3 mt-3">Estude em qualquer lugar</h5>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <p>Mauris iaculis rhoncus lacus, a auctor nisl pellentesque eget. Nam feugiat leo felis, quis dapibus nunc rutrum id. Maecenas dapibus felis in turpis tempor sodales.</p>
                    <p>Mauris iaculis rhoncus lacus, a auctor nisl pellentesque eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam feugiat leo felis, quis dapibus nunc rutrum id. Maecenas dapibus felis in turpis tempor sodales.</p>
                    <p>Quisque eleifend eleifend pellentesque.</p>
                    <p>Mauris iaculis rhoncus lacus, a auctor nisl pellentesque eget. Nam feugiat leo felis, quis dapibus nunc rutrum id. Maecenas dapibus felis in turpis tempor sodales.</p>
                    <p>Mauris iaculis rhoncus lacus, a auctor nisl pellentesque eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam feugiat leo felis, quis dapibus nunc rutrum id. Maecenas dapibus felis in turpis tempor sodales.</p>
                   
                </div>
                <div class="col-lg-6 col-md-12 col-sm-12 col-12 section-order">
                    <img src="Imagem/sobre-02.jpg" class="img-fluid" alt="...">
                </div>
            </div>
        </div>

    </div>

</asp:Content>

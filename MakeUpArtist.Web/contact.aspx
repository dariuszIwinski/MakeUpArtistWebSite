<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="MakeUpArtist.Web._default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <%-- scripts --%>
    <script src="scripts/external/jquery/jquery-2.0.3.min.js"></script>
    <script src="scripts/external/bootstrap/bootstrap.min.js"></script>

    <%-- styles --%>
    <link href="content/css/external/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
    <link href="content/css/general.css" rel="stylesheet" />
    <%-- WebSite Title --%>
    <title>Nancy's style</title>
</head>
<body>
    <%-- Background video --%>
    <%--  <video poster="/img/polina.jpg" id="bgvid" playsinline autoplay muted>
        <source src="http://thenewcode.com/assets/videos/polina.webm" type="video/webm" />
        <source src="http://thenewcode.com/assets/videos/polina.mp4" type="video/mp4" />
    </video>--%>
    <%-- Logo --%>
    <div class="container">
        <div class="row">
            <div class="col-xs-4 col-xs-offset-4">
                <div class="logo_strony">
                    Make by 
                    Nancy
                </div>
            </div>
        </div>
        <div class="row text-right">

            <a href="#"><span class="fa fa-facebook"></span></a>
            <a href="#"><span class="fa fa-instagram"></span></a>
            <a href="#"><span class="fa fa-youtube-play"></span></a>
            <a href="#"><span class="fa fa-pinterest-square"></span></a>
        </div>
    </div>
    <%-- Navigation --%>
    <nav class="navbar navbar-inverse transparent">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="navbar-collapse collapse">

            <ul class="nav navbar-nav">
                <li><a href="default.aspx">Nancy's style</a></li>
                <li><a href="offer.aspx">Oferta</a></li>
                <li><a href="contact.aspx">Kontakt</a></li>
                <li><a href="inspirations.aspx">Inspiracje</a></li>
            </ul>

        </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-xs-10 col-xs-offset-1">
                <div class="opac">
                    <h1 class="h1 text-center">Kontakt</h1>
                    <hr />
                    <div class="row">
                        <div class="panel col-xs-10 col-xs-offset-1">
                            <div class="panel-headin">
                                <h3 class="h3">Dane do kontaktu</h3>
                                <hr />
                            </div>
                            <div class="panel-body panel-body-small  contact">
                                <div class="col-xs-6">

                                    <div class="fa fa-phone-square">  Telefon:</div>
                                    <a>+48 111 222 333</a>
                                </div>
                                <div class="col-xs-6">

                                    <div class="fa fa-envelope">  E-mail:</div>
                                    <a>mail@mail.com</a>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="row">
                        <div class="panel col-xs-10 col-xs-offset-1">
                            <div class="panel-heading">
                                <h3 class="h3">Formularz</h3>
                                <hr />
                            </div>
                            <div class="panel-body panel-body-control">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label>Imię i nazwisko</label>
                                        <input type="text" class="form-control" id="exampleInputName2" placeholder="Podaj imię i nazwisko" />
                                    </div>
                                    <div class="form-group">
                                        <label>Email</label>
                                        <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Podaj swój adres email" />
                                    </div>
                                    <div class="form-group ">
                                        <label>Twoja wiadomość</label>
                                        <textarea class="form-control" placeholder="Wpisz treść wiadomości"></textarea>
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-default">Wyślij</button>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>

                </div>




            </div>
        </div>
    </div>
    

    <form id="form2" runat="server">
    </form>
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>

</body>
</html>

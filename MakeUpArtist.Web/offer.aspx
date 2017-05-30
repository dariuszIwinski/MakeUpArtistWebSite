<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="MakeUpArtist.Web._default" %>

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
        <div class="opac">
            <div class="row">
                <div class="col-xs-10 col-xs-offset-1">

                    <h1 class="h1 text-center">Oferta</h1>
                    <hr />
                    <div class="row">

                        <div class="panel col-xs-4">
                            <div class="panel-heading text-center">
                                <br />
                                <br />
                                <br />
                                <button type="button" class="btn btn-default btn-lg" style="border-radius: 0; min-height: 100px" data-toggle="modal" data-target="#myModal">
                                    <br />
                                    MAKIJAŻ DZIENNY<br />
                                    <br />
                                </button>
                                <br />
                                <br />
                                <br />
                                <br />
                            </div>


                        </div>
                        <div class="modal-border">
                            <div class="modal fade" id="myModal" role="dialog">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h3 class="h3">MAKIJAŻ DZIENNY</h3>
                                                                                   </div>
                                        <div class="modal-body">
                                            <ul>
                                                <li>indywidualna analiza kolorystyczna</li>
                                                <li>makijaż dzienny dopasowany do Twoich potrzeb</li>
                                            </ul>
                                        </div>
                                        <div class="modal-footer text-center">

                                            <div class="col-xs-6 text-center">
                                                Czas:
                                            <div style="color: rgb(179,142,80);">
                                                1h
                                            </div>
                                            </div>

                                            <div class="col-xs-6 text-center">
                                                Koszt:
                                        <div style="color: rgb(179,142,80);">80zł</div>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel col-xs-4">
                            <div class="panel-heading text-center">
                                <br />
                                <br />
                                <br />
                                <button type="button" class="btn btn-default btn-lg" style="border-radius: 0" data-toggle="modal" data-target="#myModal">
                                    <br />
                                    MAKIJAŻ WIECZOROWY<br />
                                    <br />
                                </button>
                                <br />
                                <br />
                                <br />
                                <br />
                            </div>


                        </div>
                        <div class="modal-border">
                            <div class="modal fade" id="myModal" role="dialog">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h3 class="h3">MAKIJAŻ DZIENNY</h3>
                                            <br />
                                            <hr />
                                        </div>
                                        <div class="modal-body">
                                            <ul>
                                                <li>indywidualna analiza kolorystyczna</li>
                                                <li>makijaż dzienny dopasowany do Twoich potrzeb</li>
                                            </ul>
                                        </div>
                                        <div class="modal-footer">

                                            <div class="col-xs-6">
                                                Czas:
                                            <div style="color: rgb(179,142,80);">
                                                1h
                                            </div>
                                            </div>

                                            <div class="col-xs-6">
                                                Koszt:
                                        <div style="color: rgb(179,142,80);">80zł</div>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel col-xs-4">
                            <div class="panel-heading text-center">
                                <br />
                                <br />
                                <br />
                                <button type="button" class="btn btn-default btn-lg" style="border-radius: 0" data-toggle="modal" data-target="#myModal">
                                    <br />
                                    CHARAKTERYZACJA<br />
                                    <br />
                                </button>
                                <br />
                                <br />
                                <br />
                                <br />
                            </div>


                        </div>
                        <div class="modal-border">
                            <div class="modal fade" id="myModal" role="dialog">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h3 class="h3">MAKIJAŻ DZIENNY</h3>
                                            <br />
                                            <hr />
                                        </div>
                                        <div class="modal-body">
                                            <ul>
                                                <li>indywidualna analiza kolorystyczna</li>
                                                <li>makijaż dzienny dopasowany do Twoich potrzeb</li>
                                            </ul>
                                        </div>
                                        <div class="modal-footer">

                                            <div class="col-xs-6">
                                                Czas:
                                            <div style="color: rgb(179,142,80);">
                                                1h
                                            </div>
                                            </div>

                                            <div class="col-xs-6">
                                                Koszt:
                                        <div style="color: rgb(179,142,80);">80zł</div>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
    <%--                <div class="panel col-xs-4">
                        <div class="panel-heading">
                            <h3 class="h3">MAKIJAŻ WIECZOROWY</h3>
                            <hr />
                        </div>
                        <div class="panel-body panel-body-big">
                            <ul>
                                <li>face SPA: ujędrniający masaż twarzy oraz pielęgnacja nawilżająca </li>
                                <li>indywidualna analiza kolorystyczna </li>
                                <li>makijaż wieczorowy dopasowany do Twoich potrzeb (wodoodporny, długotrwały) </li>
                                <li>aplikacja sztucznych rzęs </li>
                            </ul>
                        </div>
                        <div class="panel-footer text-center">
                            1,5h 110zł  
                        </div>
                    </div>

                    <div class="panel col-xs-4">
                        <div class="panel-heading">
                            <h3 class="h3">CHARAKTERYZACJA</h3>
                            <br />
                            <hr />
                        </div>
                        <div class="panel-body">
                            <ul>
                                <li>charakteryzacja filmowa</li>
                                <li>charakteryzacje halloweenowe</li>
                                <li>kinderballe</li>
                                <li>charakteryzacje cosplayowe</li>
                            </ul>
                        </div>
                        <div class="panel-footer text-center">
                            Koszt: do ustalenia
                            Czas: do ustalenia
                        </div>
                    </div>--%>
            


                <div class="row">
                    <div class="panel col-xs-4">
                            <div class="panel-heading text-center">
                                <br />
                                <br />
                                <br />
                                <button type="button" class="btn btn-default btn-lg" style="border-radius: 0" data-toggle="modal" data-target="#myModal">
                                    <br />
                                    FILM, TEATR, SESJA<br />
                                    <br />
                                </button>
                                <br />
                                <br />
                                <br />
                                <br />
                            </div>


                        </div>
                        <div class="modal-border">
                            <div class="modal fade" id="myModal" role="dialog">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h3 class="h3">MAKIJAŻ DZIENNY</h3>
                                            <br />
                                            <hr />
                                        </div>
                                        <div class="modal-body">
                                            <ul>
                                                <li>indywidualna analiza kolorystyczna</li>
                                                <li>makijaż dzienny dopasowany do Twoich potrzeb</li>
                                            </ul>
                                        </div>
                                        <div class="modal-footer">

                                            <div class="col-xs-6">
                                                Czas:
                                            <div style="color: rgb(179,142,80);">
                                                1h
                                            </div>
                                            </div>

                                            <div class="col-xs-6">
                                                Koszt:
                                        <div style="color: rgb(179,142,80);">80zł</div>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <div class="panel col-xs-4">
                            <div class="panel-heading text-center">
                                <br />
                                <br />
                                <br />
                                <button type="button" class="btn btn-default btn-lg" style="border-radius: 0" data-toggle="modal" data-target="#myModal">
                                    <br />
                                    WYKREUJ SWÓJ STYL<br />
                                    <br />
                                </button>
                                <br />
                                <br />
                                <br />
                                <br />
                            </div>


                        </div>
                        <div class="modal-border">
                            <div class="modal fade" id="myModal" role="dialog">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h3 class="h3">MAKIJAŻ DZIENNY</h3>
                                            <br />
                                            <hr />
                                        </div>
                                        <div class="modal-body">
                                            <ul>
                                                <li>indywidualna analiza kolorystyczna</li>
                                                <li>makijaż dzienny dopasowany do Twoich potrzeb</li>
                                            </ul>
                                        </div>
                                        <div class="modal-footer">

                                            <div class="col-xs-6">
                                                Czas:
                                            <div style="color: rgb(179,142,80);">
                                                1h
                                            </div>
                                            </div>

                                            <div class="col-xs-6">
                                                Koszt:
                                        <div style="color: rgb(179,142,80);">80zł</div>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <div class="panel col-xs-4">
                            <div class="panel-heading text-center">
                                <br />
                                <br />
                                <br />
                                <button type="button" class="btn btn-default btn-lg" style="border-radius: 0" data-toggle="modal" data-target="#myModal_WSSP">
                                    <br />
                                    WYKREUJ SWÓJ STYL <br />PRO
                                    <br />
                                </button>
                                <br />
                                <br />
                                <br />
                                <br />
                            </div>


                        </div>
                        <div class="modal-border">
                            <div class="modal fade" id="myModal_WSSP" role="dialog">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h3 class="h3">WYKREUJ SWÓJ STYL PRO</h3>
                                            <br />
                                            <hr />
                                        </div>
                                        <div class="modal-body">
                                            <ul>
                                                <li>indywidualna analiza kolorystyczna</li>
                                                <li>makijaż dzienny dopasowany do Twoich potrzeb</li>
                                            </ul>
                                        </div>
                                        <div class="modal-footer">

                                            <div class="col-xs-6">
                                                Czas:
                                            <div style="color: rgb(179,142,80);">
                                                1h
                                            </div>
                                            </div>

                                            <div class="col-xs-6">
                                                Koszt:
                                        <div style="color: rgb(179,142,80);">80zł</div>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                 <%--   <div class="panel col-xs-4">
                        <div class="panel-heading">
                            <h3 class="h3">FILM, TEATR, SESJA</h3>
                            <hr />
                        </div>
                        <div class="panel-body">
                            <ul>
                                <li>produkcje filmowe</li>
                                <li>sesje fotograficzne </li>
                                <li>współpraca z teatrem</li>
                            </ul>
                        </div>
                        <div class="panel-footer text-center">
                            brak danych
                        </div>
                    </div>

                    <div class="panel col-xs-4">
                        <div class="panel-heading">
                            <h3 class="h3">WYKREUJ SWÓJ STYL</h3>
                            <hr />
                        </div>
                        <div class="panel-body panel-body-big">
                            <ul>
                                <li>indywidualna nauka makijażu </li>
                                <li>analiza kolorystyczna oraz analiza urody </li>
                                <li>stworzenie wspólnie makijażu dziennego lub wieczorowego </li>
                                <li>indywidualnie dobrane rady pielęgnacyjne i triki makijażowe </li>
                                <li>zaprojektowanie dwóch personalizowanych facechartów makijażu (wieczorowego oraz dziennego), które możesz zabrać do domu  </li>
                                <li>kosmetyk niespodzianka, który pozwoli Ci na pierwsze przygody z makijażem </li>
                            </ul>
                        </div>
                        <div class="panel-footer text-center">
                            4h 350zł 
                        </div>
                    </div>
                    <div class="panel col-xs-4">
                        <div class="panel-heading">
                            <h3 class="h3">WYKREUJ SWÓJ STYL PRO</h3>
                            <hr />
                        </div>
                        <div class="panel-body panel-body-big">
                            <ul>
                                <li>jestem do Twojej dyspozycji przez cały dzień! </li>
                                <li>wspólne zakupy w galerii handlowej oraz wskazanie odpowiednich kosmetyków  </li>
                                <li>zaawansowana indywidualna nauka makijażu  </li>
                                <li>analiza kolorystyczna oraz analiza urody </li>
                                <li>analiza stanu skóry  </li>
                                <li>stworzenie wspólnie makijażu dziennego + wieczorowego </li>
                                <li>stworzenie personalizowanej listy kosmetyków pielęgnacyjnych i kolorowych </li>
                                <li>zaprojektowanie trzech personalizowanych facechartów makijażu (dzienny, wieczorowy x2) </li>
                                <li>kosmetyk niespodzianka, który pozwoli Ci na pierwsze przygody z makijażem </li>
                            </ul>
                        </div>
                        <div class="panel-footer text-center">
                            8h 950zł  
                        </div>
                    </div>--%>

                </div>
                        </div>
            </div>
        </div>
    </div>

    <form id="form3" runat="server">
    </form>
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>
</body>
</html>

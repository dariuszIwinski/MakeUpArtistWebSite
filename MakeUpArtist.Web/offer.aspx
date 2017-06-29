<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="offer.aspx.cs" Inherits="MakeUpArtist.Web.offer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="content/css/contact.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-xs-offset-0">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="h3 text-center">Oferta</h3>
                    </div>
                    <div class="panel-body">

                        <div class="panel panel-modal col-xs-12 col-md-4 col-md-offset-0">
                            <div class="panel-body panel-modal-body text-center col-xs-10 col-xs-offset-1 active">
                                <button type="button" class="btn btn-modal" data-toggle="modal" data-target="#myModalDay">Makijaż dzienny</button>
                            </div>
                        </div>
                        <div class="modal-border">
                            <div class="modal fade" id="myModalDay" role="dialog">
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
                        <div class="panel panel-modal col-xs-12 col-md-4 col-md-offset-0">
                            <div class="panel-body panel-modal-body text-center col-xs-10 col-xs-offset-1 active">
                                <button type="button" class="btn btn-modal" data-toggle="modal" data-target="#myModalNight">Makijaż wieczorowy</button>
                            </div>
                        </div>
                        <div class="modal-border">
                            <div class="modal fade" id="myModalNight" role="dialog">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h3 class="h3">MAKIJAŻ WIECZOROWY</h3>
                                        </div>
                                        <div class="modal-body">
                                            <ul>
                                                <li>face SPA: ujędrniający masaż twarzy oraz pielęgnacja nawilżająca</li>
                                                <li>indywidualna analiza kolorystyczna</li>
                                                <li>makijaż wieczorowy dopasowany do Twoich potrzeb (wodoodporny, długotrwały)</li>
                                                <li>aplikacja sztucznych rzęs</li>
                                            </ul>
                                        </div>
                                        <div class="modal-footer">
                                            <div class="col-xs-6 text-center">
                                                Czas:
                                                <div style="color: rgb(179,142,80);">
                                                    1,5-2 h
                                                </div>
                                            </div>

                                            <div class="col-xs-6 text-center">
                                                Koszt:
                                                <div style="color: rgb(179,142,80);">110zł</div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-modal col-xs-12 col-md-4 col-md-offset-0">
                            <div class="panel-body panel-modal-body text-center col-xs-10 col-xs-offset-1 active">
                                <button type="button" class="btn btn-modal" data-toggle="modal" data-target="#myModalCharacter">Charakteryzacja</button>
                            </div>
                        </div>
                        <div class="modal-border">
                            <div class="modal fade" id="myModalCharacter" role="dialog">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h3 class="h3">CHARAKTERYZACJA</h3>
                                        </div>
                                        <div class="modal-body">
                                            <ul>
                                                <li>charakteryzacja filmowa</li>
                                                <li>charakteryzacje halloweenowe</li>
                                                <li>kinderballe</li>
                                                <li>charakteryzacje cosplayowe</li>
                                            </ul>
                                        </div>
                                        <div class="modal-footer text-center">

                                            <div class="col-xs-6 text-center">
                                                Czas:
                                            <div style="color: rgb(179,142,80);">
                                                indywidualnie
                                            </div>
                                            </div>

                                            <div class="col-xs-6 text-center">
                                                Koszt:
                                        <div style="color: rgb(179,142,80);">indywidualnie</div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-modal col-xs-12 col-md-4 col-md-offset-0">
                            <div class="panel-body panel-modal-body text-center col-xs-10 col-xs-offset-1 active">
                                <button type="button" class="btn btn-modal" data-toggle="modal" data-target="#myModalFilm">FILM, TEATR, SESJA</button>
                            </div>
                        </div>
                        <div class="modal-border">
                            <div class="modal fade" id="myModalFilm" role="dialog">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h3 class="h3">FILM, TEATR, SESJA</h3>
                                        </div>
                                        <div class="modal-body">
                                            <ul>
                                                <li>produkcje filmowe</li>
                                                <li>współpraca z teatrem</li>
                                                <li>sesje fotograficzne</li>
                                            </ul>
                                        </div>
                                        <div class="modal-footer text-center">

                                            <div class="col-xs-6 text-center">
                                                Czas:
                                            <div style="color: rgb(179,142,80);">
                                                indywidualnie
                                            </div>
                                            </div>

                                            <div class="col-xs-6 text-center">
                                                Koszt:
                                        <div style="color: rgb(179,142,80);">indywidualnie</div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-modal col-xs-12 col-md-4 col-md-offset-0">
                            <div class="panel-body panel-modal-body text-center col-xs-10 col-xs-offset-1 active">
                                <button type="button" class="btn btn-modal" data-toggle="modal" data-target="#myModalYourStyle">Wykreuj swój styl</button>
                            </div>
                        </div>
                        <div class="modal-border">
                            <div class="modal fade" id="myModalYourStyle" role="dialog">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h3 class="h3">WYKREUJ SWÓJ STYL</h3>
                                        </div>
                                        <div class="modal-body">
                                            <ul>
                                                <li>indywidualna nauka makijażu</li>
                                                <li>analiza kolorystyczna oraz analiza urody</li>
                                                <li>stworzenie wspólnie makijażu dziennego lub wieczorowego</li>
                                                <li>indywidualnie dobrane rady pielęgnacyjne i triki makijażowe</li>
                                                <li>zaprojektowanie dwóch personalizowanych facechartów makijażu (wieczorowego oraz dziennego), które możesz zabrać do domu</li>
                                                <li>kosmetyk niespodzianka, który pozwoli Ci na pierwsze przygody z makijażem</li>
                                            </ul>
                                        </div>
                                        <div class="modal-footer text-center">

                                            <div class="col-xs-6 text-center">
                                                Czas:
                                            <div style="color: rgb(179,142,80);">
                                                4h
                                            </div>
                                            </div>

                                            <div class="col-xs-6 text-center">
                                                Koszt:
                                        <div style="color: rgb(179,142,80);">350zł</div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-modal col-xs-12 col-md-4 col-md-offset-0">
                            <div class="panel-body panel-modal-body text-center col-xs-10 col-xs-offset-1 active">
                                <button type="button" class="btn btn-modal" data-toggle="modal" data-target="#myModalYourStylePRO">
                                    Wykreuj swój styl<br />
                                    pro</button>
                            </div>
                        </div>
                        <div class="modal-border">
                            <div class="modal fade" id="myModalYourStylePRO" role="dialog">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h3 class="h3">WYKREUJ SWÓJ STYL PRO</h3>
                                        </div>
                                        <div class="modal-body">
                                            <ul>
                                                <li>jestem do Twojej dyspozycji przez cały dzień!</li>
                                                <li>wspólne zakupy w galerii handlowej oraz wskazanie odpowiednich kosmetyków</li>
                                                <li>zaawansowana indywidualna nauka makijażu </li>
                                                <li>analiza kolorystyczna oraz analiza urody</li>
                                                <li>analiza stanu skóry</li>
                                                <li>stworzenie wspólnie makijażu dziennego + wieczorowego</li>
                                                <li>stworzenie personalizowanej listy kosmetyków pielęgnacyjnych i kolorowych</li>
                                                <li>zaprojektowanie trzech personalizowanych facechartów makijażu (dzienny, wieczorowy x2)</li>
                                                <li>kosmetyk niespodzianka, który pozwoli Ci na pierwsze przygody z makijażem</li>
                                            </ul>
                                        </div>
                                        <div class="modal-footer text-center">

                                            <div class="col-xs-6 text-center">
                                                Czas:
                                            <div style="color: rgb(179,142,80);">
                                                8h
                                            </div>
                                            </div>

                                            <div class="col-xs-6 text-center">
                                                Koszt:
                                        <div style="color: rgb(179,142,80);">950zł</div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

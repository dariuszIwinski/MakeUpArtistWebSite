<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="MakeUpArtist.Web.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="content/css/contact.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-xs-offset-0">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="h3 text-center">Kontakt</h3>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="panel panel-default col-xs-8 col-xs-offset-2">
                                <div class="panel-heading">
                                    <h3 class="h4"  style="text-align: left">Dane do kontaktu</h3>
               
                                </div>
                                <div class="panel-body text-center">
                                    <div class="col-xs-6">
                                        <div class="fa fa-phone-square"></div>
                                        <a href="tel:781874163">+48 781 874 163</a>
                                    </div>
                                    <div class="col-xs-6">
                                        <div class="fa fa-envelope"></div>
                                        <a href="mailto:info@makebynancy.com">info@makebynancy.pl</a>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="row">
                            <div class="panel panel-default col-xs-8 col-xs-offset-2">
                                <div class="panel-heading">
                                    <h3 class="h4"  style="text-align: left">Formularz</h3>
                         
                                </div>
                                <div class="panel-body">
                                    <div class="form-horizontal col-md-8 col-md-offset-2">
                                        <div class="form-group">
                                            <label>Imię i nazwisko</label>
                                            <input type="text" class="form-control" id="txtContactName" runat="server" placeholder="Podaj imię i nazwisko" required />
                                        </div>
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="email" class="form-control" id="txtContactEmail" runat="server" placeholder="Podaj swój adres email" required />
                                        </div>
                                        <div class="form-group ">
                                            <label>Twoja wiadomość</label>
                                            <textarea class="form-control"  id="txtContactMessage" runat="server"  placeholder="Wpisz treść wiadomości" required></textarea>
                                        </div>
                                        <div class="text-center">
                                            <asp:Button ID="btnSend" CssClass="btn btn-default" runat="server" Text="Wyślij" OnClick="btnSend_Click" />
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

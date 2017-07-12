<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="actions.aspx.cs" Inherits="MakeUpArtist.Web.actions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
         <link href="content/css/contact.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-xs-offset-0">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="h3 text-center">Zarządzanie blogiem</h3>
                    </div>
                    <div class="panel-body col-xs-6">
                        <div class="row">
                            <div class="panel panel-default col-xs-8 col-xs-offset-2">
                                <div class="panel-heading">
                                    <h3 class="h4">Nowy post</h3>
               
                                </div>
                                <div class="panel-body text-center">
                                    <div class="col-xs-12">
                                        <div class="text-center">
                                            <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" Text="Przejdź" OnClick="Button1_Click" />
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                   
                    </div>
                                <div class="panel-body col-xs-6">
                        <div class="row">
                            <div class="panel panel-default col-xs-8 col-xs-offset-2">
                                <div class="panel-heading">
                                    <h3 class="h4">Edycja</h3>
               
                                </div>
                                <div class="panel-body text-center">
                                    <div class="col-xs-12">
                                        <div class="text-center">
                                            <asp:Button ID="Button3" CssClass="btn btn-default" runat="server" Text="Przejdź" OnClick="Button3_Click" />
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

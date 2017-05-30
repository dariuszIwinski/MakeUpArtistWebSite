<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="MakeUpArtist.Web.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="content/css/blog.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <%--            <div class="col-md-2">
                <div class="text-center">
                    <table class="table table-hover tblback" id="tableNavBlog">
                        <tr id="trFirst">
                            <td>
                                <a href="#" runat="server" id="aRecenzjeProd" onserverclick="aRecenzjeProd_ServerClick">
                                    <h4 class="h4">Recenzje kosmetyków
                                    </h4>
                                </a>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <a href="#" runat="server" onserverclick="aInspiracje_ServerClick" id="aInspiracje">
                                    <h4 class="h4">Inspiracje
                                    </h4>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="#" runat="server" onserverclick="aPielegnacje_ServerClick" id="aPielegnacje">
                                    <h4 class="h4">Pielęgnacje
                                    </h4>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="#" runat="server" onserverclick="aMetamorfozy_ServerClick" id="aMetamorfozy">
                                    <h4 class="h4">Metamorfozy
                                    </h4>
                                </a>
                            </td>
                        </tr>
                        <tr id="trLast">
                            <td>
                                <a href="#" runat="server" onserverclick="aEdukacja_ServerClick" id="aEdukacja">
                                    <h4 class="h4">Edukacja
                                    </h4>
                                </a>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>--%>
            <div class="col-md-12" style="margin: 0; padding: 0;">
                <div class="row" style="margin: 0; padding: 0;">
                    <div class="col-md-12" style="margin: 0; padding: 0;">
                        <div class="blogNav">
                            <ul class="list-inline">
                                <li>Inspiracje</li>
                                <li>Pielęgnacje</li>
                                <li>Metamorfozy</li>
                                <li>Edukacja</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <div class="panel panel-default">
                            <div class="panel-body text-center">
                                <h3 class="h3 text-center panel_header" runat="server" id="BlogHeader">News
                                </h3>
                                <div id="blogTitle" class="row" runat="server">
                                </div>
                                <div id="blogContent" class="row" runat="server">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- do usunięcia --->
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <div class="panel panel-default">
                            <div class="panel-body text-center">
                                <h3 class="h3 text-center panel_header">News
                                </h3>

                                <div class="col-md-4">
                                    <div class="panel">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-10 col-md-offset-1">
                                                    <img class="img-responsive" src="img/candice.jpg" />
                                                </div>
                                            </div>
                                            <div class="row text-center">
                                                <h4>To jest tytuł</h4>
                                                <hr style="margin: 0;" />
                                            </div>
                                            <div class="row">
                                                <span class="label label-success">Kategoria</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="panel">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-10 col-md-offset-1">
                                                    <img class="img-responsive" src="img/candice.jpg" />
                                                </div>
                                            </div>
                                            <div class="row text-center">
                                                <h4>To jest tytuł</h4>
                                                <hr style="margin: 0;" />
                                            </div>
                                             <div class="row">
                                                <span class="label label-success">Kategoria</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="panel">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-10 col-md-offset-1">
                                                    <img class="img-responsive" src="img/candice.jpg" />
                                                </div>
                                            </div>

                                            <div class="row text-center">
                                                <h4>To jest tytuł</h4>
                                                <hr style="margin: 0;" />
                                            </div>
                                             <div class="row">
                                                <h4><span class="label label-success">Kategoria</span></h4>
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

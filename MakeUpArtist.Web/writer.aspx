﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="writer.aspx.cs" Inherits="MakeUpArtist.Web.writer1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="content/css/contact.css" rel="stylesheet" />
    <script src="scripts/external/tinymce/jquery.tinymce.min.js"></script>
    <script src="scripts/external/tinymce/tinymce.min.js"></script>
    <script type="text/javascript">
        tinymce.init({
            selector: 'textarea',
            height: 500,
            theme: 'modern',
            encoding: "xml",
            plugins: [
                'advlist autolink lists link image charmap print preview hr anchor pagebreak',
                'searchreplace wordcount visualblocks visualchars code fullscreen',
                'insertdatetime media nonbreaking save table contextmenu directionality',
                'emoticons template paste textcolor colorpicker textpattern imagetools codesample toc help'
            ],
            toolbar1: 'undo redo | insert | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
            toolbar2: 'print preview media | forecolor backcolor emoticons | codesample help',
            image_advtab: true,
            templates: [
                { title: 'Test template 1', content: 'Test 1' },
                { title: 'Test template 2', content: 'Test 2' }
            ],
            content_css: [
                '//fonts.googleapis.com/css?family=Lato:300,300i,400,400i',
                '//www.tinymce.com/css/codepen.min.css'
            ],
            setup: function (editor) {
                editor.on('SaveContent', function (ed) {
                    ed.content = ed.content.replace(/&#39/g, "&apos");
                });
            }
        });
    </script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-xs-offset-0">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="h3 text-center">Nowy post</h3>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="panel panel-default col-xs-8 col-xs-offset-2">
                                <div class="panel-heading">
                                    <h3 class="h4">Tytuł</h3>
                                </div>
                                <div class="panel-body text-center">
                                    <div class="col-xs-12">
                                        <div class="text-center">
                                            <asp:TextBox CssClass="col-sm-10 col-sm-offset-1" ID="txtTitle" runat="server" required="required"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="panel panel-default col-xs-8 col-xs-offset-2">
                                <div class="panel-heading">
                                    <h3 class="h4">Kategoria</h3>
                                </div>
                                <div class="panel-body text-center">
                                    <div class="col-xs-12">
                                        <div class="text-center">

                                            <asp:DropDownList CssClass="col-sm-6 col-sm-offset-3 text-center" ID="ddlCategory" runat="server" Style="left: 0px; top: 0px; color: black;">
                                                <asp:ListItem Selected="True" Value="0">Recenzje produktów</asp:ListItem>
                                                <asp:ListItem Value="1">Nancy style inspiracje</asp:ListItem>
                                                <asp:ListItem Value="2">Pielęgnacje</asp:ListItem>
                                                <asp:ListItem Value="3">Metamorfozy</asp:ListItem>
                                                <asp:ListItem Value="4">Edukacja</asp:ListItem>
                                            </asp:DropDownList>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="panel panel-default col-xs-8 col-xs-offset-2">
                                <div class="panel-heading">
                                    <h3 class="h4">Zdjęcie</h3>
                                </div>
                                <div class="panel-body text-center">
                                    <div class="col-xs-12">
                                        <div class="text-center">
                                            <asp:TextBox CssClass="col-sm-10 col-sm-offset-1" ID="txtImage" runat="server" required="required"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="panel panel-default col-xs-8 col-xs-offset-2">
                                <div class="panel-heading">
                                    <h3 class="h4">Treść</h3>
                                </div>
                                <div class="panel-body text-center">
                                    <div class="col-xs-12">
                                        <div class="text-center">
                                            <asp:TextBox ID="txtBlogContent" runat="server" class="tinymce" Rows="40" TextMode="MultiLine" Columns="120" CssClass="tinymce" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default col-xs-8 col-xs-offset-2">
                            <div class="panel-heading">
                                <h3 class="h4">Zatwierdź</h3>
                            </div>
                            <div class="panel-body text-center">
                                <div class="col-xs-12">
                                    <div class="text-center">
                                        <asp:Button CssClass="btn btn-default text-center col-sm-4 col-sm-offset-4" ID="btnSend" runat="server" Text="Wyślij" CausesValidation="False" OnClick="btnSend_Click" />
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="writer.aspx.cs" Inherits="MakeUpArtist.Web.writer1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
            <div class="col-xs-12">
                <div class="opac">
                    <h1 class="h1 text-center">Dodaj post</h1>
                    <hr />
                    <div class="row">

                        <div class="col-xs-6">
                            <h4 class="h4 text-center">Tytuł</h4>
                            <div class="text-center">
                                <asp:TextBox CssClass="col-sm-10 col-sm-offset-1" ID="txtTitle" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <h4 class="h4 text-center">Kategoria</h4>
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
                    <br />
                    <hr />
                    <br />
                    <h4 class="h4 text-center">Treść</h4>
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-10 col-sm-offset-1">


                                <asp:TextBox ID="txtBlogContent" runat="server" class="tinymce" Rows="40" TextMode="MultiLine" Columns="120" CssClass="tinymce" />

                            </div>
                        </div>
                        <br />
                        <br />
                        <asp:Button CssClass="btn btn-default text-center col-sm-4 col-sm-offset-4" ID="btnSend" runat="server" Text="Wyślij" CausesValidation="False" OnClick="btnSend_Click" />
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

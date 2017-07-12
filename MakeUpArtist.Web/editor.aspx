<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="editor.aspx.cs" Inherits="MakeUpArtist.Web.editor" %>

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
                        <h3 class="h3 text-center">Edycja</h3>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="panel panel-default col-xs-8 col-xs-offset-2">
                                <div class="panel-heading">
                                    <h3 class="h4">Wybierz post</h3>
                                </div>
                                <div class="panel-body text-center">
                                    <div class="col-xs-12">
                                        <asp:DropDownList ID="ddlPostToEdit" CssClass="full-with col-xs-12 form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlPostToEdit_SelectedIndexChanged"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row" id="divDecide" runat="server" visible="false">
                            <div class="panel panel-default col-xs-8 col-xs-offset-2">
                                <div class="panel-heading">
                                    <h3 class="h4">Czy chcesz usunąć post?</h3>
                                </div>
                                <div class="panel-body text-center">
                                    <div class="col-xs-6">
                                        <asp:Button ID="btnDelete" CssClass="form-control" runat="server" Text="Tak" OnClick="btnDelete_Click" />
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:Button ID="btnEdit" CssClass="form-control" runat="server" Text="Nie" OnClick="btnEdit_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row" id="divDeleted" runat="server" visible="false">
                            <div class="panel panel-default col-xs-8 col-xs-offset-2">
                                <div class="panel-heading">
                                    <h3 class="h4">Usunięto!</h3>
                                </div>
                            </div>
                        </div>
                        <div class="row" id="titleEdit" runat="server" visible="false">
                            <div class="panel panel-default col-xs-8 col-xs-offset-2">
                                <div class="panel-heading">
                                    <h3 class="h4">Nowy tytuł</h3>
                                </div>
                                <div class="panel-body text-center">
                                    <div class="col-xs-12">
                                        <asp:TextBox ID="txtTitleEdit" runat="server" CssClass="form-control" placeholder="Nowa nazwa posta"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row" id="imgEdit" runat="server" visible="false">
                            <div class="panel panel-default col-xs-8 col-xs-offset-2">
                                <div class="panel-heading">
                                    <h3 class="h4">Nowe zdjęcie</h3>
                                </div>
                                <div class="panel-body text-center">
                                    <div class="col-xs-12">
                                        <asp:TextBox ID="txtImg" runat="server" CssClass="form-control" placeholder="http://adres.pl/nazwazdjecia.jpg"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row" id="postEdit" runat="server" visible="false">
                            <div class="panel panel-default col-xs-8 col-xs-offset-2">
                                <div class="panel-heading">
                                    <h3 class="h4">Nowa treść</h3>
                                </div>
                                <div class="panel-body text-center">
                                    <div class="col-xs-12">
                                        <asp:TextBox ID="txtPostEdit" runat="server" class="tinymce" Rows="40" TextMode="MultiLine" Columns="120" CssClass="tinymce"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row" id="saveChanges" runat="server" visible="false">
                        <div class="panel panel-default col-xs-8 col-xs-offset-2">
                            <div class="panel-heading">
                                <h3 class="h4">Zapisz zmiany</h3>
                            </div>
                            <div class="panel-body text-center">
                                <div class="col-xs-12">
                                    <asp:Button ID="btnSaveChanges" CssClass="btn btn-default" runat="server" Text="Zapisz" OnClick="btnSaveChanges_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row" id="divEdited" runat="server" visible="false">
                        <div class="panel panel-default col-xs-8 col-xs-offset-2">
                            <div class="panel-heading">
                                <h3 class="h4">Zapisano zmiany!</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

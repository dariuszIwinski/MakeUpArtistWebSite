<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MakeUpArtist.Web.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <%-- scripts --%>
    <script src="scripts/external/jquery/jquery-2.0.3.min.js"></script>
    <script src="scripts/external/bootstrap/bootstrap.min.js"></script>
    <script src="scripts/external/tinymce/jquery.tinymce.min.js"></script>
    <script src="scripts/external/tinymce/tinymce.min.js"></script>
    <script>
        tinymce.init({
            selector: 'textarea',
            height: 500,
            encoding: "xml",
            theme: 'modern',
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
            ]
        });
    </script>

    <%-- styles --%>
    <link href="content/css/external/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
    <link href="content/css/general.css" rel="stylesheet" />

    <%-- WebSite Title --%>
    <title>Nancy's style</title>
</head>
<body>
    <form id="form1" runat="server">
        <%-- Background video --%>
        <video poster="/img/polina.jpg" autoplay="autoplay" muted="muted" id="bgvid">
            <source src="http://thenewcode.com/assets/videos/polina.webm" type="video/webm" />
            <source src="http://thenewcode.com/assets/videos/polina.mp4" type="video/mp4" />
        </video>
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
          <asp:ScriptManager ID="scriptManagerWritePost" runat="server">
        </asp:ScriptManager>
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="opac">
                        <h1 class="h1 text-center">Dodaj post</h1>
                        <hr />
                        <div class="row">

                            <div class="col-xs-6">
                                <h4 class="h4 text-center">Tytuł</h4>
                                <div class=" text-center">
                                    <asp:UpdatePanel ID="updatePanelTitle" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="False">
                                        <ContentTemplate>
                                            <asp:TextBox CssClass="col-sm-10 col-sm-offset-1" ID="txtTitle" runat="server"></asp:TextBox>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                    
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <h4 class="h4 text-center">Kategoria</h4>
                                <div class="text-center">
                                    <asp:DropDownList CssClass="col-sm-6 col-sm-offset-3 text-center" ID="DropDownList1" runat="server" Style="left: 0px; top: 0px; color: black;">
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
                                  
                                    <asp:UpdatePanel ID="updatePanelBody" runat="server" ChildrenAsTriggers="False" UpdateMode="Conditional">
                                        <ContentTemplate>

                                                <asp:TextBox ID="txtBlogContent" CssClass="tinymce" runat="server" TextMode="MultiLine"></asp:TextBox>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                        </div>
                        <br />
                        <br />
                        <asp:Button CssClass="btn btn-default text-center col-sm-4 col-sm-offset-4" ID="Button1" runat="server" Text="Wyślij" OnClick="Button1_Click" CausesValidation="False" />

                    </div>
                </div>
            </div>
        </div>


    </form>
</body>
</html>

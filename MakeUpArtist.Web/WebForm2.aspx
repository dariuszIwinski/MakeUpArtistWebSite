<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="MakeUpArtist.Web.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


    <%-- scripts --%>

    <script src="Scripts/google-code-prettify/prettify.js"></script>
    <script src="Scripts/jquery-2.0.3.min.js"></script>
    <script src="Scripts/jquery.hotkeys.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
        <script src="bootstrap-wysiwyg.js"></script>

    <%-- styles --%>
    <link href="Content/css/external/prettify.css" rel="stylesheet" />
<%--    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.no-icons.min.css" rel="stylesheet" />
    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-responsive.min.css" rel="stylesheet" />--%>
    <link href="Content/css/external/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
    <link href="Content/css/general.css" rel="stylesheet" />
        <link href="Content/css/richText.css" rel="stylesheet" />

    <%-- WebSite Title --%>
    <title>Nancy's style</title>
</head>
<body>
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
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="opac">
                        <h1 class="h1 text-center">Dodaj nowy post</h1>
                        <hr />
                        <h4 class="h4" style="text-align: left">Tytuł posta</h4>
                        <p class="text-justify">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </p>
                        <br />
                        <h4 class="h4" style="text-align: left">Treść posta</h4>
                        <p class="text-justify">
                            <div class="hero-unit">
                                <div id="alerts"></div>
                                <div class="btn-toolbar" data-role="editor-toolbar" data-target="#editor">
                                    <div class="btn-group">
                                        <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="icon-font"></i><b class="caret"></b></a>
                                        <ul class="dropdown-menu"></ul>
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="icon-text-height"></i>&nbsp;<b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
                                            <li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
                                            <li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
                                        </ul>
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="icon-bold"></i></a>
                                        <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="icon-italic"></i></a>
                                        <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="icon-strikethrough"></i></a>
                                        <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="icon-underline"></i></a>
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="icon-list-ul"></i></a>
                                        <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="icon-list-ol"></i></a>
                                        <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="icon-indent-left"></i></a>
                                        <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="icon-indent-right"></i></a>
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="icon-align-left"></i></a>
                                        <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="icon-align-center"></i></a>
                                        <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="icon-align-right"></i></a>
                                        <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="icon-align-justify"></i></a>
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="icon-link"></i></a>
                                        <div class="dropdown-menu input-append">
                                            <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
                                            <button class="btn" type="button">Add</button>
                                        </div>
                                        <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="icon-cut"></i></a>

                                    </div>

                                    <div class="btn-group">
                                        <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="icon-picture"></i></a>
                                        <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="icon-undo"></i></a>
                                        <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="icon-repeat"></i></a>
                                    </div>
                                    <input type="text" data-edit="inserttext" id="voiceBtn" x-webkit-speech="">
                                </div>

                                <div id="editor">
                                    Go ahead&hellip;
                                </div>
                            </div>
                        </p>
                    </div>
                </div>
            </div>
        </div>
      

        <script>
            $(function () {
                function initToolbarBootstrapBindings() {
                    var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier',
                        'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
                        'Times New Roman', 'Verdana'],
                        fontTarget = $('[title=Font]').siblings('.dropdown-menu');
                    $.each(fonts, function (idx, fontName) {
                        fontTarget.append($('<li><a data-edit="fontName ' + fontName + '" style="font-family:\'' + fontName + '\'">' + fontName + '</a></li>'));
                    });
                    $('a[title]').tooltip({ container: 'body' });
                    $('.dropdown-menu input').click(function () { return false; })
                        .change(function () { $(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle'); })
                        .keydown('esc', function () { this.value = ''; $(this).change(); });

                    $('[data-role=magic-overlay]').each(function () {
                        var overlay = $(this), target = $(overlay.data('target'));
                        overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
                    });
                    if ("onwebkitspeechchange" in document.createElement("input")) {
                        var editorOffset = $('#editor').offset();
                        $('#voiceBtn').css('position', 'absolute').offset({ top: editorOffset.top, left: editorOffset.left + $('#editor').innerWidth() - 35 });
                    } else {
                        $('#voiceBtn').hide();
                    }
                };
                //błąd wczytywania pliku
                function showErrorAlert(reason, detail) {
                    var msg = '';
                    if (reason === 'unsupported-file-type') { msg = "Unsupported format " + detail; }
                    else {
                        console.log("error uploading file", reason, detail);
                    }
                    $('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>' +
                        '<strong>File upload error</strong> ' + msg + ' </div>').prependTo('#alerts');
                };
                initToolbarBootstrapBindings();
                $('#editor').wysiwyg({ fileUploadError: showErrorAlert });
                window.prettyPrint && prettyPrint();
            });
        </script>
    </form>
</body>
</html>

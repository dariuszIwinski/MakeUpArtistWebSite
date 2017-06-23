<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="writer.aspx.cs" Inherits="MakeUpArtist.Web.writer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="scripts/external/tinymce/jquery.tinymce.min.js"></script>
    <script src="scripts/external/tinymce/tinymce.min.js"></script>
    <script type="text/javascript" >
            tinyMCE.init({
                    mode: "specific_textareas",
                    editor_selector: "tinymce",
                    encoding: "xml",
                    convert_urls: false,
                    theme: "advanced",
                    plugins: "spellchecker,pagebreak,style,layer,table,advhr,advimage,advlink,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,paste,directionality,fullscreen,visualchars,nonbreaking,xhtmlxtras",
                    extended_valid_elements: "iframe[src|width|height|name|align]",
                    theme_advanced_buttons1: "spellchecker,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect,|,print,fullscreen",
                    theme_advanced_buttons2: "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
                    theme_advanced_buttons3: "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,media,advhr,|",
                    theme_advanced_toolbar_location: "top",
                    theme_advanced_toolbar_align: "left",
                    theme_advanced_path_location: "bottom",
                    theme_advanced_resizing: true,
                    theme_advanced_resize_horizontal: false,
                    theme_advanced_styles: "Link to Image: lightbox;Image Right Border: rightbordered;Image Left Border: leftbordered;Darker Text: darker",
                    setup: function (ed) {
                            ed.onSaveContent.add(function (i, o) {
                                    o.content = o.content.replace(/&#39/g, "&apos");
                            });
                    }
            });
</script>

     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                                <div class="text-center">
                                    <asp:UpdatePanel ID="updatePanelTitle" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="False">
                                        <ContentTemplate>
                                            <asp:TextBox CssClass="col-sm-10 col-sm-offset-1" ID="txtTitle" runat="server"></asp:TextBox>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="btnSend" EventName="Click" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                    
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
                                  
                                    <asp:UpdatePanel ID="updatePanelBody" runat="server" ChildrenAsTriggers="False" UpdateMode="Conditional">
                                        <ContentTemplate>
                                                <asp:TextBox ID="txtBlogContent" CssClass="tinymce" runat="server" TextMode="MultiLine"></asp:TextBox>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="btnSend" EventName="Click" />
                                        </Triggers>
                                    </asp:UpdatePanel>
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

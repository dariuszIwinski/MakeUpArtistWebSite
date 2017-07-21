 <%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="inspirations.aspx.cs" Inherits="MakeUpArtist.Web.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="content/css/blog.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--    <asp:ScriptManager ID="ScriptMgr" runat="server" EnablePageMethods="true"></asp:ScriptManager>--%>
    <asp:Panel ID="Panel1" runat="server"></asp:Panel>
    <%-- menu blog --%>
    <div class="container-fluid" style="margin: 0; padding: 0; margin-bottom: 2%;">
        <div class="row nav-blog">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-xs-12 text-center">
                        <asp:LinkButton ID="lbInspiracje" runat="server" OnClick="lbInspiracje_Click">
                            <div class="col-xs-2 col-xs-offset-1 nav-blog-element">
                                Inspiracje
                            </div>
                        </asp:LinkButton>
                        <asp:LinkButton ID="lbPelegnacja" runat="server" OnClick="lbPelegnacja_Click">
                            <div class="col-xs-2 nav-blog-element">
                                Pielęgnacje
                            </div>
                        </asp:LinkButton>
                        <asp:LinkButton ID="lbMetamorfozy" runat="server" OnClick="lbMetamorfozy_Click">
                            <div class="col-xs-2 nav-blog-element">
                                Metamorfozy
                            </div>
                        </asp:LinkButton>
                        <asp:LinkButton ID="lbEdukacja" runat="server" OnClick="lbEdukacja_Click">
                            <div class="col-xs-2 nav-blog-element">
                                Edukacja
                            </div>
                        </asp:LinkButton>
                        <asp:LinkButton ID="lbRecenzje" runat="server" OnClick="lbRecenzje_Click">
                            <div class="col-xs-2 nav-blog-element">
                                Recenzje
                            </div>
                        </asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%-- blog main div --%>
    <div class="container">
        <div class="row">
            <div class="col-md-12" style="margin: 0; padding: 0;">
                <%-- nagłówek --%>
                <div class="row row-blog-header">
                    <div class="col-xs-12">
                        <div class="panel">
                            <div class="panel-body text-center">
                                <h3 class="text-center" runat="server" id="blogTitle">News</h3>
                            </div>
                        </div>
                    </div>
                </div>

                        <%-- panel zmienialny --%>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="panel panel-default">
                                    <asp:Panel class="panel-body text-center" ID="blogContent" runat="server" Visible="true" ClientIDMode="Static"></asp:Panel>
                                    <div class="panel-body text-center" id="blogPost" runat="server" visible="false">
                                        <div class="row">
                                            <div class="post-text" id="postContent" runat="server" visible="false">
                                            </div>
                                        </div>
                                        <div class="row">
                                        
                                                    <div class="comments">
                                                        <div class="row">
                                                            <div class="col-xs-12">
                                                                <div class="row">
                                                                    <div class="comment-add col-xs-12 col-md-8 col-md-offset-2" id="commentAdd" runat="server">

                                                                        <asp:TextBox ID="txtAddComment" CssClass="col-xs-12" runat="server" Rows="4" TextMode="MultiLine" ClientIDMode="Static" MaxLength="20"></asp:TextBox>


                                                                        <asp:Button ID="btnAddComment" CssClass="btn btn-comment col-xs-12 col-md-4" runat="server" Text="Skomentuj" OnClick="btnAddComment_Click" />
                                                                        <asp:TextBox ID="txtAddCommentOwner" CssClass="col-xs-12 col-md-8 commentator" runat="server" Rows="1" TextMode="MultiLine" ClientIDMode="Static" MaxLength="10" Text="Podpis"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">

                                                                    <asp:Panel ID="comments" CssClass="col-xs-12" runat="server"></asp:Panel>

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

 <%--   <script type="text/javascript">
        PageMethods.getDate();
    </script>--%>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="inspirations.aspx.cs" Inherits="MakeUpArtist.Web.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="content/css/blog.css" rel="stylesheet" />
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- menu blog --%>
    <div class="container-fluid" style="margin: 0; padding: 0; margin-bottom: 2%;">
        <div class="row nav-blog">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-xs-12 text-center">
                        <asp:LinkButton ID="lbInspiracje" runat="server" OnClick="lbInspiracje_Click">
                            <div class="col-xs-12 col-md-2 col-md-offset-1 nav-blog-element">
                                Inspiracje
                            </div>
                            </asp:LinkButton>
                        <asp:LinkButton ID="lbPelegnacja" runat="server" OnClick="lbPelegnacja_Click">
                            <div class="col-xs-12 col-md-2 nav-blog-element">
                                Pielęgnacje
                            </div>
                        </asp:LinkButton>
                        <asp:LinkButton ID="lbMetamorfozy" runat="server" OnClick="lbMetamorfozy_Click">
                            <div class="col-xs-12 col-md-2 nav-blog-element">
                                Metamorfozy
                            </div>
                        </asp:LinkButton>
                       <asp:LinkButton ID="lbEdukacja" runat="server" OnClick="lbEdukacja_Click">
                            <div class="col-xs-12 col-md-2 nav-blog-element">
                                Edukacja
                            </div>
                       </asp:LinkButton>
                         <asp:LinkButton ID="lbRecenzje" runat="server" OnClick="lbRecenzje_Click">
                            <div class="col-xs-12 col-md-2 nav-blog-element">
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
                            <div class="panel-body text-center" id="blogContent" runat="server" visible="true">
                                <div class="col-xs-12 col-sm-6 col-md-4">
                                    <div class="panel panel-blog-preview-single">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-xs-10 col-xs-offset-1" id="divImg1" runat="server">
                                                    <img class="img-responsive" src="img/candice.jpg" />
                                                </div>
                                            </div>
                                            <div class="row">
                                                <h4 id="h4Title1" runat="server"><a href="#">To jest tytuł</a></h4>
                                                <hr />
                                            </div>
                                            <div class="row">
                                
                                                <a href="#">
                                                    <h4><span class="label label-success" id="spanCateg1" runat="server">Kategoria</span></h4>
                                                </a>
                    
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-4">
                                    <div class="panel  panel-blog-preview-single">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-xs-10 col-xs-offset-1" id="divImg2" runat="server">
                                                    <img class="img-responsive" src="img/candice.jpg" />
                                                </div>
                                            </div>
                                            <div class="row text-center">
                                                <h4 id="h4Title2" runat="server"><a href="#">To jest tytuł</a></h4>
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <a href="#">
                                                    <h4><span class="label label-success" id="spanCateg2" runat="server">Kategoria</span></h4>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-0">
                                    <div class="panel  panel-blog-preview-single">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-xs-10 col-xs-offset-1" id="divImg3" runat="server">
                                                    <img class="img-responsive" src="img/candice.jpg" />
                                                </div>
                                            </div>

                                            <div class="row text-center">
                                                <h4 id="h4Title3" runat="server"><a href="#">To jest tytuł</a></h4>
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <a href="#">
                                                    <h4><span class="label label-success" id="spanCateg3" runat="server">Kategoria</span></h4>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-body text-center" id="blogPost" runat="server" visible="false">
                                <div class="row">
                                    <div class="post-text" id="postContent" runat="server" visible="false">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras bibendum quis orci in aliquam. Aenean sodales bibendum massa sit amet mollis. Aliquam eu dictum ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer egestas, urna id scelerisque luctus, ante eros tincidunt felis, sed varius quam erat id leo. Nam convallis sed ante in venenatis. Nulla ultrices, orci quis pulvinar porttitor, elit massa dapibus ex, ac venenatis lectus ipsum ac dui. Sed eu lacinia sem. Morbi dolor ex, fringilla quis consectetur eu, gravida ac odio. Quisque et fringilla nisi. Integer vehicula sed sapien id volutpat. Aliquam placerat arcu nec turpis imperdiet, sed vehicula nibh sollicitudin. Morbi fringilla sagittis risus, vel bibendum lectus sagittis sit amet. Curabitur tincidunt velit sed ligula imperdiet congue. Sed convallis leo nibh, eu tincidunt quam euismod et. Proin id cursus turpis, non aliquam elit.

Donec auctor commodo mauris, ac volutpat orci. Nullam in nunc sem. Fusce quis ligula pellentesque, pellentesque neque quis, bibendum nibh. Aenean pharetra felis nec sollicitudin consectetur. Donec at purus tortor. Aliquam in auctor purus. Aenean sapien eros, vulputate nec eleifend sed, vehicula in tellus.

Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam velit ante, rutrum in tortor sit amet, euismod placerat ante. Etiam non lacinia diam. Integer vehicula eu mauris nec finibus. Aliquam id nulla tempor, ornare ligula eu, interdum sapien. Duis sodales magna quam, vitae scelerisque ex varius ac. Phasellus nec sapien a metus ullamcorper pellentesque at tincidunt dui. Nam interdum mi quis lorem tempus, sit amet efficitur ipsum luctus. Mauris a blandit odio. Integer congue tellus felis, quis consectetur metus ullamcorper eu. Maecenas sagittis commodo ligula in pellentesque. Praesent et diam quis dolor mollis vulputate.

Curabitur at purus nec nisl ultricies viverra viverra in massa. Aenean porttitor ullamcorper nibh, vitae vehicula orci dapibus eu. Curabitur id tellus arcu. Vestibulum diam mi, semper vehicula tempus id, ultrices commodo magna. Nunc a facilisis nisi. Nullam tincidunt magna et vulputate vulputate. Aenean lacinia molestie congue. Maecenas sagittis mauris eget augue tempus accumsan. Vestibulum facilisis imperdiet accumsan.

Integer posuere nulla id turpis convallis, vel tincidunt enim commodo. In dignissim mauris et augue accumsan finibus. Nulla consectetur odio ac dignissim efficitur. Cras eget porta odio, congue porttitor quam. Duis nec imperdiet mi. Phasellus vel euismod erat. Nulla tristique, ipsum id porta dictum, ex ex interdum felis, sed fermentum neque nisi vel libero. Nam ac tellus at libero laoreet vestibulum elementum vestibulum turpis. Fusce et turpis vitae mauris viverra iaculis quis tincidunt turpis. Nulla vulputate odio metus, at finibus risus malesuada at.

Praesent vel ullamcorper velit. Maecenas nec mollis dolor, in bibendum quam. Nunc bibendum tempus arcu in mollis. Etiam eget faucibus urna. Maecenas feugiat mattis nulla, ut venenatis leo condimentum eget. Maecenas at massa non neque vestibulum tincidunt sed ac nibh. Praesent at auctor elit. Integer nec mauris in ligula vulputate volutpat a sed neque. Nullam vel sapien maximus, scelerisque leo nec, ullamcorper mi. Maecenas eu sapien et augue venenatis pretium. In porta augue sed dolor lacinia pharetra. Phasellus suscipit risus feugiat, pellentesque enim a, cursus risus. Vivamus ut tempus urna. Donec at nibh ac risus interdum egestas.

Ut sit amet dui sodales, rhoncus felis vitae, efficitur magna. Praesent sollicitudin pellentesque tortor ut vehicula. Aenean nec quam commodo, luctus nisl eu, tincidunt risus. Quisque imperdiet nisl ut erat scelerisque, ac facilisis mauris gravida. Donec accumsan odio vel quam suscipit ullamcorper. Duis posuere fringilla varius. Ut sit amet libero at mi feugiat lobortis. Duis egestas lectus id dui hendrerit, at efficitur nisi eleifend. Praesent consequat, lorem fermentum ultricies tristique, risus justo lobortis risus, non posuere urna odio vitae sapien.

Aenean ultricies mattis tellus. Phasellus et eros eleifend, viverra enim eu, tincidunt est. Praesent vel dui ipsum. Suspendisse sollicitudin, mauris nec luctus gravida, ex elit ornare libero, ut tempor odio purus at quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque a nulla sed dui mollis rhoncus. Proin odio lacus, congue sit amet metus vitae, tincidunt molestie dui. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris ut fermentum mi.

Ut imperdiet dui quis leo lobortis, vitae efficitur nisl aliquam. Nunc molestie ornare congue. Integer at arcu est. Vestibulum in interdum dolor. Proin in vehicula nulla, tincidunt tristique risus. Nam at magna arcu. Nulla lacinia efficitur nunc, non sollicitudin dui rhoncus a. Suspendisse a ex diam. Nunc pretium arcu ut pellentesque lacinia. Integer rhoncus purus et est aliquet dictum. Donec non augue faucibus, consectetur lorem tincidunt, tempor lectus. Fusce tempus, metus id malesuada venenatis, metus ipsum pretium lacus, sit amet malesuada augue mauris et enim. Aenean elit neque, posuere at quam a, feugiat convallis elit. Maecenas efficitur nunc leo, eget blandit tortor ultrices non. Integer odio turpis, vulputate sed tristique vel, luctus finibus quam. Vivamus ornare eu enim eu laoreet.

Vestibulum aliquam dolor leo, quis euismod neque dictum a. Nam imperdiet rutrum consequat. Aenean molestie placerat ultricies. Cras nunc nunc, mollis faucibus lacus et, scelerisque dictum ipsum. Nullam facilisis dolor turpis, sagittis euismod libero dictum at. Nullam nibh risus, ultricies at dui non, placerat congue massa. Cras tempus urna non sem dignissim, quis ultricies metus ornare. Donec volutpat tincidunt velit ultrices tincidunt. Vivamus feugiat, nibh ut blandit scelerisque, massa enim suscipit nibh, vel facilisis lacus tellus vel felis.

Quisque convallis, ligula a fringilla ultricies, risus libero pellentesque eros, non ultrices leo nulla vitae ante. Proin bibendum ante eget justo hendrerit, eu interdum nunc aliquet. Praesent odio quam, luctus ac maximus id, sollicitudin sed mauris. Vivamus at faucibus massa, nec posuere metus. Morbi id est vitae eros aliquet mattis eget porttitor odio. Donec ante est, scelerisque quis pulvinar at, mattis quis enim. Nullam sit amet tincidunt lacus.

Suspendisse sit amet porta ante. Vivamus sem quam, viverra sed nulla id, consectetur auctor leo. Duis in nunc sodales, efficitur purus et, aliquam metus. Nullam quis elit at justo molestie egestas id eu tortor. Donec quis consectetur magna. Aenean consectetur facilisis sapien quis pharetra. Duis at urna nec tellus aliquet gravida. Morbi quis lectus at erat mollis dictum ac nec nunc.

Nullam lacinia rhoncus urna, eu vestibulum nibh interdum sit amet. Nulla ac malesuada leo, ac luctus metus. Donec a mattis lectus. Quisque fringilla mauris ac lectus pellentesque, sit amet ultrices nisl tempus. Maecenas a semper urna. Curabitur vel magna molestie, iaculis orci ac, lacinia enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In id massa pretium, maximus magna ac, lacinia velit. Nunc egestas in ante eu sodales. Phasellus imperdiet turpis in neque egestas, vel aliquet libero posuere. Etiam varius turpis sit amet dapibus tempus.

Vivamus ipsum velit, volutpat vitae quam sed, sodales vestibulum mauris. Praesent pretium justo sit amet turpis laoreet, ut convallis ante rhoncus. Phasellus auctor ornare auctor. Donec rhoncus vitae orci nec vestibulum. Proin metus elit, dapibus eu elit sit amet, ultrices sodales urna. Maecenas malesuada faucibus luctus. Phasellus sodales at diam eu condimentum. Nulla volutpat neque eget dui porttitor, eu feugiat dolor congue. Nam a commodo urna. Vivamus sem risus, pellentesque vitae nunc ac, malesuada eleifend dui. Mauris fermentum sapien urna, at iaculis mi lobortis vitae. Sed sagittis felis ac aliquet maximus.

Nulla iaculis ultrices urna at facilisis. Suspendisse pellentesque commodo leo id egestas. Vestibulum laoreet diam eu sapien pretium, nec scelerisque dolor congue. Integer porta nisi non arcu laoreet feugiat. Nulla sollicitudin ipsum vel nibh efficitur, nec mollis nisl ultricies. Vivamus a aliquet augue. Duis pellentesque vitae mi ut sollicitudin. Nam in augue sit amet nisl posuere tempus. Donec viverra nisi sem, eu facilisis eros viverra vitae. Duis auctor lacus luctus, molestie dui et, dictum arcu. Mauris nisl libero, euismod vitae consequat vel, cursus eget tellus. Nam leo nibh, volutpat in libero laoreet, blandit ullamcorper ligula.

Aliquam iaculis vehicula odio, vitae laoreet est cursus nec. Sed lectus mi, scelerisque in lorem eget, interdum pharetra massa. Phasellus condimentum congue ante sed vulputate. Sed magna leo, dictum feugiat erat ac, suscipit varius nibh. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi malesuada, ipsum vel accumsan ultricies, purus diam posuere mi, a posuere quam ex vulputate massa. Vivamus viverra, velit et auctor feugiat, sapien nisi pulvinar nunc, nec posuere eros dui ultricies ex. Cras sit amet leo quis magna vestibulum dictum. Donec pulvinar, diam in dignissim pellentesque, dui odio molestie leo, quis euismod quam magna ac purus. Donec risus ligula, consectetur sed pharetra tristique, euismod nec mi.

Donec sem mauris, bibendum a mauris eget, convallis suscipit sapien. Cras dignissim, arcu ut malesuada fermentum, arcu odio molestie enim, et gravida sem justo ut tortor. Pellentesque viverra, velit quis maximus aliquet, neque orci dignissim mauris, a hendrerit sem est nec lacus. Phasellus vel neque sapien. Ut quis fringilla tellus. Fusce scelerisque scelerisque placerat. In semper, enim in eleifend efficitur, lorem quam maximus urna, sagittis scelerisque nisl metus accumsan augue. Morbi luctus nibh magna, in cursus leo commodo eu. Aenean vel faucibus nulla, pharetra dapibus massa. Suspendisse luctus dui in orci accumsan tempor. Vivamus tempus, neque quis dictum semper, nisl dolor venenatis risus, eget ultrices metus mauris vitae massa. Quisque quis elit et erat dictum vehicula.

Phasellus nec nunc maximus, tincidunt justo nec, tempus ante. Cras volutpat urna turpis, a porttitor tellus congue a. In congue lacus nisi. Pellentesque ligula nisl, commodo eu ligula a, congue malesuada magna. Duis faucibus, quam vel posuere dapibus, ligula enim dictum ex, quis aliquam odio ligula eu massa. Nam dictum fermentum massa, non imperdiet ligula fermentum nec. Integer et elit faucibus, malesuada felis ut, scelerisque augue. Aliquam feugiat lorem a blandit tristique.

Nullam id turpis facilisis, volutpat diam vel, blandit est. Morbi hendrerit ut massa eget interdum. Duis fermentum, lorem vitae vehicula volutpat, mi arcu vestibulum tellus, at sollicitudin sem tellus sit amet sem. In quis molestie velit. Integer hendrerit eros eget dignissim finibus. Vestibulum blandit facilisis diam. Morbi tempor ante lacus, eget pretium nisi efficitur non. Curabitur pharetra finibus mollis. Etiam sit amet nunc accumsan, egestas orci condimentum, blandit diam.

Morbi lobortis euismod odio suscipit laoreet. Sed ac leo non mi luctus porta non sed ligula. Aenean facilisis tellus ac placerat volutpat. Donec at condimentum magna. Nunc interdum, felis nec elementum malesuada, arcu orci suscipit metus, id laoreet leo erat ut diam. Nam blandit tempor lectus, ac dapibus enim feugiat nec. Aliquam erat volutpat. Nunc semper hendrerit leo, at ornare nisl tempus in. Donec et sapien sit amet quam rhoncus bibendum sed in enim. Quisque ut lectus non sem imperdiet bibendum vitae quis nisl. Nunc sagittis finibus metus in congue. Nulla pharetra, erat in euismod eleifend, velit erat faucibus tortor, at ullamcorper quam mauris porta ipsum.
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="comments">
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <div class="row">
                                                    <div class="comment-add col-xs-8" id="commentAdd" runat="server">

                                                        <asp:TextBox ID="txtAddComment" CssClass="col-xs-12" runat="server" Rows="4" TextMode="MultiLine" ClientIDMode="Static" maxlength="20"></asp:TextBox>


                                                        <asp:Button ID="Button1" CssClass="btn btn-comment col-xs-2 text-left" runat="server" Text="Skomentuj" />
                                                     
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="comment col-xs-12" id="postComments" runat="server">
                                                <div class="row">
                                                    <div class="col-xs-8">
                                                        <div class="text-left comment-owner">Komentator</div>
                                                        <div class="panel-body text-justify">
                                                            <div>
                                                                Nullam id turpis facilisis, volutpat diam vel, blandit est. Morbi hendrerit ut massa eget interdum. Duis fermentum, lorem vitae vehicula volutpat, mi arcu vestibulum tellus, at sollicitudin sem tellus sit amet sem. In quis molestie velit. Integer hendrerit eros eget dignissim finibus. Vestibulum blandit facilisis diam. Morbi tempor ante lacus, eget pretium nisi efficitur non. Curabitur pharetra finibus mollis. Etiam sit amet nunc accumsan, egestas orci condimentum, blandit diam.
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
                </div>
            </div>
        </div>
    </div>
    <asp:ScriptManager ID="ScriptMgr" runat="server" EnablePageMethods="true"></asp:ScriptManager>
      <script type="text/javascript">
         PageMethods.getDate();
    </script>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="MakeUpArtist.Web._default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
     <%-- scripts --%>
    <script src="scripts/external/jquery/jquery-2.0.3.min.js"></script>
    <script src="scripts/external/bootstrap/bootstrap.min.js"></script>

    <%-- styles --%>
    <link href="content/css/external/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
    <link href="content/css/general.css" rel="stylesheet" />

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

    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="opac">
                    <h1 class="h1 text-center">Nancy's style</h1>
                    <hr />
                    <h4 class="h4" style="text-align: left">O Nancy</h4>
                    <p class="text-justify">
                        Jestem absolwentką renomowanej wrocławskiej szkoły artystycznej Marzeny Daleckiej na kierunku wizaż/charakteryzacja/stylizacja. Tytuł zawodowy wizażystki - charakteryzatorki otrzymałam ze szczególnym wyróżnieniem stając się tym samym ekspertem w swojej dziedzinie. Moje paroletnie doświadczenie zdobywałam zarówno na planach teledysków, sesjach zdjęciowych jak i zapleczach teatrów.
             
                        Praca ze wspaniałymi ludźmi, osobowościami i innymi utalentowanymi makijażystami dała mi spektrum możliwości a także nauczyła wielozadaniowości. Specjalizuję się w dziedzinie makijażu użytkowego (dzienny lub wieczorowy) oraz artystycznego, wykonuję charakteryzacje, makijaże do produkcji filmowych, sesji fotograficznych. 
                    </p>
                    <br />
                    <h4 class="h4" style="text-align: left">Styl pracy</h4>
                    <p class="text-justify">
                        Co jest dla mnie najważniejsze w makijażu? Create your style to wartość i koncepcja, którą się kieruję. Każdy z nas powinien mieć możliwość wyrażenia prawdziwego "ja". Makijaż traktuję jak sztukę, bez względu na to czy występuje w wydaniu codziennym czy highfashion, zdobi ciało modelki czy którejkolwiek z nas. Makijaż to język, który pozwala nam wyrażać siebie, którego wciąż się uczymy i które stwarza nieograniczone możliwości kreowania swojego wizerunku; władający nim perfekcyjnie mają w rękach nieocenione narzędzie.  
                  
                        Dlaczego możecie na mnie liczyć? W swojej pracy stawiam na jakość. Najwyższą jakość kosmetyków, odpowiednią pielęgnację twarzy, produkty bogate w składniki zdrowe dla naszej skóry. Dbam o czystość i sterylność kosmetyków, miejsca pracy oraz narzędzi. Dobry makijaż cechuje także indywidualne podejście do każdego klienta. Ci którzy mnie znają, mówią że jestem duszą towarzystwa. Prywatnie: pasjonatka muzyki, filmu, antropolog kulturowy, artystka i humanistka – zapraszam Cię do mojego świata! 
                    </p>
                </div>
            </div>
        </div>
    </div>

</body>
</html>

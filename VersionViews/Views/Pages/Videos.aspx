<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

	<% var productName = SettingsManager.ContextSettings["Label.ProductName"]; %>
    <% var YouTubeParams = "modestbranding=1&showinfo=0&rel=0"; %>

    <h2 class="sans-primary-bold content__title">Videos</h2>

    <div class="sans-primary-book p">
	    <% Html.RenderSnippet("SUBPAGE-TEXT-NAV"); %>
    </div>


    <!-- // Enable custom override -->
    <div data-eflex-scale-youtube-custom data-eflex-scale-vimeo-custom></div>

    <div class="section--content offer__title--load offer__title--loading">
        <h3 class="offer__title offer__title--divider color-light">
            <span class="offer__title__text sans-primary-book content__title u-pad--right @x2-pad">Loading...</span>
        </h3>
    </div>

    <ul class="list--videos row-to-center">
        <!-- // Video -->
        <li class="column-block @sm-u-vw--50">
            <h3 class="sans-primary-book content__headline">Beachy Waves</h3>
            <iframe src="https://www.youtube.com/embed/rRhN__VqSaw?<%= YouTubeParams %>" frameborder="0" allowfullscreen=""></iframe>
        </li>

        <!-- // Video -->
        <li class="column-block @sm-u-vw--50">
            <h3 class="sans-primary-book content__headline">Top Knot Style</h3>
            <iframe src="https://www.youtube.com/embed/5cJi0I-J750?<%= YouTubeParams %>" frameborder="0" allowfullscreen=""></iframe>
        </li>

        <!-- // Video -->
        <li class="column-block @sm-u-vw--50">
            <h3 class="sans-primary-book content__headline">Hat Hair</h3>
            <iframe src="https://www.youtube.com/embed/K92YDJE1AjM?<%= YouTubeParams %>" frameborder="0" allowfullscreen=""></iframe>
        </li>

        <!-- // Video -->
        <li class="column-block @sm-u-vw--50">
            <h3 class="sans-primary-book content__headline">Haircare Mixology</h3>
            <iframe src="https://www.youtube.com/embed/B19-tBTg1v4?<%= YouTubeParams %>" frameborder="0" allowfullscreen=""></iframe>
        </li>


        <!-- // Video -->
        <li class="column-block @sm-u-vw--50">
            <h3 class="sans-primary-book content__headline">How To: Brigitte Bardot-Inspired '60s Bouffant</h3>
            <iframe src="https://www.youtube.com/embed/lsSb8QGR1xY?<%= YouTubeParams %>" frameborder="0" allowfullscreen=""></iframe>
        </li>

        <!-- // Video -->
        <li class="column-block @sm-u-vw--50">
            <h3 class="sans-primary-book content__headline">How To: Beach Waves for Short Hair</h3>
            <iframe src="https://www.youtube.com/embed/595lTXhrl2Y?<%= YouTubeParams %>" frameborder="0" allowfullscreen=""></iframe>
        </li>

        <!-- // Video -->
        <li class="column-block @sm-u-vw--50">
            <h3 class="sans-primary-book content__headline">How To: Triple Braided Hairstyle Tutorial</h3>
            <iframe src="https://www.youtube.com/embed/m2vhxBnOCIc?<%= YouTubeParams %>" frameborder="0" allowfullscreen=""></iframe>
        </li>

        <!-- // Video -->
        <li class="column-block @sm-u-vw--50">
            <h3 class="sans-primary-book content__headline">How To: Low Rolled Updo Hairstyle</h3>
            <iframe src="https://www.youtube.com/embed/efQevcmklGk?<%= YouTubeParams %>" frameborder="0" allowfullscreen=""></iframe>
        </li>

        <!-- // Video -->
        <li class="column-block @sm-u-vw--50">
            <h3 class="sans-primary-book content__headline">How To: Messy French Twist Hair</h3>
            <iframe src="https://www.youtube.com/embed/x0JDAIy3kf0?<%= YouTubeParams %>" frameborder="0" allowfullscreen=""></iframe>
        </li>

        <!-- // Video -->
        <li class="column-block @sm-u-vw--50">
            <h3 class="sans-primary-book content__headline">How To: Crown Braid Hair Tutorial</h3>
            <iframe src="https://www.youtube.com/embed/6999ypnLVls?<%= YouTubeParams %>" frameborder="0" allowfullscreen=""></iframe>
        </li>

        <!-- // Video -->
        <li class="column-block @sm-u-vw--50">
            <h3 class="sans-primary-book content__headline">How To: Curl Short Hair</h3>
            <iframe src="https://www.youtube.com/embed/RpSDToM9BKU?<%= YouTubeParams %>" frameborder="0" allowfullscreen=""></iframe>
        </li>

        <!-- // Video -->
        <li class="column-block @sm-u-vw--50">
            <h3 class="sans-primary-book content__headline">Thermal Styling Spray</h3>
            <iframe src="https://player.vimeo.com/video/45283588?theme=none&amp;wmode=opaque" frameborder="0" title="Thermal Styling Spray" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
        </li>

        <!-- // Video -->
        <li class="column-block @sm-u-vw--50">
            <h3 class="sans-primary-book content__headline">Blow Dry Lotion</h3>
            <iframe src="https://player.vimeo.com/video/45283106?theme=none&amp;wmode=opaque" frameborder="0" title="Thermal Styling Spray" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
        </li>

        <!-- // Video -->
        <li class="column-block @sm-u-vw--50">
            <h3 class="sans-primary-book content__headline">Get Kim Kardashian's Look With Number 4</h3>
            <iframe src="https://player.vimeo.com/video/42828281?theme=none&amp;wmode=opaque" frameborder="0" title="Thermal Styling Spray" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
        </li>

        <!-- // Video -->
        <li class="column-block @sm-u-vw--50">
            <h3 class="sans-primary-book content__headline">Fluoro5 Elixer Restore & Repair Oil</h3>
            <iframe src="https://player.vimeo.com/video/42828280?theme=none&amp;wmode=opaque" frameborder="0" title="Thermal Styling Spray" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
        </li>

        <!-- // Video -->
        <li class="column-block @sm-u-vw--50">
            <h3 class="sans-primary-book content__headline">Smoothing Balm</h3>
            <iframe src="https://player.vimeo.com/video/188182372?theme=none&amp;wmode=opaque" frameborder="0" title="Thermal Styling Spray" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
        </li>

        <!-- // Video -->
        <li class="column-block @sm-u-vw--50">
            <h3 class="sans-primary-book content__headline">Peek-A-Boo Braids</h3>
            <iframe src="https://www.youtube.com/embed/McW5h8Cfw3w?<%= YouTubeParams %>" frameborder="0" allowfullscreen=""></iframe>
        </li>

        <!-- // Video -->
        <li class="column-block @sm-u-vw--50">
            <h3 class="sans-primary-book content__headline">Shine Treatment Serum</h3>
            <iframe src="https://www.youtube.com/embed/qmblIF5Kl6Q?<%= YouTubeParams %>" frameborder="0" allowfullscreen=""></iframe>
        </li>

        <!-- // Video -->
        <li class="column-block @sm-u-vw--50">
            <h3 class="sans-primary-book content__headline">Texture Paste</h3>
            <iframe src="https://player.vimeo.com/video/226975591?theme=none&amp;wmode=opaque" frameborder="0" title="Thermal Styling Spray" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
        </li>

    </ul>

</asp:Content>

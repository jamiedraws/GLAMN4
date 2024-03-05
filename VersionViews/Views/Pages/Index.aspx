<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<% Html.RenderSnippet("RESPONSIVE-INDEX"); %>

<%-- // BEGIN SNIPPET @RESPONSIVE-INDEX
<!-- // ABOVE THE FOLD -->
<section class="bg-banner u-pad--vert @x2-pad">

    <img class="gfx-banner--desktop u-mar--center" src="/images/graphics/offer-banner.png?appV=[#DtmContext.ApplicationVersion#]" alt="">
    <img class="gfx-banner--mobile" src="/images/graphics/mobile-offer-banner.png?appV=[#DtmContext.ApplicationVersion#]" alt="">

</section>


<!-- // MIDLINE -->
<hr class="hr">
<section class="section--midline gfx-secondary u-pad @x2-pad">

    <div class="l-section__in row-to-center u-vw--100">

        <div class="row-to-center center-text center-margin">
            <div class="col @sm-u-vw midline__border @sm-u-pad--bottom u-pad--right @x2-pad">
                <h3 class="sans-primary-light color-light midline__title">AS SEEN IN</h3>
            </div>
            <div class="col @sm-u-vw">
                <ul class="row-to-center list--logos">
                    <li class="column-block">
                        <img class="responsive-img" src="/images/logos/birchbox.png?appV=[#DtmContext.ApplicationVersion#]" alt="Birchbox">
                    </li>
                    <li class="column-block">
                        <img class="responsive-img" src="/images/logos/InStyle.png?appV=[#DtmContext.ApplicationVersion#]" alt="InStyle">
                    </li>
                    <li class="column-block">
                        <img class="responsive-img" src="/images/logos/Vogue.png?appV=[#DtmContext.ApplicationVersion#]" alt="Vogue">
                    </li>
                    <li class="column-block">
                        <img class="responsive-img" src="/images/logos/Star.png?appV=[#DtmContext.ApplicationVersion#]" alt="Star">
                    </li>
                    <li class="column-block">
                        <img class="responsive-img" src="/images/logos/Elle.png?appV=[#DtmContext.ApplicationVersion#]" alt="Elle">
                    </li>
                    <li class="column-block">
                        <img class="responsive-img" src="/images/logos/People.png?appV=[#DtmContext.ApplicationVersion#]" alt="People">
                    </li>
                    <li class="column-block">
                        <img class="responsive-img" src="/images/logos/Bazaar.png?appV=[#DtmContext.ApplicationVersion#]" alt="Bazaar">
                    </li>
                </ul>
            </div>
        </div>

    </div>

</section>


<hr class="hr no-margin">


<!-- // BELOW THE FOLD -->
<section class="section--desc gfx-pattern">

    <div class="l-section__in row-to-center u-vw--100">

        <!-- note: can control vertical alignment using row, row-to-center or row-to-bottom -->
        <div class="gfx-girl row-to-center padding @x2-pad">
            <div class="col">
                <!-- note: can control horizontal alignment using left or right -->
                <div class="desc__content u-vw--66 right">
                    <h3 class="desc__title h2 sans-primary-light color-primary">VOTED <em class="highlight-container">#1 Shampoo</em> by STAR MAGAZINE</h3>

                    <div class="@md-only-show girl__inline">
                        <img class="burst--save" src="/images/graphics/save-burst.png?appV=[#DtmContext.ApplicationVersion#]" alt="Save $50">
                        <img src="/images/graphics/_bg-girl.png?appV=[#DtmContext.ApplicationVersion#]" alt="Girl">
                    </div>

                    <div class="row">
                        <div class="col @md-o-grid--none o-pos u-vw--20">
                            <img class="burst--save" src="/images/graphics/save-burst.png?appV=[#DtmContext.ApplicationVersion#]" alt="Save $50">
                        </div>
                        <div class="col sans-primary-book">
                            <p class="h6 u-mar--vert @x2-mar"><em class="sans-primary-bold">Number 4 High Performance Hair Care</em> delivers the highest quality products, with an extraordinary experience, creating a new standard of excellence.</p>
                            <div class="row u-vw--100 sans-primary">
                                <div class="col @xs-u-vw">
                                    <h4 class="h5 sans-primary-bold">Only Available in Salons</h4>
                                    <ul class="fb__list top-margin">
                                        <li>Innovative</li>
                                        <li>Lightweight</li>
                                        <li>Color Protecting& Enhancing</li>
                                        <li>Anti-Aging</li>
                                    </ul>
                                </div>
                                <div class="col @xs-u-vw u-pad--left @xs-u-pad--reset u-mar--top @x3-mar">
                                    <h4 class="h5 sans-primary-bold color-primary">Recommended by Stylist</h4>
                                    <ul class="fb__list top-margin">
                                        <li>Vegan</li>
                                        <li>Gluten Free</li>
                                        <li>Sulfate & Sodium Chloride Free</li>
                                        <li>Paraben Free</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

</section>


<!-- // MIDLINE -->
<section class="section--ig bg-primary">
    <hr class="hr no-margin">
    <div class="l-section__in u-pad--vert @x2-pad u-vw--100">
        <div class="row-to-center center-margin center-text">
            <div class="col @md-u-vw">
                <h2 class="uppercase sans-primary-light ig__title"><em class="sans-primary-bold">Everyone Is Raving!</em> Check Us Out</h2>
            </div>
            <div class="col @md-u-vw u-pad--left @md-u-pad--reset @x2-pad">
                <img src="/images/logos/instagram.png?appV=[#DtmContext.ApplicationVersion#]" alt="Instagram">
            </div>
        </div>
    </div>
    <hr class="hr no-margin">
</section>


<!-- // INSTAGRAM -->
<section class="u-pad--bottom @x3-pad u-mar--bottom @x3-mar">
    <div class="u-vw--100">
        <ul class="ig--list">
            <li class="column-block">
                <img class="responsive-img" src="/images/graphics/ig-img-2.jpg?appV=[#DtmContext.ApplicationVersion#]" alt="IG">
            </li>
            <li class="column-block">
                <img class="responsive-img" src="/images/graphics/ig-img-2.jpg?appV=[#DtmContext.ApplicationVersion#]" alt="IG">
            </li>
            <li class="column-block">
                <img class="responsive-img" src="/images/graphics/ig-img-3.jpg?appV=[#DtmContext.ApplicationVersion#]" alt="IG">
            </li>
            <li class="column-block">
                <img class="responsive-img" src="/images/graphics/ig-img-4.jpg?appV=[#DtmContext.ApplicationVersion#]" alt="IG">
            </li>
            <li class="column-block">
                <img class="responsive-img" src="/images/graphics/ig-img-5.jpg?appV=[#DtmContext.ApplicationVersion#]" alt="IG">
            </li>
            <li class="column-block">
                <img class="responsive-img" src="/images/graphics/ig-img-6.jpg?appV=[#DtmContext.ApplicationVersion#]" alt="IG">
            </li>
            <li class="column-block">
                <img class="responsive-img" src="/images/graphics/ig-img-6.jpg?appV=[#DtmContext.ApplicationVersion#]" alt="IG">
            </li>
        </ul>
    </div>

    <div class="l-section__in center-text u-vw--100">
        <div class="row blockquote center-margin sans-primary-book">
            <div class="col @sm-u-vw--33 padding">
                [#Partial.GetStars#]
                <blockquote class="p">"I love to use Volumizing Shampoo with Hydrating Condition for soft, supple volume and body."</blockquote>
                <cite class="sans-primary-bold">Sarah B. Atlanta, CA (25)</cite>
            </div>
            <div class="col @sm-u-vw--33 padding">
                [#Partial.GetStars#]
                <blockquote class="p">"Number 4's Reconstructing Masque combined with the Hydrating Shampoo makes my hair incredibly soft, light and manageable. Can't live with them!"</blockquote>
                <cite class="sans-primary-bold">Kris B. Corona, CA (51)</cite>
            </div>
            <div class="col @sm-u-vw--33 padding">
                [#Partial.GetStars#]
                <blockquote class="p">"I'm in love with Number 4 because my curly hair feels light and smooth. Plus, it's gluten and cruelty free which is important to me."</blockquote>
                <cite class="sans-primary-bold">Cynthia V. Austin, TX (31)</cite>
            </div>
        </div>
    </div>
</section>


// END SNIPPET @RESPONSIVE-INDEX --%>

</asp:Content>

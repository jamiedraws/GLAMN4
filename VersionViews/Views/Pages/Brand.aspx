<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

	<% var productName = SettingsManager.ContextSettings["Label.ProductName"]; %>

    <h2 class="sans-primary-bold content__title">The Brand</h2>

    <div class="sans-primary-book p">
	       <% Html.RenderSnippet("SUBPAGE-TEXT-NAV"); %>
    </div>

    <div class="section--content offer__title--hover">
        <h3 class="offer__title offer__title--divider uppercase color-light">
            <span class="offer__title__text sans-primary-book content__title u-pad--right @x2-pad">MANIFESTO</span>
        </h3>
        <div class="sans-secondary-book">
            <h3 class="sans-primary-book content__headline">(The most beautiful things in life are found in the simple.)</h3>
            <p>Our collection was founded with the mission to develop a creative, high performance hair care line that runs parallel to fashion, science, art, music and industrial design creative cycles.</p>
            <p>By combining nature's greatest ingredients, forward-edge technology and innovation, we make your hair be what it should be &mdash; the ultimate look that defines new stylistic territories. We use the highest quality essential oils and extracts to repair damage, keep hair young, supple and color new. We gently cleanse with no harsh sulfates and we style with no stripping alcohols.</p>
            <p>We exclude all ingredients potentially toxic to humans, rare vintage couture, and our dear environment; 100% Vegan, Sulfate &amp; Sodium Chloride Free, Gluten Free, Bad Taste and Paraben Free formulas are never ever tested on any animal.</p>
            <p>Our Liquid Complex Culture&trade; defines our products and ensures nothing less than a hair miracle. They draw upon water &mdash; the spring of health and eternal youth, and an advanced delivery system that takes beneficial botanical ingredients and creates tiny molecules from that material to infuse unique anti-aging, strengthening, color preserving and purifying "I can't believe I fit in this dress" results.</p>
            <p>Number 4&trade; Style Bureau&trade; collaborates with and supports talented hairstylists, artists, environmentalist, fashion designers, musicians, taste- makers, writers, landscapers and scientists to not only decide where Number 4 goes next but to actively improve the state of our planet &mdash; each season.</p>
            <p>That's what we believe in. That's what we live for.</p>
        </div>
    </div>


    <div class="u-pad--vert @x3-pad"></div>


    <div class="section--content offer__title--hover">
        <h3 class="offer__title offer__title--divider uppercase color-light">
            <span class="offer__title__text sans-primary-book content__title u-pad--right @x2-pad">INSPIRATION</span>
        </h3>
        <div class="sans-secondary-book">
            <p>French taste is simply exquisite and simply said we are inspired by French culture, virtues and debonair ideals. Each one of our four product collections is inspired by a special moment in Paris. Discover each product's story, personality, character and French neighborhood on our product package and literature.</p>
            <p>
                <strong>4&eacute;me. Le Marais. Lumiere d'hiver&trade; Essentials Collection</strong><br>
                <strong>6&eacute;me. Saint Germain-des-Pres. Jour d'automne&trade; Style Collection</strong><br>
                <strong>7&eacute;me. Palais-Bourbon, Central Paris. Fleurs de Temps&trade; Volume Collection</strong><br>
                <strong>16&eacute;me. Bois de Boulogne, Trocadero. L'eau de Mare&trade; Hydrate Collection</strong>
            </p>
            <div class="will-bounce u-mar--top @x2-mar">
                <img class="u-mar--center will-bounce" src="/images/graphics/inspiration-diagram.jpg?appV=<%= DtmContext.ApplicationVersion %>" alt="Diagram">
            </div>
        </div>
    </div>


    <div class="u-pad--vert @x3-pad"></div>


    <div class="section--content offer__title--hover">
        <h3 class="offer__title offer__title--divider uppercase color-light">
            <span class="offer__title__text sans-primary-book content__title u-pad--right @x2-pad">BRAND VALUES</span>
        </h3>
        <div class="sans-secondary-book">
            <p>Number 4 High Performance Hair Care delivers the highest quality products, with an extraordinary experience, creating a new standard of excellence.</p>
            <div class="row u-mar--bottom @x2-mar">
                <div class="col @sm-u-vw">
                    <ul class="left-margin @x2-mar">
                        <li><strong>Innovative, Lightweight, Color Protecting,</strong></li>
                        <li><strong>Anti-Aging Formulas, 100% Vegan, Gluten Free,</strong></li>
                        <li><strong>Sulfate &amp; Sodium Chloride Free, Paraben Free.</strong></li>
                    </ul>
                </div>
                <div class="col @sm-u-vw u-pad--left @x2-pad">
                    <img src="/images/graphics/brand-value-logos.jpg?appV=<%= DtmContext.ApplicationVersion %>" alt="logos">
                </div>
            </div>
            <h3 class="sans-primary-book content__headline">The Ultimate Hair Care Experience</h3>
        </div>
    </div>


    <div class="u-pad--vert @x3-pad"></div>


    <div class="section--content offer__title--hover">
        <h3 class="offer__title offer__title--divider uppercase color-light">
            <span class="offer__title__text sans-primary-book content__title u-pad--right @x2-pad">LIQUID COMPLEX CULTURE</span>
        </h3>
        <div class="sans-secondary-book">
            <p>Number 4 Liquid Complex Culture is the backbone of our brand, defining all of our products and drawing upon water and an advanced delivery system that takes beneficial botanical agents and technology to achieve consistent high performance hair care results.</p>
            <p><strong>Liquid Vibrance&trade; Complex</strong> (Black Currant, Soy Yogurt, Algae, Yerba Mate) Nutritive to hair and scalp, moisturizes and enhances shine. Contains a blend of vitamins and minerals to restore natural vibrancy. Color protecting.</p>
            <p><strong>Liquid Vitality&trade; Complex</strong> (Acai Berry, Hibiscus, Mangosteen, Vitamin C) Contains potent anti-aging properties which promote and enhance youthful vitality. Rich in antioxidants.</p>
            <p><strong>Liquid Defense&trade;Complex</strong> (Burdock Root, Oolong Tea, Irish Moss, Vegetable Protein) Hydrates and strengthens. Repairs damage, revitalizes and restores. Helps protect from the adverse effects of heat styling, chemical processing and environmental factors.</p>
            <p><strong>Liquid Purity&trade; Complex</strong> (Lemongrass, Gooseberry, Organic Oatmeal, Golden Seal) Sulfate &amp; Sodium Chloride free formulas prevent build-up while protecting color and natural sheen.</p>
        </div>
    </div>


    <div class="u-pad--vert @x3-pad"></div>


    <div class="section--content offer__title--hover">
        <h3 class="offer__title offer__title--divider uppercase color-light">
            <span class="offer__title__text sans-primary-book content__title u-pad--right @x2-pad">STYLE DOSSIER</span>
        </h3>
        <div class="sans-secondary-book">
            <div class="row-to-center">
                <div class="col @sm-u-vw">
                    <h3 class="sans-primary-book content__headline">All Number 4 Stylers feature:</h3>
                    <blockquote class="blockquote--line u-mar--vert @x3-mar">
                        <p>Flex-Net Resins to provide flexible style with shine.<br>Humidity Resistant Technology to reduce frizz and flyaways.<br>Anti-Static Properties to provide extra conditioning.<br>Thermal Protection to shield hair from heat.<br>Formulas free of drying alcohols.<br>Versatility &mdash; Use on wet or dry hair. For all hair types.<br>Convenience &mdash; Easy to cocktail together or layer into hair.</p>
                    </blockquote>
                    <i>Our technology. Your creativity.</i>
                </div>
                <div class="col @sm-u-vw u-pad--left @x3-pad">
                    <img src="/images/graphics/style-dossier-products.jpg?appV=<%= DtmContext.ApplicationVersion %>" alt="Style Dossier">
                </div>
            </div>
        </div>
    </div>

</asp:Content>

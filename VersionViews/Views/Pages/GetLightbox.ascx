<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="System.Linq" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>

<%
    var title = SettingsManager.ContextSettings["Label.ProductName"];
    var code = Request["code"] ?? string.Empty;

    if ( !String.IsNullOrEmpty(code) ) { %>

    <%
        var product = DtmContext.CampaignProducts.FirstOrDefault(cp => cp.ProductCode == code);
        var CrossedOutPrice = product.PropertyIndexer["CrossedOutPrice"] ?? string.Empty;
        var Thumbnail = (product.PropertyIndexer["Thumbnail"] ?? string.Empty).ToLower().Replace(" ", "-").Replace(".", "-");
    %>
    <div class="is-ajax" data-ajax-page-handler="<%= Request["page"] ?? string.Empty %>">
        <div class="row-to-center u-vw--100">
        <div class="o-pos col">
            <div class="l-outer__in c-brand center-margin">
                <!-- // intro -->
                <div class="row-to-center u-vw--100 o-pos">
                    <div class="col @sm-u-vw option__img">
                        <img class="u-mar--center" src="/images/products/full/<%= Thumbnail %>.jpg?appV=<%= DtmContext.ApplicationVersion %>">
                    </div>
                    <div class="col @sm-u-vw h7 sans-primary-book">
                        <div class="section--content">
                            <h3 class="offer__title offer__title--divider uppercase color-light">
                                <span class="offer__title__text sans-primary-book content__title u-pad--right @x2-pad"><%= product.ProductName %></span>
                            </h3>
                            <div class="option__desc u-mar--vert @x2-mar">
                                <span class="block"><em class="sans-primary-bold">Price:</em> <span class="linethrough-text color-price"><%= CrossedOutPrice %></span> <%= product.Price.ToString("C") %></span>
                                <span class="block"><%= product.DisplayText %></span>
                            </div>
                            <div class="row-to-center">
                                <div class="col showbox-inner">
                                </div>
                                <div class="col left-padding @x2-pad">
                                    <a href="#" data-ajax-close-video class="sans-secondary-book">Continue Shopping</a>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>

<% } %>

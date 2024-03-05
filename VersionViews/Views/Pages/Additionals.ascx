<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>

<%

    var categoryProducts = DtmContext.CampaignProducts
          .Where(cp => cp.CategoryIndexer.Has("Index"))
          .ToList();

%>

<div class="option row sans-primary-book color-dark center-text u-mar--vert @x3-mar">

    <%
        for (int i = 0, index = 1; i < categoryProducts.Count; i++, index++) {
            var product = categoryProducts.ElementAt(i);
            var CrossedOutPrice = product.PropertyIndexer["CrossedOutPrice"] ?? string.Empty;
            var Thumbnail = (product.PropertyIndexer["Thumbnail"] ?? string.Empty).ToLower().Replace(" ", "-").Replace(".", "-");
    %>

    <!-- // Option -->
   
    <div class="column-block option__item u-vw--33 h7 u-pad @x3-pad">
        <div class="product">
        <div class="will-animate-thumb" data-ajax-video data-ajax-code="<%= product.ProductCode %>">
            <img class="u-mar--center" src="/images/products/<%= Thumbnail %>.jpg?appV=<%= DtmContext.ApplicationVersion %>">
        </div>
        <div class="option__desc u-mar--vert @x2-mar">
            <span class="block"><%= product.ProductName %></span>
            <span class="block"><em class="sans-primary-bold">Price:</em> <span class="linethrough-text color-price"><%= CrossedOutPrice %></span> <%= product.Price.ToString("C") %></span>
        </div>
            </div>
        <a data-code="<%= product.ProductCode %>" data-code-name="<%= product.ProductName %>" class="animate order-button" data-code-toggle="true" title="Add To Cart">Add To Cart</a>
  </div>

    <% } %>

</div>

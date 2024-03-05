<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<% var productName = SettingsManager.ContextSettings["Label.ProductName"]; %>
<% var productDescription = SettingsManager.ContextSettings["Label.MetaDescription"]; %>
<% var getFacebookImage = SettingsManager.ContextSettings["SocialPlugins.Facebook.OpenGraphImage"]; %>
<%

    var categoryProducts = DtmContext.CampaignProducts
          .Where(cp => cp.CategoryIndexer.Has("Index"))
          .ToList();

%>
<script type="application/ld+json">
		{
		  "@context": "http://schema.org",
		  "@type": "Product",
		  "aggregateRating": {
		    "@type": "AggregateRating",
		    "ratingValue": "5",
		    "reviewCount": "3"
		  },
		  "description": "<%= productDescription %>",
		  "name": "<%= productName %>",
		  "image": "<%= getFacebookImage %>",
		  "url" : "<%= DtmContext.Domain.FullDomainOfferVersionContext %>",
		  "offers": [
		  <%
		  	for (int i = 0; i < categoryProducts.Count; i++) {
		  		var product = categoryProducts.ElementAt(i);
                var Thumbnail = (product.PropertyIndexer["Thumbnail"] ?? string.Empty).ToLower().Replace(" ", "-").Replace(".", "-");
		  %>
			  {
			    "@type": "Offer",
			    "availability": "http://schema.org/InStock",
				"name" : "<%= product.ProductName %>",
				"sku" : "<%= product.ProductSku %>",
	            "price": "<%= product.Price.ToString("N2") %>",
                "image" : "<%= DtmContext.Domain.FullDomain %>images/products/<%= Thumbnail %>.jpg",
	            "priceCurrency" : "USD"
				<% if ( i == categoryProducts.Count - 1 ) { %>
			   }
				<% } else { %>
			   },
				<% } %>
		  <% } %>
		  ],
		  "review": [
		    {
		      "@type": "Review",
		      "author": "Sarah B.",
		      "description": "I love to use Volumizing Shampoo with Hydrating Condition for soft, supple volume and body.",
		      "reviewRating": {
		        "@type": "Rating",
		        "bestRating": "5",
		        "ratingValue": "5",
		        "worstRating": "1"
		      }
		    },
		    {
		      "@type": "Review",
		      "author": "Kris B.",
		      "description": "Number 4's Reconstructing Masque combined with the Hydrating Shampoo makes my hair incredibly soft, light and manageable. Can't live with them!",
		      "reviewRating": {
		        "@type": "Rating",
		        "bestRating": "5",
		        "ratingValue": "5",
		        "worstRating": "1"
              }
			},
			{
		      "@type": "Review",
		      "author": "Cynthia V.",
		      "description": "I'm in love with Number 4 because my curly hair feels light and smooth. Plus, it's gluten and cruelty free which is important to me.",
		      "reviewRating": {
		        "@type": "Rating",
		        "bestRating": "5",
		        "ratingValue": "5",
		        "worstRating": "1"
		      }
		    }
		  ]
		}
		</script>

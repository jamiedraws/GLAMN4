<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<%
	var SocialHashtag = LabelsManager.Labels["SocialHashtag"] ?? "#SleepStyler";
	var FacebookLink = LabelsManager.Labels["FacebookLink"] ?? "https://www.facebook.com/Number4Hair";
	var TwitterLink = LabelsManager.Labels["TwitterLink"] ?? "https://twitter.com/number4haircare";
	var InstagramLink = LabelsManager.Labels["InstagramLink"] ?? "https://www.instagram.com/number4haircare/";
	var PinterestLink = LabelsManager.Labels["PinterestLink"] ?? "https://www.pinterest.com/number4haircare/";
%>
<% var productName = SettingsManager.ContextSettings["Label.ProductName"]; %>

<ul class="c-list--horz">

    <% if ( !String.IsNullOrEmpty(TwitterLink) ) { %>
	<li class="c-list__item column-block">
		<a href="<%= TwitterLink %>" title="<%= productName %> on Twitter" target="_blank" class="no-text-decoration icon-twitter"></a>
	</li>
	<% } %>

	<% if ( !String.IsNullOrEmpty(FacebookLink) ) { %>
	<li class="c-list__item column-block">
		<a href="<%= FacebookLink %>" title="<%= productName %> on Facebook" target="_blank" class="no-text-decoration icon-facebook"></a>
	</li>
	<% } %>

	<% if ( !String.IsNullOrEmpty(InstagramLink) ) { %>
	<li class="c-list__item column-block">
		<a href="<%= InstagramLink %>" title="<%= productName %> on Instagram" target="_blank" class="no-text-decoration icon-instagram"></a>
	</li>
	<% } %>

	<% if ( !String.IsNullOrEmpty(PinterestLink) ) { %>
	<li class="c-list__item column-block">
		<a href="<%= PinterestLink %>" title="<%= productName %> on Pinterest" target="_blank" class="no-text-decoration icon-pinterest"></a>
	</li>
	<% } %>

</ul>

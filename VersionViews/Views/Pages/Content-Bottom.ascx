<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<%
	var EnableOrderForm = SettingsManager.ContextSettings["Order.EnableOrderform", true];
	var ShowMobileOrderForm = SettingsManager.ContextSettings["FrameworkJS/CSS.DtmStyle.ShowOrderFormOnMobile", false];
%>


	<section id="order" class="l-outer__in c-brand">

		<hr class="hr">

		<div class="l-section__in @md-u-vw--80 u-pad @x2-pad @xs-u-pad">

			<% if ( EnableOrderForm ) { %>

				<%-- // Displays the order form --%>
				<% Html.RenderPartial("OrderForm", Model); %>

			<% } else { %>

				<%-- // Displays the out of stock text --%>
				<% Html.RenderPartial("OutOfStock", Model); %>

			<% } %>

			<%-- // Displays the offer details on desktop --%>
			<% if ( EnableOrderForm ) { %>

				<div class="u-mar--bottom @x2-mar">

					<div class="snippet--od o-box @md-u-vw--80 u-mar--center sans-primary-book" tabindex="0">

						<% Html.RenderSnippet("OFFERDETAILS"); %>

					</div>

				</div>

			<% } %>

		</div>

	</section>

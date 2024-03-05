<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClientSiteViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<%-- [#Settings.Label.ProductName#] --%>

	<input type="checkbox" id="nav" class="hide">

	<header id="header" class="l-header @print-only-hide">

		<div class="l-header__in center-text padding @sm-u-pad--horz">

			<div class="row-to-bottom u-vw--100">
				<% Html.RenderSnippet("RESPONSIVE-HEADER"); %>
				<%--
				<div class="col @sm-u-vw">
					<div class="row-to-center center-margin">
						<div class="col">
							<a href="index[#ext#]" class="animat logoe">
								<img class="animate center-margin responsive-img" src="/images/logos/logo.png?appV=[#DtmContext.ApplicationVersion#]" alt="[#Settings.Label.ProductName#]">
							</a>
						</div>
						<div class="col-to-middle col--mobile-nav u-pad--left @x2-pad @back-only-hide">
							<label for="nav" class="icon-hamburger">
								<span></span><span></span><span></span>
							</label>
						</div>
					</div>
				</div>
				<div class="col @sm-u-vw l-header__soc">
					<div class="l-header__soc__in">
					<%= Html.Partial("GetSocial") %>
					</div>
				</div>
				--%>
			</div>
		</div>

	</header>

	<nav class="will-swap-on-scroll l-nav l-header @print-only-hide">

		<div class="l-header__in center-text">
			<nav data-nav="main" class="@back-only-hide nav-header center-text">
				<% Html.RenderSnippet("RESPONSIVE-NAV"); %>
				<%--
				<ul>
					<li class="will-show-on-swap hide-overflow">
						<a href="index[#ext#]">
							<img class="responsive-img logo-will-animate" src="/images/logos/logo-small.png?appV=[#DtmContext.ApplicationVersion#]" alt="[#Settings.Label.ProductName#]">
						</a>
					</li>
					<li><a href="#order">Shop</a></li>
					<li><a href="Brand[#ext#]">The Brand</a></li>
					<li><a href="Videos[#ext#]">How To Videos</a></li>
					<li><a href="Press[#ext#]">Press</a></li>
					<li><a href="Customer-Service[#ext#]">Customer Service</a></li>
					<li><a class="nav__cart color-secondary" href="#order"><span class="cart-qty">(<em data-cart>0</em>)</span> View Cart</a></li>
				</ul>
				--%>
			</nav>
		</div>

	</nav>

	<div class="@back-only-hide l-nav--mobile slide-from-bottom" data-swap-nav>
		<a href="#order" class="animate flat-button">
			<span class="icon-cart"></span> <span>Order Now</span>
		</a>
	</div>

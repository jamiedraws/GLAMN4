<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<%@ Import Namespace="Dtm.Framework.ClientSites" %>
<%@ Import Namespace="System.IO" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

	<% var productName = SettingsManager.ContextSettings["Label.ProductName"]; %>

    <h2 class="sans-primary-bold content__title">Press</h2>

    <div class="sans-primary-book p">
	    <% Html.RenderSnippet("SUBPAGE-TEXT-NAV"); %>
    </div>

    <%

		var dirPath = DtmContext.ProjectPath + "images/press/1/thumb";
        var images =
            Directory.Exists(dirPath)
            ? new DirectoryInfo(dirPath).GetFiles("*.*").Select(i => i.Name).ToList()
            : new List<string>();

	%>


    <ul class="list--images row-to-center">
        <% foreach (var image in images) { %>
            <% var name = image.Replace("-", " ").Replace(".jpg", ""); %>
            <% var rname = Regex.Replace(name, "[0-9]", ""); %>
			<li class="column-block @sm-u-vw--25">
                <a class="animate-and-fade-in block o-pos will-animate-image has-fancybox" rel="press" href="/images/press/1/full/<%= image %>">
                    <img class="animate responsive-img" src="/images/press/1/thumb/<%= image %>" alt="<%= name %>">
                    <p class="offer__title offer__title--divider color-primary center-text">
                        <span class="offer__title__text sans-primary-book p u-pad--horz"><%= rname %></span>
                    </p>
                </a>
			</li>
		<% } %>
    </ul>

</asp:Content>

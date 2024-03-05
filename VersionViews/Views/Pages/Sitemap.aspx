<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>Sitemap</h2>
<% if (!Model.IsMobile) {%><% Html.RenderSnippet("SUBPAGE-TEXT-NAV"); %><% } %>    
<p>Thank you for choosing [PRODUCT NAME]. We are dedicated to your satisfaction and for your convenience, we have provided this Site Map. If you should have any questions or comments, please feel free to visit our <a href="Customer-Service<%= Model.Extension %>" title="Customer Service">Customer Service Page</a>. Thank You!</p>
<ul>
    <li><a href="Index<%= Model.Extension %>" title="Home Page">Home</a></li>
    <li class="mLink"><a href="Customer-Service<%= Model.Extension %>" title="Customer Service">Customer Service</a></li>
    <li class="mLink"><a href="Privacy<%= Model.Extension %>" title="Privacy Policy">Privacy Policy</a></li>
    <li><a href="#" onclick="window.open('/StaticContent.txt?filename=ShippingPolicy&isSelfContained=true','popup','width=475,height=420,toolbars=no,menubar=no,location=no,scrollbars=no,resizable=no,status=no'); return true;" title="Shipping Policy">Shipping</a></li>
    <li><a href="#" onclick="window.open('/StaticContent.txt?filename=ReturnPolicy&isSelfContained=true','popup','width=475,height=420,toolbars=no,menubar=no,location=no,scrollbars=no,resizable=no,status=no'); return true;" title="Return Policy">Returns</a></li>
    <li><a href="#" onclick="window.open('/StaticContent.txt?filename=SecurityPolicy&isSelfContained=true','popup','width=475,height=420,toolbars=no,menubar=no,location=no,scrollbars=no,resizable=no,status=no'); return true;" title="Security Policy">Security</a></li>
    <li class="mLink noborder"><a href="Sitemap<%= Model.Extension %>" title="Sitemap">Sitemap</a></li>
    <% if(!Model.IsMobile) { %><li><a href="#order" title="Order Now">Order Now</a></li><% } %>
</ul>
</asp:Content>
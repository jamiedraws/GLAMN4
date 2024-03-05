<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>Customer Service</h2>
<% if (!Model.IsMobile) {%><% Html.RenderSnippet("SUBPAGE-TEXT-NAV"); %><% } %>                
<%-- *************** START INT'L CONTENT | CUSTOMER SERVICE *************** --%>
<% Html.RenderCustomerService(); %> 
<%-- *************** **END INT'L CONTENT | CUSTOMER SERVICE *************** --%>
</asp:Content>


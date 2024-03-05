<%@ Page Language="C#" MasterPageFile="~/VersionViews/Views/Layouts/InternalLayout.master" Inherits="System.Web.Mvc.ViewPage<OrderPageViewData>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>Privacy Policy</h2>
<% if (!Model.IsMobile) {%><% Html.RenderSnippet("SUBPAGE-TEXT-NAV"); %><% } %>     
<%-- *************** START INT'L CONTENT | PRIVACY POLICY *************** --%>
<% Html.RenderPrivacyPolicy(); %>
<%-- *************** **END INT'L CONTENT | PRIVACY POLICY *************** --%>
</asp:Content>
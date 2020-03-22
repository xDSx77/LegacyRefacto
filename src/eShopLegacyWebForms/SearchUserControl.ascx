<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchUserControl.ascx.cs" Inherits="eShopLegacyWebForms.SearchUserControl" %>

<asp:TextBox ID="searchText" runat="server"></asp:TextBox>
<asp:Button ID="buttonSearch" runat="server" Text="Search" OnClick="SearchClick" />

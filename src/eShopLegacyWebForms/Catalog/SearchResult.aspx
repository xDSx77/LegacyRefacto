<%@ Page Title="Search Result" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="SearchResult.aspx.cs" Inherits="eShopLegacyWebForms.Catalog.SearchResult" %>


<asp:Content ID="CatalogList" ContentPlaceHolderID="MainContent" runat="server">

    <div class="esh-table">
        <section class="esh-body-title">
            <h1 class="esh-header-title">Search Result</h1>
        </section>

        <asp:ListView ID="productList" ItemPlaceholderID="itemPlaceHolder" runat="server" ItemType="eShopLegacyWebForms.Models.CatalogItem">
            <EmptyDataTemplate>
                <table>
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr class="esh-table-header">
                            <th></th>
                            <th>Name
                            </th>
                            <th>Description
                            </th>
                            <th>Brand
                            </th>
                            <th>Type
                            </th>
                            <th>Price
                            </th>
                            <th>Picture name
                            </th>
                            <th>Stock
                            </th>
                            <th>Restock
                            </th>
                            <th>Max stock
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder>
                    </tbody>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <image class="esh-thumbnail" src='/Pics/<%#:Item.PictureFileName%>' />
                        </a>
                    </td>
                    <td>
                        <p>
                            <%#:Item.Name%>
                        </p>
                    </td>
                    <td>
                        <p>
                            <%#:Item.Description%>
                        </p>
                    </td>
                    <td>
                        <p>
                            <%#:Item.CatalogBrand.Brand%>
                        </p>
                    </td>
                    <td>
                        <p>
                            <%#:Item.CatalogType.Type%>
                        </p>
                    </td>
                    <td>
                        <p>
                            <span class="esh-price"><%#:Item.Price%></span>
                        </p>
                    </td>
                    <td>
                        <p>
                            <%#:Item.PictureFileName%>
                        </p>
                    </td>
                    <td>
                        <p>
                            <%#:Item.AvailableStock%>
                        </p>
                    </td>
                    <td>
                        <p>
                            <%#:Item.RestockThreshold%>
                        </p>
                    </td>
                    <td>
                        <p>
                            <%#:Item.MaxStockThreshold%>
                        </p>
                    </td>
                    <td>
                        <asp:HyperLink NavigateUrl='<%# GetRouteUrl("EditProductRoute", new {id =Item.Id}) %>' runat="server" CssClass="esh-table-link">
                            Edit
                        </asp:HyperLink>
                        |
                        <asp:HyperLink NavigateUrl='<%# GetRouteUrl("ProductDetailsRoute", new {id =Item.Id}) %>' runat="server" CssClass="esh-table-link">
                            Details
                        </asp:HyperLink>
                        |
                        <asp:HyperLink NavigateUrl='<%# GetRouteUrl("DeleteProductRoute", new {id =Item.Id}) %>' runat="server" CssClass="esh-table-link">
                            Delete
                        </asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>
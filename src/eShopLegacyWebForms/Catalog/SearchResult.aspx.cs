using eShopLegacyWebForms.Models;
using eShopLegacyWebForms.Services;
using eShopLegacyWebForms.ViewModel;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eShopLegacyWebForms.Catalog
{
    public partial class SearchResult : System.Web.UI.Page
    {
        public ICatalogService CatalogService { get; set; }

        protected PaginatedItemsViewModel<CatalogItem> Model { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.RouteData.Values.Keys.Contains("name"))
            {
                var name = Convert.ToString(Page.RouteData.Values["name"]);
                Model = CatalogService.GetCatalogItemsPaginated(name);
            }
            else
            {
                Model = CatalogService.GetCatalogItemsPaginated("");
            }

            productList.DataSource = Model.Data;
            productList.DataBind();
        }
    }
}
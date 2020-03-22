using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eShopLegacyWebForms
{
    public partial class SearchUserControl : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            buttonSearch.Click += SearchClick;
        }

        protected void SearchClick(object sender, EventArgs e)
        {
            Response.Redirect("~/Catalog/Search/" + searchText.Text);
        }
    }
}
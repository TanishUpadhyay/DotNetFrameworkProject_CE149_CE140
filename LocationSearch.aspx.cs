using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wad_project
{
    public partial class LocationSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

            Response.Redirect("BookCab.aspx?q=" + txtSource.Value + "&dist=" + txtDistance.Value);

        }

        protected void lnklogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

    }
}
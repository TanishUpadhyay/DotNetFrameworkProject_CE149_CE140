﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wad_project
{
    public partial class managedrivercabdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void lnklogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }
    }
}
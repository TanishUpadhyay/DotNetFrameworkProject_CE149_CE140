using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wad_project
{
    public partial class BookCab : System.Web.UI.Page
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["wad"].ConnectionString;
        SqlConnection con;
        string sourcepalce;
        string dist;
        protected void Page_Load(object sender, EventArgs e)
        {
            sourcepalce = Request.QueryString["q"].ToString();
            Console.WriteLine(sourcepalce);
            dist = Request.QueryString["dist"];
            if (!IsPostBack)
            {
                con = new SqlConnection(constring);
                string query = "select c.CabID,c.CabModel,c.Fare,c.Location,d.DriverPhno,d.DriverName,c.fare,d.DriverId,d.DriverEmail from CabDetails c join DriversDetails d on d.DriverId=c.CabID where lower(c.Location) like '%" + sourcepalce.ToString().ToLower() + "%'";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                }
                else
                {
                    lblFare.Font.Size = 18;
                    lblFare.ForeColor = System.Drawing.Color.Red;
                    lblFare.Text = "No Cabs are available.";
                }
            }
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "SelectCab")
            {
                LinkButton btn = e.CommandSource as LinkButton;
                GridViewRow gr = btn.NamingContainer as GridViewRow;
                string demail = (string)GridView1.DataKeys[gr.RowIndex]["DriverEmail"];
                //string fare = (string)GridView1.DataKeys[gr.RowIndex]["fare"];
                double fare = Convert.ToDouble(GridView1.DataKeys[gr.RowIndex]["fare"]);
                string DriverPhno = (string)GridView1.DataKeys[gr.RowIndex]["DriverPhno"];
                 double distance = Convert.ToDouble(dist.Substring(0, dist.IndexOf("km")));
                //double distance = 150;
                double approxFare = fare * distance;
                //double approxFare = 150;
                lblFare.Font.Size = 18;
                lblFare.ForeColor = System.Drawing.Color.Red;
                lblFare.Text = "Approxmate fare for your trip is: $" + approxFare.ToString();
                
            }
        }
        

        protected void btnRevise_Click(object sender, EventArgs e)
        {
            Response.Redirect("LocationSearch.aspx");
        }

        protected void lnklogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
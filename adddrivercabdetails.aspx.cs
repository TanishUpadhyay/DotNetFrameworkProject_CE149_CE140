using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wad_project
{
    public partial class adddrivercabdetails : System.Web.UI.Page
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["wad"].ConnectionString;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected int Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int cab_id = 0;
                con = new SqlConnection(constring);
                con.Open();
                cab_id++;
                SqlCommand cmd = new SqlCommand("insert into CabDetails (CabModel,Fare,Location) values('"+ txtCabmodel.Text + "','" + txtFare.Text + "','" + txtLocation.Text + "') ", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Cab Details Are Inserted')</script>");
                con.Open();
                cmd = new SqlCommand("select max (CabID) from CabDetails", con);
                //con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                    return Convert.ToInt32(dr[0].ToString());
                else
                    return 0;
            }
            finally
            {
                con.Close();
            }
        }

        protected void txtCabid_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int cabid = Button1_Click(null, null);
            adddriver(cabid);
        }
        public void adddriver(int cabID)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into DriversDetails values('" + txtDname.Text + "','" + txtDpno.Text + "','" + txtDemail.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("</script>alert('Driver Details Entered')</script>");

        }

        protected void lnklogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }
    }
}
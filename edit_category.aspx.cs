using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace WebApplication9
{
    public partial class edit_category : System.Web.UI.Page
    {
        public edit_category()
        { }
        public string cn = "Data Source=desktop-ui4i9qe\\sqlexpress;Initial Catalog=ImageOnline;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_cat_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cn);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string a = "update category set Category_Name =' " + cname.Text.ToString() +
                 "' where Category_Id ='" + cid.Text.ToString() + "';";
                SqlCommand cmd = new SqlCommand(a, con);
                cmd.ExecuteNonQuery();
                GridView1.DataBind();
            }
            Response.Redirect("add_category.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_category.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}
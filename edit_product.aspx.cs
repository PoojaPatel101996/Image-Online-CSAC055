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
    public partial class edit_product : System.Web.UI.Page
    {
        public edit_product()
        { }
        public string cn = "Data Source=desktop-ui4i9qe\\sqlexpress;Initial Catalog=ImageOnline;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void edit_prod_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(cn);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                

                string a = "update product set Product_Id='" + this.pid.Text + "',Product_Name='" + this.pname.Text + "',Category_Name='" + this.cname.Text + "',Sales_Price='" + this.sales.Text + "',Available_quantity='" + this.quantity.Text + "' where Product_Id='" + this.pid.Text + "';";



                SqlCommand cmd = new SqlCommand(a, con);
                cmd.ExecuteNonQuery();
                GridView1.DataBind();


            }
            Response.Redirect("add_product.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_product.aspx");
        }
    }
}
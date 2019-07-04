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
    public partial class add_product : System.Web.UI.Page
    {
        public add_product()
        {

        }
        public string cn = "Data Source=desktop-ui4i9qe\\sqlexpress;Initial Catalog=ImageOnline;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void add_prod_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cn);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string a = "insert into product(Product_Id,Product_Name,Category_Name,Sales_Price,Available_quantity)values('" + pid.Text.ToString() + "', '"  + pname.Text.ToString() + "', '"+ cname.Text.ToString()+
                   "', '"+ sales.Text.ToString() + "', '" + quantity.Text.ToString()+ " ')";



                SqlCommand cmd = new SqlCommand(a, con);
                cmd.ExecuteNonQuery();
                GridView1.DataBind();
            }
            Response.Redirect("add_product.aspx");
            

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("edit_product.aspx");
            
        }

        
    }
}
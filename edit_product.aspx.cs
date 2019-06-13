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
            SqlConnection con = new SqlConnection(cn);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string a = "select p.Product_Id,c.Category_Name,p.Product_Name,p.Sales_Price,p.Available_Quantity from category c, product p where c.Category_Id=p.Category_Id";

                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = a;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();

            }
        }
    }
}
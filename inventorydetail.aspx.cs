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
    public partial class inventorydetail : System.Web.UI.Page
    {
        public inventorydetail()
        {

        }
        public string cn = "Data Source=desktop-ui4i9qe\\sqlexpress;Initial Catalog=ImageOnline;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cn);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string a = "select c.Category_Name,p.Product_Name,p.Available_Quantity from category c, product p where c.Category_Id=p.Category_Id";
                
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

            SqlConnection con1 = new SqlConnection(cn);
            con1.Open();
            if (con1.State == System.Data.ConnectionState.Open)
            {
                string b = "select c.Category_Name,COUNT(p.Category_Name) as Number_of_products from category c,Product p where c.Category_Name=p.Category_Name GROUP by c.Category_Name;";


                

                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = b;
                cmd1.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd1;
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView2.DataSource = ds;
                GridView2.DataBind();
                con.Close();

            }


        }

       
    }
}
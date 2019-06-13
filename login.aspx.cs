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
    public partial class login : System.Web.UI.Page

    {
        public login()
        {

        }
        public string cn = "Data Source=desktop-ui4i9qe\\sqlexpress;Initial Catalog=ImageOnline;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cn);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string a = "insert into login(login_Id,username,password) Select Registration_Id,Username,Password from signup";
                SqlCommand cmd = new SqlCommand(a, con);
                cmd.ExecuteNonQuery();

                Response.Write("CONNECT SUCCESSFULLY");
            }
        }

        
    }
}
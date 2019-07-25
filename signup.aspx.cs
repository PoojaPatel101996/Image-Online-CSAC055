using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using BotDetect.Web.UI;
using BotDetect;
using System.Configuration;

namespace WebApplication9
{
    public partial class signup : System.Web.UI.Page
    {
        public signup()
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
                string a = "insert into signup(Registration_Id,Firstname,Lastname,Username,Password,Confirm_Password)values('" + Id.Text.ToString() + "','" +
                    fname.Text.ToString() + "','" + lname.Text.ToString() + "','" + uname.Text.ToString() + "','" + pass.Text.ToString() + "','" + confirmpass.Text.ToString() + " ')";
                SqlCommand cmd = new SqlCommand(a, con);
                cmd.ExecuteNonQuery();

                
            }

            Response.Redirect("login.aspx");
            Response.Write("CONNECT SUCCESSFULLY");

        }

        protected void captcha_button_Click(object sender, EventArgs e)
        {
            bool ishuman = CaptchaBox.Validate(txtCaptcha.Text);
            txtCaptcha.Text = null;
            if (!ishuman)
            {
                Label1.Text = "Invalid";

            }
            else
            {
                Label1.Text = "valid";


            }
        }
    }
}
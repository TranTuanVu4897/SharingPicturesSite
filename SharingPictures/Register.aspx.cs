using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SharingPictures
{
    public partial class Register : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnHomePage_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("insert into users values(@user,@pass,@mail,@status,@sex,@about,@role)", conn);
            cmd.Parameters.AddWithValue("@user", txtUser.Text);
            cmd.Parameters.AddWithValue("@pass", txtPass.Text);
            cmd.Parameters.AddWithValue("@mail", txtMail.Text);
            cmd.Parameters.AddWithValue("@status", 1);
            cmd.Parameters.AddWithValue("@sex", radioSex.SelectedItem.Value.ToString());
            cmd.Parameters.AddWithValue("@about", "");
            cmd.Parameters.AddWithValue("@role", 2);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SharingPictures
{
    public partial class Login : System.Web.UI.Page
    {
        string connStr = WebConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["login"] = "0";
        }

        protected void btnHomePage_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand("Select * from Users where username = @user and password = @pass", conn);
            cmd.Parameters.AddWithValue("@user", txtUser.Text);
            cmd.Parameters.AddWithValue("@pass", txtPass.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            da.Fill(tb);

            if (tb.Rows.Count > 0)
            {
                Session["login"] = tb.Rows[0]["Role"].ToString();
                Session["user"] = txtUser.Text;
                Response.Redirect("HomePage.aspx");
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}
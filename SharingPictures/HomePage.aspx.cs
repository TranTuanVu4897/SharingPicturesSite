using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SharingPictures
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"].ToString().Equals("0"))
            {
                btnUser.Visible = false;
                btnUpload.Visible = false;
                btnLogin.Visible = true;
                btnRegister.Visible = true;
            }
            else if (Session["login"].ToString().Equals("1"))
            {
                btnLogin.Visible = false;
                btnRegister.Visible = false;
                btnUser.Visible = true;
                btnUpload.Visible = true;

            }else if (Session["login"].ToString().Equals("2"))
            {
                btnLogin.Visible = false;
                btnRegister.Visible = false;
                btnUser.Visible = true;
                btnUpload.Visible = true;

            }
        }

        protected void btnUser_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}
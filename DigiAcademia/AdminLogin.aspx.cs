using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigiAcademia
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text.Trim()=="admin" && txtpswd.Text.Trim()=="admin123")
            {
                Response.Redirect("AdminDashboard.aspx");
            }

            Response.Redirect("AdminLogin.aspx");
        }
    }
}
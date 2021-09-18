using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigiAcademia
{
    public partial class LogInFormAuth : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (FormsAuthentication.Authenticate(txtUserid.Text, txtPasswrd.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(txtUserid.Text, true);
            }
            else
            {
                Msg.Text = "Invalid User Name and/or Password";
            }  
        }
    }
}
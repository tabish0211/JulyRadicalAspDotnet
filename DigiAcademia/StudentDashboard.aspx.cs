using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigiAcademia
{
    public partial class StudentDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"]==null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {

        }
    }
}
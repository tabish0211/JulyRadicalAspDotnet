using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigiAcademia
{
    public partial class OTP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVerify_Click(object sender, EventArgs e)
        {
            //TO-Do--verification of the otp code

            lblNewPswd.Visible = true;
            lblConfPswd.Visible = true;
            txtNewPswd.Visible = true;
            txtConfPswd.Visible = true;
            btnChangePswd.Visible = true;
        }
    }
}
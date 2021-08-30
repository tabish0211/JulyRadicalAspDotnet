using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DigiAcademia
{
    public partial class OTP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Visible = false;
            btnGoLogin.Visible = false;
            lblSuccessMessage.Visible = false;
        }

        protected void btnVerify_Click(object sender, EventArgs e)
        {
            //TO-Do--verification of the otp code
            if (Convert.ToInt32(Session["otp"].ToString())==Convert.ToInt32(txtOTP.Text.Trim()))
            {
                lblNewPswd.Visible = true;
                lblConfPswd.Visible = true;
                txtNewPswd.Visible = true;
                txtConfPswd.Visible = true;
                btnChangePswd.Visible = true;
                btnVerify.Enabled = false;
                txtOTP.Enabled = false;
                txtOTP.ReadOnly = true;
            }
            else
            {
                lblError.Visible = true;
            }
            
        }

        protected void btnChangePswd_Click(object sender, EventArgs e)
        {
            //Database--ADO.Net
            SqlConnection con = null;
            try
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
                con.Open();

                SqlCommand cmd = new SqlCommand("UpdatePassword", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@uname", Session["uname"].ToString());
                cmd.Parameters.AddWithValue("@pswd", txtNewPswd.Text.Trim());

                int  count = cmd.ExecuteNonQuery();

                if (count>0)
                {
                    btnChangePswd.Enabled = false;
                    txtNewPswd.Enabled = false;
                    txtNewPswd.ReadOnly = true;
                    txtConfPswd.Enabled = false;
                    txtConfPswd.ReadOnly = false;
                    btnGoLogin.Visible = true;
                    lblSuccessMessage.Visible = true;
                }


            }
            catch (Exception)
            {

                throw;
            }

            finally
            {

                con.Close();

            }
        }

        protected void btnGoLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}
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
    public partial class ForgotPasswordUserName : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVerify_Click(object sender, EventArgs e)
        {
            //Database--ADO.Net
            SqlConnection con = null;
            try
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
                con.Open();

                SqlCommand cmd = new SqlCommand("ValidateUserAndEmail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@uname", txtUsername.Text.Trim());
                cmd.Parameters.AddWithValue("@email", txtEmailId.Text.Trim());

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    SendOTP(txtEmailId.Text.Trim());
                    Session["uname"] = txtUsername.Text.Trim();
                    Response.Redirect("OTP.aspx");
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

        private void SendOTP(string email)
        {
            //1234--email
            Session["otp"] = 1234;
        }
    }
}
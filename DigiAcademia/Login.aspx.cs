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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Database--ADO.Net
            SqlConnection con = null;
            try
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
                con.Open();

                SqlCommand cmd = new SqlCommand("ValidateUser", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@uname", txtUserName.Text.Trim());
                cmd.Parameters.AddWithValue("@pswd", txtPassword.Text.Trim());                

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    Session["uname"] = txtUserName.Text.Trim();
                    Response.Redirect("StudentDashboard.aspx");
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

        protected void linkForgot_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPasswordUserName.aspx");
        }
    }
}
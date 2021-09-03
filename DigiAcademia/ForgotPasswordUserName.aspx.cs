using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

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
                    Session["uname"] = txtUsername.Text.Trim();
                    SendOTP(txtEmailId.Text.Trim());                    
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
            var fromAddress = new MailAddress("xyz@gmail.com", "xyz displayname");
            var fromPassword = "xxxxx";
            var toAddress = new MailAddress("pqr@gmail.com", "Pqr displayName");

            string body = string.Empty;
            Random _random = new Random();
            body = _random.Next(1000, 5000).ToString();
           

            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword)

            };

            using (var message = new MailMessage(fromAddress, toAddress)
            {
                Subject = Session["uname"].ToString()+": OTP",
                Body = "Your OTP is: "+body,
                IsBodyHtml = true
            })
            {
                smtp.Send(message);

            }

            //Session["otp"] = body;
            Session["otp"] = 1234;
        }
    }
}
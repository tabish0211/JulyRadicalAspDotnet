using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DigiAcademia.Models;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;



namespace DigiAcademia
{
    public partial class ConfirmReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                var student = Session["student"] as StudentProfile;

                //Mapping from student to controls
                lblUName.Text = student.UserName;
                lblFname.Text = student.FirstName;
                lblLName.Text = student.LastName;
                lblGender.Text = student.Gender.ToString();
                lblEmail.Text = student.Email;
                lblSubjects.Text = student.Subjects;
                lblMobileNo.Text = student.Mobile;
                imgProfile.ImageUrl = student.ImagePath;
            }

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            //Database--ADO.Net
            SqlConnection con = null;
            try
            {
                var student = Session["student"] as StudentProfile;
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
                con.Open();

                SqlCommand cmd = new SqlCommand("InsertStudent", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@uname", student.UserName);
                cmd.Parameters.AddWithValue("@pswd", student.Password);
                cmd.Parameters.AddWithValue("@fname", student.FirstName);
                cmd.Parameters.AddWithValue("@lname", student.LastName);
                cmd.Parameters.AddWithValue("@email", student.Email);
                cmd.Parameters.AddWithValue("@mobilno", student.Mobile);
                cmd.Parameters.AddWithValue("@gender", student.Gender);
                cmd.Parameters.AddWithValue("@subjects", student.Subjects);
                cmd.Parameters.AddWithValue("@ipath", student.ImagePath);

                int count = cmd.ExecuteNonQuery();

                if (count > 0)
                {
                    Response.Redirect("login.aspx");
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
    }
}
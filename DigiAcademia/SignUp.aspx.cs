using DigiAcademia.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigiAcademia
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //Getall the form Data
            var student = new StudentProfile();
            student.UserName = txtUserName.Text.Trim();
            if (txtPswd.Text.Trim().Equals(txtConfPswd.Text.Trim()))
            {
                student.Password = txtPswd.Text.Trim();

            }

            student.FirstName = txtfName.Text.Trim();
            student.LastName = txtLname.Text.Trim();
            student.Gender = Convert.ToChar(rdbGender.SelectedItem.Text);

            for (int i = 0; i < chklstSubjects.Items.Count; i++)
            {
                if (chklstSubjects.Items[i].Selected)
                {
                    student.Subjects += chklstSubjects.Items[i].Text + ",";

                }
            }

            student.Email = txtEmail.Text.Trim();
            student.Mobile = txtMobile.Text.Trim();
            int size = profileUploader.PostedFile.ContentLength;//bytes
            string fileName=profileUploader.PostedFile.FileName;
            profileUploader.PostedFile.SaveAs(Server.MapPath("~/images/" + fileName));
            student.ImagePath = "~/images/" + fileName;

            Session["student"] = student;
            Response.Redirect("ConfirmReg.aspx");

            
           
        }
    }
}
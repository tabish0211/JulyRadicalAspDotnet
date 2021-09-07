using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigiAcademia
{
    public partial class Upload_Syllabus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string path = GetFilepath();
            //Database--ADO.Net
            SqlConnection con = null;
            try
            {

                con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
                con.Open();

                SqlCommand cmd = new SqlCommand("InsertSyllabus", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@path",path);

                int count = cmd.ExecuteNonQuery();
                Response.Redirect("Upload Syllabus.aspx");
            }

            catch (Exception ex)
            {

            }

            finally
            {

                con.Close();
            }
        }

        private string GetFilepath()
        {
            string fileName = FileUpload1.PostedFile.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Syllabus/" + fileName));
            return "~/Syllabus/" + fileName;
        }
    }
}
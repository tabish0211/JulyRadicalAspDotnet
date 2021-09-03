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
    public partial class AssignTeacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //Database--ADO.Net
            SqlConnection con = null;
            try
            {

                con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
                con.Open();

                SqlCommand cmd = new SqlCommand("InsertUseTeacher", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@uname", DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@tname", DropDownList2.SelectedItem.Text);                

                int count = cmd.ExecuteNonQuery();
                Response.Redirect("AssignTeacher.aspx");
            }

            catch(Exception ex)
            {

            }

            finally
            {

                con.Close();
            }
        }
    }
}
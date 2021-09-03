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
    public partial class AddFee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFee_Click(object sender, EventArgs e)
        {
             //Database--ADO.Net
            SqlConnection con = null;
            try
            {

                con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
                con.Open();

                SqlCommand cmd = new SqlCommand("InsertFee", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@unname", DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@fee", 3000);
                cmd.Parameters.AddWithValue("@paid", Convert.ToInt32(txtFee.Text.Trim()));
                cmd.Parameters.AddWithValue("@balnce", Convert.ToInt32(txtBalance.Text.Trim()));

                int count = cmd.ExecuteNonQuery();
            }

            catch
            {

            }

            finally {

                con.Close();
            }
        }

        protected void txtFee_TextChanged(object sender, EventArgs e)
        {
            int pay = Convert.ToInt32(txtFee.Text.Trim());
            int balance = 3000 - pay;
            txtBalance.Text = balance.ToString();
        }
    }
}
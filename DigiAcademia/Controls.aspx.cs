using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigiAcademia
{
    public partial class Controls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtname_.ReadOnly = true;
            txtname_.Enabled = false;
        }

        protected void btnClick_Click(object sender, EventArgs e)
        {
            lblNameVal.Text = "Rahul";
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            lblNewVal.Text = lblNameVal.Text;
        }

        protected void btnConCatResult_Click(object sender, EventArgs e)
        {
            string res = string.Empty;
            for (int i = 1; i < 11; i++)
            {
                res = res +" "+ (2 * i).ToString();
            }

            lblConcat.Text = res;
        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            lblToggle.Visible = true;
        }

        protected void btnHide_Click(object sender, EventArgs e)
        {
            lblToggle.Visible = false;

        }

        protected void btnTextSender_Click(object sender, EventArgs e)
        {
            //txtCopyName.Text = txtName.Text;
            txtCopyName.Text = lblConcat.Text;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            lblPasswordval.Text = txtPassword.Text;
        }

        protected void btnSwap_Click(object sender, EventArgs e)
        {
            string temp = txtInputFirst.Text;
            txtInputFirst.Text = txtInputSecond.Text;
            txtInputSecond.Text = temp;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigiAcademia
{
    public partial class Control_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                chkSkillsreplica.Items.Add("C");
                chkSkillsreplica.Items.Add("C#");
                chkSkillsreplica.Items.Add("Java");
                chkSkillsreplica.Items.Add("PHP");  
  

                //Adding date in drop down

                //DD
                for (int i = 1; i < 32; i++)
                {
                    ddDay.Items.Add(i.ToString());
                }

                //MM
                for (int i = 1; i < 13; i++)
                {
                    ddMM.Items.Add(i.ToString());
                }

                //yy
                for (int i = 2000; i < 2021; i++)
                {
                    ddYY.Items.Add(i.ToString());
                }

                imgBackground.ImageUrl = "~/images/sample.png";

                rdbCity.Items.Add("Pune");
                rdbCity.Items.Add("Patna");
                rdbCity.Items.Add("New Delhi");
                rdbCity.Items.Add("Ooty");
            }
            

        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            //foreach (var item in chkSkills.Items)
            //{
            //    if (item.)
            //    {

            //    }
            //}

            for (int i = 0; i < chkSkills.Items.Count; i++)
            {
                if (chkSkills.Items[i].Selected)
                {
                    lblSkills.Text += chkSkills.Items[i].Text + " ";
                }
            }
        }

        protected void btnDropDownShow_Click(object sender, EventArgs e)
        {
            lblCity.Text = ddCity.SelectedItem.Text;
        }

        protected void btnDate_Click(object sender, EventArgs e)
        {
            lblDate.Text = ddDay.SelectedItem.Text + "/" + ddMM.SelectedItem.Text + "/" + ddYY.SelectedItem.Text;
        }

        protected void btnHome_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Controls.aspx");
        }

        protected void btnShowHobbies_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < lstHobbies.Items.Count; i++)
            {
                if (lstHobbies.Items[i].Selected)
                {
                    lblHobbies.Text += lstHobbies.Items[i].Text + " ";
                }
            }
        }

        protected void btnGender_Click(object sender, EventArgs e)
        {
            lblGender.Text = rdbGender.SelectedItem.Text;
        }

        protected void btnRdbCity_Click(object sender, EventArgs e)
        {
            lblrdbCity.Text = rdbCity.SelectedItem.Text;
        }
    }
}
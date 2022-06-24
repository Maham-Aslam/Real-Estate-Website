using System;
using databaseProject.Dal;

namespace SE_Project
{
    public partial class ProfileSettings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Update_Button_Click(object sender, EventArgs e)
        {
            String Name = FNamePg8.Text;
            String Name1 = LNamePg8.Text;
            String Name3 = Pg2Password.Text;
            String Name4 = Pg2DOB.Text;
            String Name5 = Pg2Number.Text;
            String Name6 = Pg8City.Text;

            mydal objMyDal = new mydal();

            int[] ret = new int[2];
            Label6.Visible = false;

            ret = objMyDal.UpdateData(Name, Name1, Name3, Name4, Name5, Name6, Request.Cookies["sessionmanagement"].Value);

            if (ret[0] == 2)
            {
                Label6.Visible = true;
                Label6.ForeColor = System.Drawing.Color.IndianRed;
                Label6.Text = "*Your number should start with 03";


            }
            else if (ret[1] == 1)
            {
                Response.Redirect("~/UserProfile.aspx?username=");
            }
            else if (ret[1] == 2)
            {
                Response.Redirect("~/AgentProfile.aspx?username=");
            }
        }
    }
}
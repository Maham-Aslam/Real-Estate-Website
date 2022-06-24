using System;
using databaseProject.Dal;

namespace SE_Project
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Button_Click(object sender, EventArgs e)
        {

            String Name = Pg1email.Text;
            String Name1 = exampleInputPassword1.Text;

            mydal objMyDal = new mydal();


            int found;

            found = objMyDal.Login(Name, Name1);
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;

            if (found == 1)
            {
                Response.Cookies["sessionmanagement"].Value = Name;
                Response.Cookies["sessionmanagement"].Expires = DateTime.Now.AddDays(2);
                Response.Redirect("Search.aspx");
            }
            else if (found == 2)
            {
                Response.Cookies["sessionmanagement"].Value = Name;
                Response.Cookies["sessionmanagement"].Expires = DateTime.Now.AddDays(2);
                Response.Redirect("AgentProfile.aspx");
            }
            else
            {
                if (Pg1email.Text == "")
                {
                    Label4.Visible = true;
                    Label4.Font.Bold = true;
                    Label4.BackColor = System.Drawing.Color.White;
                    Label4.ForeColor = System.Drawing.Color.IndianRed;
                    Label4.Text = "*Email Field is empty";
                }
                else if (exampleInputPassword1.Text == "")
                {
                    Label5.Visible = true;
                    Label5.Font.Bold = true;
                    Label5.BackColor = System.Drawing.Color.White;
                    Label5.ForeColor = System.Drawing.Color.IndianRed;
                    Label5.Text = "*Password Field is empty";
                }
                else
                {
                    Label6.Visible = true;
                    Label6.Font.Bold = true;
                    Label6.BackColor = System.Drawing.Color.White;
                    Label6.ForeColor = System.Drawing.Color.IndianRed;
                    Label6.Text = "*Add Valid Credentials";
                }

            }

        }
    }
}
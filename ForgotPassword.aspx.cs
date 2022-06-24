using System;
using databaseProject.Dal;

namespace SE_Project
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Forgotpass(object sender, EventArgs e)
        {

            String Name = Pgfemail.Text;
            String Name1 = fPassword1.Text;

            mydal objMyDal = new mydal();



            int found;
            Label2.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            if (fPassword1.Text != ConfirmPg2Password1.Text)
            {
                if (Pgfemail.Text == "" || fPassword1.Text == "")
                {
                    Label2.Visible = true;
                    Label2.ForeColor = System.Drawing.Color.IndianRed;
                    Label2.Text = "*Enter both fields";

                }
                else
                {
                    Label5.Visible = true;
                    Label5.ForeColor = System.Drawing.Color.IndianRed;
                    Label5.Text = "*Passwords not matching";

                }
            }
            else
            {

                found = objMyDal.fpassword(Name, Name1);

                if (fPassword1.Text == ConfirmPg2Password1.Text)
                {

                    if (Pgfemail.Text == "" || fPassword1.Text == "")
                    {
                        Label2.Visible = true;
                        Label2.ForeColor = System.Drawing.Color.IndianRed;
                        Label2.Text = "*Enter both fields";

                    }
                    else if (found == 1)
                    {
                        Label6.Visible = true;
                        Label6.ForeColor = System.Drawing.Color.IndianRed;
                        Label6.Text = "*Email not found. Enter Valid credentials";

                    }
                    else
                    {
                        Response.Redirect("HomePage.aspx");

                    }
                }
            }


        }

    }
}
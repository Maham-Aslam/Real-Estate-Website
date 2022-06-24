using System;
using databaseProject.Dal;

namespace SE_Project
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUp_Button_Click(object sender, EventArgs e)
        {
            String Name = FNamePg2.Text;
            String Name1 = LNamePg2.Text;
            String Name2 = Pg2email.Text;
            String Name3 = Pg2Password.Text;
            String Name4 = Pg2DOB.Text;
            String Name5 = Pg2Number.Text;
            String Name6 = Pg2City.Text;
            String Name7 = DropDownList1.Text;

            mydal objMyDal = new mydal();



            int found;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            if (Pg2Password.Text != ConfirmPg2Password1.Text)
            {
                Label5.Visible = true;
                Label5.ForeColor = System.Drawing.Color.IndianRed;
                Label5.Text = "*Passwords not matching";

            }
            else
            {

                found = objMyDal.SignUp(Name, Name1, Name2, Name3, Name4, Name5, Name6, Name7);




                if (found == 1)
                {
                    Label4.Visible = true;
                    Label4.ForeColor = System.Drawing.Color.IndianRed;
                    Label4.Text = "*Your email should end with .com";


                }
                else if (found == 2)
                {
                    Label6.Visible = true;
                    Label6.ForeColor = System.Drawing.Color.IndianRed;
                    Label6.Text = "*Your number should start with 03";

                }
                else if (found == 3)
                {
                    Label4.Visible = true;
                    Label4.ForeColor = System.Drawing.Color.IndianRed;
                    Label4.Text = "*Email already used. Enter a unique email";

                }
                if (found == 4 && Pg2Password.Text == ConfirmPg2Password1.Text)
                {
                    Response.Redirect("HomePage.aspx");

                }



            }

        }
    }
}
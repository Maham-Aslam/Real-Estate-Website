using System;
using databaseProject.Dal;

namespace SE_Project
{
    public partial class PropertyDescription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pdisplay();
        }
        public void pdisplay()
        {
            string[] infodis = new string[7];

            mydal objMyDal = new mydal();

            infodis = objMyDal.displayPdescription(Request.QueryString["ID"].ToString());
            Label1.Text = infodis[0];
            Label3.Text = infodis[2];
            Label5.Text = infodis[3];
            Label7.Text = infodis[4];
            Label9.Text = infodis[5];
            Label11.Text = infodis[6];

        }
        protected void Jump(object sender, EventArgs e)
        {
            Response.Cookies["pid"].Value = Request.QueryString["ID"].ToString();
            Response.Redirect("~/AgentInfo.aspx");
        }

        protected void ShortlistButton(object sender, EventArgs e)
        {

            string em = Request.Cookies["sessionmanagement"].Value;
            string pi = Request.QueryString["ID"].ToString();
            mydal objMyDal = new mydal();
            objMyDal.Shortlisttable(em, pi);
        }

    }
}
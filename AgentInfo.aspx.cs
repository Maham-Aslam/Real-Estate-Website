using System;
using databaseProject.Dal;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project
{
    public partial class AgentInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Ainfodisplay();
            }
        }

        protected void show(object sender, EventArgs e)
        {
            Ainfodisplay();
        }
        public void Ainfodisplay()
        {
            form7.Style.Value = "display:none";
            form6.Style.Value = "display:block";
            string[] infodis = new string[5];

            mydal objMyDal = new mydal();

            infodis = objMyDal.displayAgentInfo(Request.Cookies["pid"].Value);
            Label9.Text = infodis[0];
            Label2.Text = infodis[0];
            Label4.Text = infodis[1];
            Label6.Text = infodis[2];
            Label8.Text = infodis[3];
            Label10.Text = infodis[4];

        }

        protected void MyPropertiesUP(object sender, EventArgs e)
        {
            form6.Style.Value = "display:none";
            form7.Style.Value = "display:block";
            mydal obj = new mydal();
            Subs_Table2.DataSource = obj.MyPropertiesAI(Request.Cookies["pid"].Value);
            Subs_Table2.DataBind();

        }

        protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "view_button")
            {
                GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
                int index = row.RowIndex;
                GridViewRow row1 = Subs_Table2.Rows[index];
                string id = row1.Cells[0].Text;
                Response.Redirect("~/PropertyDescription.aspx?ID=" + id);

            }
            if (e.CommandName == "view_button1")
            {
                GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
                int index = row.RowIndex;
                GridViewRow row1 = Subs_Table2.Rows[index];
                string id = row1.Cells[0].Text;
                Response.Cookies["pidFrom"].Value = row1.Cells[0].Text;
                form7.Style.Add("display", "none");
                form6.Style.Add("display", "none");
                Sale_User.Style.Add("display", "block");


            }



        }

        protected void SubscribeButton(object sender, EventArgs e)
        {
            string em = Request.Cookies["sessionmanagement"].Value;
            string pi = Request.Cookies["pid"].Value;
            mydal objMyDal = new mydal();
            objMyDal.Subscribetable(em, pi);
        }

        protected void Rating(object sender, EventArgs e)
        {
            string uemail = Request.Cookies["sessionmanagement"].Value;
            int rate = Int32.Parse(ddlTest.Text);
            mydal objMyDal = new mydal();
            objMyDal.RateAgent(uemail, rate);

        }

        protected void PlaceOfferButton(object sender, EventArgs e)
        {
            int Found = 0;
            string em = Request.Cookies["sessionmanagement"].Value;
            string price = Base_Price_1_User.Text;
            mydal objMyDal = new mydal();
            Found = objMyDal.PlaceOffer(em, Request.Cookies["pidFrom"].Value, price);
            Label1.Visible = false;
            if (Found == 1)
            {
                Label1.Visible = true;
                Label1.ForeColor = System.Drawing.Color.IndianRed;
                Label1.Text = "Your price is less than the base price";


            }
            Sale_User.Style.Add("display", "none");
            form6.Style.Add("display", "none");
            form7.Style.Add("display", "block");

        }
        protected void hideSale_User(object sender, EventArgs e)
        {
            Sale_User.Style.Add("display", "none");
            form6.Style.Add("display", "none");
            form7.Style.Add("display", "block");

        }

    }
}
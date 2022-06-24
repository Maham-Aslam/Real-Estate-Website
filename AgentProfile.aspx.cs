using System;
using databaseProject.Dal;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project
{
    public partial class AgentProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            aboutMe();
        }

        protected void disInfo(object sender, EventArgs e)
        {
            offers.Style.Value = "display:none";
            myprop.Style.Value = "display:none";
            addprop.Style.Value = "display:none";
            form20.Style.Value = "display:block";
            aboutMe();



        }
        public void aboutMe()
        {

            string uemail = Request.Cookies["sessionmanagement"].Value;
            string[] infodis = new string[6];

            mydal objMyDal = new mydal();

            infodis = objMyDal.displayInfo(uemail);
            if (infodis[0] != null)
            {
                Label2.Text = infodis[0];
            }
            if (infodis[1] != null)
            {
                Label3.Text = infodis[1];
            }
            if (infodis[2] != null)
            {
                Label4.Text = infodis[2];
            }
            if (infodis[3] != null)
            {
                Label5.Text = infodis[3];
            }
            if (infodis[4] != null)
            {
                Label6.Text = infodis[4];
            }
            if (infodis[5] != null)
            {
                Label7.Text = infodis[5];
            }

        }

        protected void MyPropertiesAP(object sender, EventArgs e)
        {
            offers.Style.Value = "display:none";
            addprop.Style.Value = "display:none";
            form20.Style.Value = "display:none";
            myprop.Style.Value = "display:block";
            string uname = Request.Cookies["sessionmanagement"].Value;
            mydal obj = new mydal();
            Subs_Table2.DataSource = obj.MyPropertiesUP(uname);
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


        }

        protected void AddProperty(object sender, EventArgs e)
        {
            offers.Style.Value = "display:none";
            form20.Style.Value = "display:none";
            myprop.Style.Value = "display:none";
            addprop.Style.Value = "display:block";


        }

        protected void SaveProperty(object sender, EventArgs e)
        {
            String Name = FNamePg8.Text;
            String Name1 = LNamePg8.Text;
            int Name2 = Int32.Parse(Pg8City.Text);
            int Name3 = Int32.Parse(Pg2Password.Text);
            String Name4 = inputtype.Text;

            string uemail = Request.Cookies["sessionmanagement"].Value;

            mydal objMyDal = new mydal();
            objMyDal.AddNewProperty(Name, Name1, Name2, Name3, Name4, uemail);
        }

        protected void viewoffers(object sender, EventArgs e)

        {
            addprop.Style.Value = "display:none";
            form20.Style.Value = "display:none";
            myprop.Style.Value = "display:none";
            offers.Style.Value = "display:block";
            string uname = Request.Cookies["sessionmanagement"].Value;
            mydal obj = new mydal();
            Subs_Table4.DataSource = obj.DisplayOffers(uname);
            Subs_Table4.DataBind();
        }
        protected void GridView4_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "view_button")
            {
                GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
                int index = row.RowIndex;
                GridViewRow row1 = Subs_Table4.Rows[index];
                string id = row1.Cells[0].Text;
                string id1 = row1.Cells[1].Text;
                string id2 = row1.Cells[2].Text;
                AcceptOfferButton(id, id1, id2);


            }

            if (e.CommandName == "view_button1")
            {
                GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
                int index = row.RowIndex;
                GridViewRow row1 = Subs_Table4.Rows[index];
                string id = row1.Cells[0].Text;
                string id1 = row1.Cells[1].Text;
                string id2 = row1.Cells[2].Text;
                RejectOfferButton(id, id1, id2);
            }


        }

        public void AcceptOfferButton(string a, string b, string c)
        {
            string uname = Request.Cookies["sessionmanagement"].Value;
            mydal obj = new mydal();
            obj.AcceptOffer(a, b, c);
            Subs_Table4.DataSource = obj.DisplayOffers(uname);
            Subs_Table4.DataBind();

        }

        public void RejectOfferButton(string a, string b, string c)
        {
            string uname = Request.Cookies["sessionmanagement"].Value;
            mydal obj = new mydal();
            obj.RejectOffer(a, b, c);
            Subs_Table4.DataSource = obj.DisplayOffers(uname);
            Subs_Table4.DataBind();
        }

        protected void ClearCookie(object sender, EventArgs e)
        {
            Response.Cookies["sessionmanagement"].Value = " ";
            Response.Redirect("HomePage.aspx");
        }

    }
}
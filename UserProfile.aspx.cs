using System;
using databaseProject.Dal;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            aboutMe();
        }

        protected void disInfo(object sender, EventArgs e)
        {
            form3.Style.Value = "display:none";
            form2.Style.Value = "display:none";
            myprop.Style.Value = "display:none";
            addprop.Style.Value = "display:none";
            form20.Style.Add("display", "block");
            form20.Style.Value = "display:block";
            aboutMe();
            string uemail = Request.Cookies["sessionmanagement"].Value;
            string[] infodis = new string[6];

            mydal objMyDal = new mydal();

            infodis = objMyDal.displayInfo(uemail);
            if (infodis[0] != null)
            {
                Label1.Text = infodis[0];
            }
            if (infodis[1] != null)
            {
                Label2.Text = infodis[1];
            }
            if (infodis[2] != null)
            {
                Label3.Text = infodis[2];
            }
            if (infodis[3] != null)
            {
                Label4.Text = infodis[3];
            }
            if (infodis[4] != null)
            {
                Label5.Text = infodis[4];
            }
            if (infodis[5] != null)
            {
                Label6.Text = infodis[5];
            }



        }
        public void aboutMe()
        {

            string uemail = Request.Cookies["sessionmanagement"].Value;
            string[] infodis = new string[6];

            mydal objMyDal = new mydal();

            infodis = objMyDal.displayInfo(uemail);
            if (infodis[0] != null)
            {
                Label1.Text = infodis[0];
            }
            if (infodis[1] != null)
            {
                Label2.Text = infodis[1];
            }
            if (infodis[2] != null)
            {
                Label3.Text = infodis[2];
            }
            if (infodis[3] != null)
            {
                Label4.Text = infodis[3];
            }
            if (infodis[4] != null)
            {
                Label5.Text = infodis[4];
            }
            if (infodis[5] != null)
            {
                Label6.Text = infodis[5];
            }

        }
        protected void subscribeAgent(object sender, EventArgs e)
        {
            form20.Style.Value = "display:none";
            form2.Style.Value = "display:none";
            myprop.Style.Value = "display:none";
            addprop.Style.Value = "display:none";
            form3.Style.Value = "display:block";
            string uname = Request.Cookies["sessionmanagement"].Value;
            mydal obj = new mydal();
            Subs_Table.DataSource = obj.Subscribe(uname);
            Subs_Table.DataBind();

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "view_button")
            {
                GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
                int index = row.RowIndex;
                GridViewRow row1 = Subs_Table.Rows[index];
                string agent = row1.Cells[0].Text;
                Response.Redirect("~/AgentInfo.aspx?username=" + agent);
            }

            else if (e.CommandName == "view_button1")
            {
                GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
                int index = row.RowIndex;
                GridViewRow row1 = Subs_Table.Rows[index];
                mydal obj = new mydal();
                string id = row1.Cells[0].Text;
                UnsubscribeAgent(id);
            }




        }
        public void UnsubscribeAgent(string id)
        {
            string uname = Request.Cookies["sessionmanagement"].Value;
            mydal obj = new mydal();
            obj.UnSubscribe(uname, id);
            Subs_Table.DataSource = obj.Subscribe(uname);
            Subs_Table.DataBind();
        }
        protected void shortlistProperty(object sender, EventArgs e)
        {
            form20.Style.Value = "display:none";
            form3.Style.Value = "display:none";
            myprop.Style.Value = "display:none";
            addprop.Style.Value = "display:none";
            form2.Style.Value = "display:block";
            string uname = Request.Cookies["sessionmanagement"].Value;
            mydal obj = new mydal();
            Subs_Table1.DataSource = obj.Shortlist(uname);
            Subs_Table1.DataBind();

        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "view_button")
            {
                GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
                int index = row.RowIndex;
                GridViewRow row1 = Subs_Table1.Rows[index];
                string id = row1.Cells[0].Text;
                Response.Redirect("~/PropertyDescription.aspx?ID=" + id);

            }

            else if (e.CommandName == "view_button1")
            {
                GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);
                int index = row.RowIndex;
                GridViewRow row1 = Subs_Table1.Rows[index];
                mydal obj = new mydal();
                string id = row1.Cells[0].Text;
                Removeproperty(id);
            }


        }

        public void Removeproperty(string propid)
        {
            string uname = Request.Cookies["sessionmanagement"].Value;
            mydal obj = new mydal();
            obj.RemoveFromShortlisttable(uname, propid);
            Subs_Table1.DataSource = obj.Shortlist(uname);
            Subs_Table1.DataBind();
        }

        protected void MyPropertiesUP(object sender, EventArgs e)
        {
            form20.Style.Value = "display:none";
            form3.Style.Value = "display:none";
            form2.Style.Value = "display:none";
            addprop.Style.Value = "display:none";
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
            form20.Style.Value = "display:none";
            form3.Style.Value = "display:none";
            form2.Style.Value = "display:none";
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

        protected void FAgent(object sender, EventArgs e)
        {
            form20.Style.Value = "display:none";
            form3.Style.Value = "display:none";
            form2.Style.Value = "display:none";
            myprop.Style.Value = "display:none";
            addprop.Style.Value = "display:none";
            T.Style.Value = "display:block";

        }
        protected void ClearCookie(object sender, EventArgs e)
        {
            Response.Cookies["sessionmanagement"].Value = " ";
            Response.Redirect("HomePage.aspx");
        }
    }
}
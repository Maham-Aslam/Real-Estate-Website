using System;
using databaseProject.Dal;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SE_Project
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            displayPropTable();
        }

        public void displayPropTable()
        {

            mydal obj = new mydal();
            Subs_Table1.DataSource = obj.ShowProp();
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


        }

        protected void Jump(object sender, EventArgs e)
        {
            Response.Cookies["city"].Value = loc.Text;
            Response.Cookies["price"].Value = price.Text;
            Response.Redirect("~/SearchResults.aspx");
        }
    }
}
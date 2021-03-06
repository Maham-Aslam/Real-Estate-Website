using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using databaseProject.Dal;

namespace SE_Project
{
    public partial class SearchResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            mydal obj = new mydal();
            string[,] ret;
            int price = Convert.ToInt32(Request.Cookies["price"].Value);
            string city = Request.Cookies["city"].Value;
            ret = obj.Search(city, price);
            int count = 0;
            while (ret[count, 0] != null)
            {
                count++;
            }
            System.Diagnostics.Debug.WriteLine(count);
            //We create our new div
            System.Web.UI.HtmlControls.HtmlGenericControl cont =
            new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            cont.ID = "cont"; //<---Give and ID to the div, very important!
            cont.Attributes.Add("class", "container");
            //We create our new div
            System.Web.UI.HtmlControls.HtmlGenericControl space =
            new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            space.ID = "space"; //<---Give and ID to the div, very important!
            space.Attributes.Add("class", "col-1");
            int rows = (count / 3) + 1;
            int cards = 0;

            for (int j = 0; j < rows; j++)
            {
                System.Web.UI.HtmlControls.HtmlGenericControl row =
                new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                row.ID = "row_" + Convert.ToString(j); //<---Give and ID to the div, very important!
                row.Attributes.Add("class", "row");
                //We create our new div
                for (int i = 0; i < 3; i++)
                {
                    if (cards >= count)
                    {
                        break;
                    }
                    WebControl a_tag = new WebControl(HtmlTextWriterTag.A);
                    string id = Convert.ToString(j) + "_" + Convert.ToString(i);
                    System.Web.UI.HtmlControls.HtmlGenericControl col =
                    new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    col.ID = "col_" + id; //<---Give and ID to the div, very important!
                    col.Attributes.Add("class", "col-4");
                    //We create our new div
                    System.Web.UI.HtmlControls.HtmlGenericControl div_1 =
                    new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    div_1.ID = "div_1_" + id; //<---Give and ID to the div, very important!
                    div_1.Attributes.Add("class", "card mt-5");
                    div_1.Style.Value = "background-color:black;width:15rem";
                    Image img = new Image();
                    img.Attributes.Add("class", "card-img-top ml-3");
                    img.Style.Value = "background-color: black; border-radius: 50%";
                    img.ImageUrl = "~/Images/ll.jpg";
                    img.AlternateText = "Test image";
                    div_1.Controls.Add(img);

                    System.Web.UI.HtmlControls.HtmlGenericControl div_2 =
                    new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    div_2.ID = "div_2_" + id; //<---Give and ID to the div, very important!
                    div_2.Attributes.Add("class", "card-Body text-white");
                    div_2.Style.Value = "width : 200px";


                    WebControl H4Header = new WebControl(HtmlTextWriterTag.H3);
                    Label labHeader = new Label() { Text = "Property" };
                    labHeader.Attributes.Add("class", "card-title");
                    labHeader.Style.Value = "font-weigth:bold;margin-left:50px";
                    H4Header.Controls.Add(labHeader);

                    //ret[cards, 0]
                    WebControl t0 = new WebControl(HtmlTextWriterTag.P);
                    Label t09 = new Label() { Text = "@" + ret[cards, 0] };
                    t0.Attributes.Add("class", "card-text mt-1");
                    t0.Style.Value = "font-variant: small-caps;";
                    t0.Controls.Add(t09);


                    WebControl t1 = new WebControl(HtmlTextWriterTag.P);
                    Label t2 = new Label() { Text = ret[cards, 1] };
                    t1.Attributes.Add("class", "card-text mt-1");
                    t1.Style.Value = "font-variant: small-caps;";
                    t1.Controls.Add(t2);

                    WebControl t3 = new WebControl(HtmlTextWriterTag.P);
                    Label t4 = new Label() { Text = ret[cards, 2] };
                    t3.Attributes.Add("class", "card-text mt-1");
                    t3.Style.Value = "font-variant: small-caps;";
                    t3.Controls.Add(t4);

                    div_2.Controls.Add(H4Header);
                    div_2.Controls.Add(t0);
                    div_2.Controls.Add(t3);
                    div_2.Controls.Add(t1);
                    div_1.Controls.Add(div_2);
                    a_tag.Attributes.Add("href", "propertyDescription?ID=" + ret[cards, 0]);
                    a_tag.Style.Value = "text-decoration : none";
                    a_tag.Controls.Add(div_1);
                    col.Controls.Add(a_tag);
                    row.Controls.Add(col);
                    cards++;
                }
                cont.Controls.Add(row);
            }
            superDIV.Controls.Add(cont); //<---Add the new div to our already existing div

        }

    }
}
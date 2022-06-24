<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPg2.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="SE_Project.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
     <section class="bg">
      
   
    <nav class="navbar navbar-dark bg-dark">
      <a class="navbar-brand" href="#" runat="server">
        <h3>
          <b> GharLeJao.com</b>
          <small class="text-muted">Real estate website</small>

        </h3>
      </a>

        <li style=" margin-left:170px;">
   <a href="UserProfile.aspx">
            <asp:Button class="btn btn-dark" runat="server" /><svg xmlns="http://www.w3.org/2000/svg"
              width="40" height="40" fill="white" class="bi bi-person-fill" viewBox="0 0 16 16">
              <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
            </svg></a>
      </li>

    </nav>
    <div class="container">
      <div class="row">
        <%--<div class="col-2" >
          
        </div>--%>

        <div class="col-6"style="margin-top: 100px;margin-left:180px" >
            <div id="top">
                <h3 style="font-variant:small-caps"><u>Search Properties For Sale</u></h3>
        </div>

          <div class="move container">

            <div class="row " >
              
  
                 <asp:TextBox ID="loc" CssClass="tbwidth" runat="server" placeholder="City"></asp:TextBox>
                <asp:TextBox ID="price" CssClass="tbwidth ml-3" runat="server" placeholder="price" value=""></asp:TextBox>
                <asp:Button ID="Pg3search" class="btn btn-primary ml-3" Text="Search" OnClick="Jump" runat="server" />
              
            </div>
          </div>
        </div>

          

          <div class="col-3" style=" margin-top: 80px;height: 320px;position:relative;float: left; width: 303px; background-color:rgba(100, 139, 247, 0.3); ">
            <h4 style="margin-left:40px ;" class="font-weight-bold mb-sm-4 "><b>Popular Places</b>
            </h4>
            <div style="max-height:80%;overflow:auto;" >
                   <asp:GridView OnRowCommand="GridView2_RowCommand" ID="Subs_Table1" AutoGenerateColumns="false" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                            HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="False">
                           
                            <Columns>
                         
                                <asp:BoundField DataField="propertyLocation"  />
                                   <asp:BoundField DataField="Number"  />
                             
                            </Columns>
                                                                                            
                        </asp:GridView>
          
          </div>
          </div>
      </div>
    </div>
  </section>

</asp:Content>

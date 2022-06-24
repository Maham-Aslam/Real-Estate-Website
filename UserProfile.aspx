<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPg2.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="SE_Project.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="bg8">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">
            <h3>
                <b>GharLeJao.com</b>
 
            </h3>
        </a>
        
        
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item " style="margin-left:200px">
                        <asp:LinkButton runat="server" ONCLICK="disInfo" class="nav-link" Text="About Me"> </asp:LinkButton>
                        
                    </li>

                    <li class="nav-item  ml-4">
                        <asp:LinkButton runat="server" ONCLICK="shortlistProperty" class="nav-link" Text="Shortlisted Properties "></asp:LinkButton>
                    </li>

                    <li class="nav-item ml-4 ">
                         <asp:LinkButton runat="server" ONCLICK="subscribeAgent" class="nav-link" Text="Subscribed Agents "></asp:LinkButton>
                    </li>

                       <li class="nav-item  ml-4">
                        <asp:LinkButton runat="server" OnClick="MyPropertiesUP"  class="nav-link" Text="My Properties "></asp:LinkButton>
                    </li>
                      <li class="nav-item  ml-4">
                        <asp:LinkButton runat="server"  OnClick="AddProperty" class="nav-link" Text="Add Property "></asp:LinkButton>
                    </li>

           

                    <li class="nav-item dropdown ml-4">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Settings
                        </a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                            <asp:Button ID="Pg7Profile" class="dropdown-item" Text="Edit Profile" PostBackUrl="~/ProfileSettings.aspx" runat="server" />
                            <asp:Button ID="Pg7logOut" class="dropdown-item" OnClick="ClearCookie" Text="Logout"  runat="server" />
                        </div>
                    </li>

                </ul>
            </div>

        <div id="cross">
           
          <%--  <li style=" margin-left:170px;">
                <a href="Page3.aspx" runat="server">
                    <asp:Button class="btn btn-dark" runat="server" /><svg xmlns="http://www.w3.org/2000/svg"
                     width="25" height="30" fill="white" class="bi bi-x-square-fill" viewBox="0 0 16 16">
                <path
                d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm3.354 4.646L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 1 1 .708-.708z" />
            </svg></a>
      </li>--%>
        </div>
    </nav>
    


         

  <div id="form20" class="container" style="background-color:rgb(211,211,211, 0.5); margin-top:80px" runat="server">
            <div class="row">
                <div class="col-5">
                    <br>
                    <div>
                        <b>Personal Details</b>
                    </div>

                    <br>
                    <div id="image-container">
                        <asp:Image ID="image"  ImageUrl="https://cms-assets.tutsplus.com/uploads/users/23/posts/28115/image/html-resume-website-template-design.jpg"
                            class="img-fluid" alt="Responsive image" runat="server" />
                    </div></>
                </div>

                <div class="col-7">
                    </br>
                    <div>
                        <b style="margin-left: -90px;">About Me</b>
                    </div>

                    <br/>
                    <div class="container" style="margin-left: -90px;">
                        <div class="row">
                            <div class="col-3">
                                <asp:Label ID="Pg7FirstName" Text="First Name"  runat="server"></asp:Label>
                            </div>
                            <div class="col-4">
                                <asp:Label ID="Label1"  AssociatedControlID="Pg7FirstName" runat="server"></asp:Label>        
                             </div>
                        </div>
                         <br/>

                        <div class="row">
                            <div class="col-3">
                                 <asp:Label ID="Pg7LastName" Text="Last Name"  runat="server"></asp:Label>
                            </div>
                            <div class="col-4">
                                 <asp:Label ID="Label2"  AssociatedControlID="Pg7LastName" runat="server"></asp:Label>    
                            </div>
                       </div>
                         <br/>

                        
                        <div class="row">
                            <div class="col-3">
                                <asp:Label ID="EmailPage7" Text="Email"  runat="server"></asp:Label>
                            </div>
                            <div class="col-4">
                                  <asp:Label ID="Label3"  AssociatedControlID="EmailPage7" runat="server"></asp:Label>
                            </div>
                        </div>
                           <br/>

                        <div class="row">
                            <div class="col-3">
                                <asp:Label ID="numberPage7" Text="Phone Number"  runat="server"></asp:Label>
                            </div> 
                            <div class="col-4">
                               <asp:Label ID="Label4"  AssociatedControlID="numberPage7" runat="server"></asp:Label>
                            </div>
                        </div>
                           <br/>

                        <div class="row">
                            <div class="col-3">
                                <asp:Label ID="DOBpage7" Text="Date of Birth" runat="server"></asp:Label>
                            </div> 
                            <div class="col-4">    
                                 <asp:Label ID="Label5"  AssociatedControlID="DOBpage7" runat="server"></asp:Label>
                            </div>
                        </div>
                           <br/>

                        <div class="row">
                            <div class="col-3">
                                <asp:Label ID="CityPage7" Text="City"  runat="server"></asp:Label>
                            </div> 
                            <div class="col-4"> 
                                  <asp:Label ID="Label6"  AssociatedControlID="CityPage7" runat="server"></asp:Label>
                            </div>
                        </div>


                    </div>

                </div>

            </div>
      </div>
    

        <div id="form2" runat="server">
             <asp:GridView OnRowCommand="GridView2_RowCommand" ID="Subs_Table1" AutoGenerateColumns="false" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                            HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="False">
                           
                            <Columns>
                         
                                <asp:BoundField DataField="propertyId" HeaderText="Property Id" />
                                   <asp:BoundField DataField="city" HeaderText="City" />
                                <asp:TemplateField>
                                        <itemtemplate>
                                            <asp:Button runat="server" class="btn btn-success btn-sm" CommandName="view_button"  ID="SanctionedButton" Text="View" />
                                         </itemtemplate>
                                     </asp:TemplateField>
                                <asp:TemplateField>
                                    <itemtemplate>
                                            <asp:Button runat="server" class="btn btn-success btn-sm" CommandName="view_button1"  ID="SanctionedButton1" Text="Remove" />
                                         </itemtemplate>
                                </asp:TemplateField>
                            </Columns>
                                                                                            
                        </asp:GridView>

            </div>
        


 
        <div id="form3" runat="server" >
            <asp:GridView OnRowCommand="GridView1_RowCommand" ID="Subs_Table" AutoGenerateColumns="false" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                            HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="False">
                           
                            <Columns>
                                 <asp:BoundField DataField="userId" HeaderText="Agent Id" />
                                <asp:BoundField DataField="FirstName" HeaderText="Agent Name" />
                                <asp:TemplateField>
                                        <itemtemplate>
                                            <asp:Button runat="server" class="btn btn-success btn-sm" CommandName="view_button"  ID="SanctionedButton" Text="View" />
                                         </itemtemplate>
                                </asp:TemplateField>
                                    <asp:TemplateField>
                                    <itemtemplate>
                                            <asp:Button runat="server" class="btn btn-success btn-sm" CommandName="view_button1"  ID="SanctionedButton1" Text="Unsubscribe" />
                                         </itemtemplate>
                                </asp:TemplateField>
                            </Columns>
                                                                                            
                        </asp:GridView>
        </div>
        <div id="myprop" runat="server">
              <asp:GridView OnRowCommand="GridView3_RowCommand" ID="Subs_Table2" AutoGenerateColumns="false" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                            HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="False">
                           
                            <Columns>
                         
                                <asp:BoundField DataField="propertyId" HeaderText="Property Id" />
                                 <asp:BoundField DataField="city" HeaderText="City" />
                                <asp:TemplateField>
                                        <itemtemplate>
                                            <asp:Button runat="server" class="btn btn-success btn-sm" CommandName="view_button"  ID="SanctionedButton" Text="View" />
                                         </itemtemplate>
                                </asp:TemplateField>
                                    <asp:TemplateField>
                                    <itemtemplate>
                                            <%--<asp:Button runat="server" class="btn btn-success btn-sm" CommandName="view_button1"  ID="SanctionedButton1" Text="Delete" />--%>
                                         </itemtemplate>
                                </asp:TemplateField>
                            </Columns>
                                                                                            
                        </asp:GridView>
        </div>
     <div id="addprop" style="display:none" class="container rounded  mt-5 mb-5"  runat="server">
        <form class="move" >
            <div class="form-attributes" style="background-color:rgb(211,211,211, 0.5); margin-top:80px" runat="server">
                <div class="form-row">

                    <div class="col">
                        <asp:Label ID="FirstName" Text="Location" AssociatedControlID="FNamePg8" runat="server">
                            <asp:TextBox ID="FNamePg8" class="form-control" placeholder="JoharTown Phase 2" Width="320px" runat="server" />
                        </asp:Label>
                   </div>
                <div class="col">
                    <asp:Label ID="LastName" Text="City" AssociatedControlID="LNamePg8" runat="server">
                        <asp:TextBox ID="LNamePg8" class="form-control" placeholder="City" Width="320px" runat="server" />
                    </asp:Label>
                </div>
                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                       <asp:Label ID="UserCity" Text="Price" AssociatedControlID="Pg8City" runat="server">
                            <asp:TextBox class="form-control" ID="Pg8City"  placeholder="Price" Width="320px" runat="server"></asp:TextBox>
                        </asp:Label>
                    </div>
                    <div class="form-group col-md-6">
                          <asp:Label ID="userPassword"  Text="Square Area" AssociatedControlID="Pg2Password" runat="server">
                                <asp:TextBox class="form-control" ID="Pg2Password" Width="320px" placeholder="Sq Unit" runat="server"></asp:TextBox>
                            </asp:Label>
                         
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                    <asp:Label ID="ptype" for="inputtype" class="propertyInfo" AssociatedControlID="inputtype" runat="server" Text="Property Type  ">
                    <asp:DropDownList ID="inputtype" Class="inputbox" Style="height: 35px; width:200px" runat="server">
                                <asp:ListItem Text="Select" ></asp:ListItem>
                                <asp:ListItem Text="House" ></asp:ListItem>
                                <asp:ListItem Text="Commercial"></asp:ListItem>
                        <asp:ListItem Text="Plot" ></asp:ListItem>
                            </asp:DropDownList>
                        </asp:Label>
                        </div>
                    <div class="form-group col-md-6">
                        <asp:LinkButton ID="SearchAgents" runat="server" OnClick="FAgent" Text="Find A Real Estate Agent"></asp:LinkButton>
                        </div>
         
                </div>
            
            
                  <div class="mt-5 text-center"><asp:Button ID="BSignUp"  class="btn btn-primary profile-button" Text="Save" OnClick="SaveProperty" runat="server" /></div>

            </div>
          
        </form>
        </div>

        <div ID="T" runat="server" style="display:none">
            <h3>Testing</h3>
        </div>
 
    </section>
</asp:Content>



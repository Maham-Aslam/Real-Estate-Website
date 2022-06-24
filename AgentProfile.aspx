<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPg2.Master" AutoEventWireup="true" CodeBehind="AgentProfile.aspx.cs" Inherits="SE_Project.AgentProfile" %>

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


            <div class="collapse navbar-collapse" id="navbarSupportedContent" style="margin-left: 220px">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item  ml-5">
                        <asp:LinkButton runat="server" OnClick="disInfo" class="nav-link" Text="About Me "></asp:LinkButton>
                    </li>
                    <li class="nav-item ml-5">
                        <asp:LinkButton runat="server" OnClick="MyPropertiesAP" class="nav-link" Text="My Properties "></asp:LinkButton>
                    </li>

                    <li class="nav-item ml-5">
                        <asp:LinkButton runat="server" OnClick="AddProperty" class="nav-link" Text="Add Property "></asp:LinkButton>
                    </li>
                    <li class="nav-item  ml-4">
                        <asp:LinkButton runat="server" OnClick="viewoffers" class="nav-link" Text="Offers"></asp:LinkButton>
                    </li>

                    <li class="nav-item dropdown ml-5">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Settings
                        </a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                            <asp:Button ID="Pg11Profile" class="dropdown-item" Text="Edit Profile" PostBackUrl="~/ProfileSettings.aspx" runat="server" />
                            <asp:Button ID="Pg11logOut" class="dropdown-item" OnClick="ClearCookie" Text="Logout" PostBackUrl="~/HomePage.aspx" runat="server" />
                        </div>

                    </li>

                </ul>
            </div>
            <div id="cross">
            </div>

        </nav>







        <div id="form20" class="container" style="background-color: rgb(211,211,211, 0.5); margin-top: 80px" runat="server">
            <div class="row">
                <div class="col-5">
                    </br>
                    <div>
                        <b>Personal Details</b>
                    </div>

                    <br>
                    <div id="image-container">
                        <asp:Image ID="image" ImageUrl="https://cms-assets.tutsplus.com/uploads/users/23/posts/28115/image/html-resume-website-template-design.jpg"
                            class="img-fluid" alt="Responsive image" runat="server" />
                    </div>
                    <br>
                    <div class="starborder text-center">
                        <b>Rating</b>
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                            <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                        </svg>
                        <asp:Label ID="Label1" CssClass="ml-2" runat="server" Text="Label"><h><b>5</b></h></asp:Label>
                    </div>
                </div>

                <div class="col-7">
                    </br>
                    <div>
                        <b style="margin-left: -90px;">About Me</b>
                    </div>

                    <br />
                    <div class="container" style="margin-left: -90px;">
                        <div class="row">
                            <div class="col-3">
                                <asp:Label ID="Pg7FirstName" Text="First Name" runat="server"></asp:Label>
                            </div>
                            <div class="col-4">
                                <asp:Label ID="Label2" AssociatedControlID="Pg7FirstName" runat="server"></asp:Label>
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class="col-3">
                                <asp:Label ID="Pg7LastName" Text="Last Name" runat="server"></asp:Label>
                            </div>
                            <div class="col-4">
                                <asp:Label ID="Label3" AssociatedControlID="Pg7LastName" runat="server"></asp:Label>
                            </div>
                        </div>
                        <br />


                        <div class="row">
                            <div class="col-3">
                                <asp:Label ID="EmailPage7" Text="Email" runat="server"></asp:Label>
                            </div>
                            <div class="col-4">
                                <asp:Label ID="Label4" AssociatedControlID="EmailPage7" runat="server"></asp:Label>
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class="col-3">
                                <asp:Label ID="numberPage7" Text="Phone Number" runat="server"></asp:Label>
                            </div>
                            <div class="col-4">
                                <asp:Label ID="Label5" AssociatedControlID="numberPage7" runat="server"></asp:Label>
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class="col-3">
                                <asp:Label ID="DOBpage7" Text="Date of Birth" runat="server"></asp:Label>
                            </div>
                            <div class="col-4">
                                <asp:Label ID="Label6" AssociatedControlID="DOBpage7" runat="server"></asp:Label>
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class="col-3">
                                <asp:Label ID="CityPage7" Text="City" runat="server"></asp:Label>
                            </div>
                            <div class="col-4">
                                <asp:Label ID="Label7" AssociatedControlID="CityPage7" runat="server"></asp:Label>
                            </div>
                        </div>


                    </div>

                </div>

            </div>
        </div>


        <div id="myprop" runat="server">
            <asp:GridView OnRowCommand="GridView3_RowCommand" ID="Subs_Table2" AutoGenerateColumns="false" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="False">

                <Columns>

                    <asp:BoundField DataField="propertyId" HeaderText="Property Id" />
                    <asp:BoundField DataField="city" HeaderText="City" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button runat="server" class="btn btn-success btn-sm" CommandName="view_button" ID="SanctionedButton" Text="View" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <%--<ItemTemplate>
                            <asp:Button runat="server" class="btn btn-success btn-sm" CommandName="view_button1" ID="SanctionedButton1" Text="Delete" />
                        </ItemTemplate>--%>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </div>

        <div id="offers" runat="server">
            <asp:GridView OnRowCommand="GridView4_RowCommand" ID="Subs_Table4" AutoGenerateColumns="false" runat="server" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="False">

                <Columns>

                    <asp:BoundField DataField="propId" HeaderText="Property Id" />
                    <asp:BoundField DataField="OuserId" HeaderText="User Id" />
                    <asp:BoundField DataField="Oprice" HeaderText="Price" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button runat="server" class="btn btn-success btn-sm" CommandName="view_button" ID="SanctionedButton" Text="Accept" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button runat="server" class="btn btn-success btn-sm" CommandName="view_button1" ID="SanctionedButton1" Text="Reject" />
                        </ItemTemplate>
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
         
                </div>
            
            
                  <div class="mt-5 text-center"><asp:Button ID="BSignUp"  class="btn btn-primary profile-button" Text="Save" OnClick="SaveProperty" runat="server" /></div>

            </div>
          
        </form>
        </div>



    </section>


</asp:Content>

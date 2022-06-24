<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPg2.Master" AutoEventWireup="true" CodeBehind="AgentInfo.aspx.cs" Inherits="SE_Project.AgentInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="height:700px">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">
            <h3>
                <b>GharLeJao.com</b>
                <small class="text-muted">Real estate website</small>
            </h3>
        </a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item  ml-5">
                    <asp:LinkButton runat="server" OnClick="show" class="nav-link" Text="Personal Info"></asp:LinkButton>
                </li>

                <li class="nav-item  ml-4">
                    <asp:LinkButton runat="server" OnClick="MyPropertiesUP" class="nav-link" Text="Property Info"></asp:LinkButton>
                </li>



            </ul>
        </div>
    </nav>


    <div id="form6" class="topp" runat="server">
        <div class="container">
            <div class="main-body">


                <div class="row gutters-sm">
                    <div class="col-md-4 mb-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-column align-items-center text-center">
                                    <asp:Image ID="Pg11Image" ImageUrl="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" Width="150" runat="server" />
                                    <div class="mt-3">
                                        <h4>
                                            <asp:Label ID="Label9" runat="server"></asp:Label></h4>

                                        <p class="text-muted font-size-sm">Agent Id=<asp:Label ID="Label10" runat="server"></asp:Label></p>
                                        <asp:Button ID="Pg11Subscribe" OnClick="SubscribeButton" class="btn btn-outline-primary" Text="Subscribe" runat="server" />
                                        <%--<asp:Button ID="Button1" class="btn btn-outline-primary ml-4 " Text="Rate" runat="server" />--%>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div runat="server" ID="rate_div" style="width: 270px">
                        <nav class="navbar navbar-expand-lg navbar navbar-dark" style="margin-left: 50px; margin-top: 20px; opacity: 0.9; background-color: black">
                            <div class="collapse navbar-collapse mt-3" id="navbarSupportedContent_ViewProfile">
                                <ul class="navbar-nav mr-auto">
                                    <li>
                                        <asp:LinkButton runat="server" for="ddlTest" OnClick="Rating" class="btn btn-md btn-outline-dark text-white mb-3 ml-2">
                                            Rate &nbsp
                                                 <svg class="mb-1 bi bi-star-fill" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="yellow" viewBox="0 0 16 16">
                                            <path
                                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                                                </svg>
                                        </asp:LinkButton>
                                        <asp:DropDownList runat="server" ID="ddlTest" class="btn btn-md btn-outline-dark text-white mb-3 ml-2">
                                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                        </asp:dropdownlist>
                                       
                                        
                                        <br />
                                      
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    
                    </div>

                    <div class="col-md-8">
                        <div class="card mb-3">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">
                                            <asp:Label ID="l" Text="First Name" runat="server"></asp:Label></h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <asp:Label ID="Label2" AssociatedControlID="l" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">
                                            <asp:Label ID="Label3" Text="Last Name" runat="server"></asp:Label></h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <asp:Label ID="Label4" AssociatedControlID="Label3" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">
                                            <asp:Label ID="Label5" Text="Email" runat="server"></asp:Label></h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <asp:Label ID="Label6" AssociatedControlID="Label5" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">
                                            <asp:Label ID="Label7" Text="Phone" runat="server"></asp:Label></h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <asp:Label ID="Label8" AssociatedControlID="Label7" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Address</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        Bay Area, San Francisco, CA
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>

                </div>
            </div>

        </div>
    </div>


    <div id="form7" style="width: 500px" runat="server">
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
                    <ItemTemplate>
                        <asp:Button runat="server" class="btn btn-success btn-sm" CommandName="view_button1" ID="SanctionedButton1" Text="Place Offer" />
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>

        </asp:GridView>
    </div>
    <div id="Sale_User" runat="server" style="height: 420px; position: relative; float: left; display: none" class="Property_User text-left">
        <asp:LinkButton ID="sale_button" Style="float: right" runat="server" OnClick="hideSale_User">
                    <i class="far fa-times-circle" style="color:black"></i></asp:LinkButton>
        <br />
        <h1 class="font-weight-light mb-sm-4" style="margin-top: 20px; font-variant: small-caps">Sell
        </h1>
        <div class="form-group">
            <asp:Label runat="server" for="Base_Price_1_User" style="font-variant:small-caps">Enter price</asp:Label>
            <asp:TextBox runat="server" style="margin-top:10px" type="number" class="form-control" ID="Base_Price_1_User" aria-describedby="Base_Price_1_User" placeholder="base price" />
        </div>
         
        <asp:LinkButton runat="server" style="margin-left:230px;margin-top:80px" type="submit" OnClick="PlaceOfferButton" class="btn btn-primary" Text="Submit"></asp:LinkButton>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    </section>
</asp:Content>



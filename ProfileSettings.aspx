<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPg1.Master" AutoEventWireup="true" CodeBehind="ProfileSettings.aspx.cs" Inherits="SE_Project.ProfileSettings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <section class="bg9">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<div class="pmove">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h4 class="text-right">Profile Settings</h4>
        </div>
    </div>
    <div class="container rounded  mt-5 mb-5"  runat="server">
        <form class="move" >
            <div class="form-attributes" style="background-color:rgb(211,211,211, 0.5); margin-top:80px" runat="server">
                <div class="form-row">

                    <div class="col">
                        <asp:Label ID="FirstName" Text="First Name" AssociatedControlID="FNamePg8" runat="server">
                            <asp:TextBox ID="FNamePg8" class="form-control" placeholder="First name" Width="320px" runat="server" />
                        </asp:Label>
                   </div>
                <div class="col">
                    <asp:Label ID="LastName" Text="Last Name" AssociatedControlID="LNamePg8" runat="server">
                        <asp:TextBox ID="LNamePg8" class="form-control" placeholder="Last name" Width="320px" runat="server" />
                    </asp:Label>
                </div>
                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                       <asp:Label ID="UserCity" Text="City" AssociatedControlID="Pg8City" runat="server">
                            <asp:TextBox class="form-control" ID="Pg8City"  placeholder="City" Width="320px" runat="server"></asp:TextBox>
                        </asp:Label>
                    </div>
                    <div class="form-group col-md-6">
                          <asp:Label ID="userPassword"  Class="font-weight-bold" Text="Password" AssociatedControlID="Pg2Password" runat="server">
                                <asp:TextBox class="form-control" ID="Pg2Password" TextMode="password" Width="320px" placeholder="Password" runat="server" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" ></asp:TextBox>
                            </asp:Label>
                         
                    </div>
                </div>
                <div class="form-group">
                     <asp:Label ID="DOB" Class="font-weight-bold" Text="Date of Birth" AssociatedControlID="Pg2DOB" runat="server">
                            <asp:TextBox class="form-control inputbox" TextMode="Date" ID="Pg2DOB" placeholder="DOB" runat="server"></asp:TextBox>
                        </asp:Label>
         
                </div>
                <div class="form-group">
                    <asp:Label ID="Pnumber" Class="font-weight-bold" Text="Phone Number" AssociatedControlID="Pg2Number" runat="server">
                            <asp:TextBox class="form-control inputbox" ID="Pg2Number" placeholder="03XXXXXXXXX" runat="server" pattern="[0-9]{11}" title="Must contain 11 digits"></asp:TextBox>
                        </asp:Label>
                        <asp:Label ID="Label6" runat="server"></asp:Label>
                </div>
            
                  <div class="mt-5 text-center"><asp:Button ID="BSignUp" OnClick="Update_Button_Click" class="btn btn-primary profile-button" Text="Save Profile"  runat="server" /></div>

            </div>
          
        </form>
        </div>
        </section>
</asp:Content>
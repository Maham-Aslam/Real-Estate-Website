<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPg1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="SE_Project.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <section  style="background-color:#dee2eb">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="container rounded mb-5" style="padding:4%"  runat="server">
        <div class="marginfromleft1" style="background-color:#dee2eb">
            <form class=" mb-5">
                <h1 style="margin-left:35%;">SignUp Form</h1>
                <div class="custom_width mt-5 mb-5 bg-white">
                    <br />
                    <div class="form-row ml-1">
                        <div class="form-group col-md-5 ">
                            <asp:Label Class="font-weight-bold" ID="FirstName" Text="First Name" AssociatedControlID="FNamePg2" runat="server">
                                <asp:TextBox ID="FNamePg2" class="form-control" placeholder="First name" Width="230px" runat="server" pattern="[A-Za-z].{0,}" title="Enter alaphabets only" required></asp:TextBox>
                            </asp:Label>
                        </div>
                        <div class="col-md-1">
                        </div>
                        <div class="form-group col-md-5">
                            <asp:Label ID="LastName" Class="font-weight-bold" Text="Last Name" AssociatedControlID="LNamePg2" runat="server">
                                <asp:TextBox ID="LNamePg2" class="form-control" placeholder="Last name" Width="230px" runat="server" pattern="[A-Za-z].{0,}" title="Enter alaphabets only"></asp:TextBox>
                            </asp:Label>
                        </div>
                    </div>

                    <div class="form-row ml-1">
                        <div class="form-group col-md-5">
                            <asp:Label ID="userEmail" Class="font-weight-bold" Text="Email" AssociatedControlID="Pg2email" runat="server">
                                <asp:TextBox class="form-control" ID="Pg2email" TextMode="Email" Width="230px" placeholder="Email" runat="server"></asp:TextBox>
                            </asp:Label>
                            <asp:Label ID="Label4" runat="server"></asp:Label>

                        </div>

                        <div class="col-md-1">
                        </div>
                        <div class="form-group col-md-5">
                            <asp:Label ID="userPassword"  Class="font-weight-bold" Text="Password" AssociatedControlID="Pg2Password" runat="server">
                                <asp:TextBox class="form-control" ID="Pg2Password" TextMode="password" Width="230px" placeholder="Password" runat="server" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required></asp:TextBox>
                            </asp:Label>
                        </div>
                    </div>


                    <div class="form-row ml-1">
                        <div class="form-group col-md-5">
                        <asp:Label ID="Label2" Class="font-weight-bold" Text="Confirm Password" AssociatedControlID="ConfirmPg2Password1" runat="server">
                            <asp:TextBox class="form-control" ID="ConfirmPg2Password1" TextMode="password" Width="230px" placeholder="Confirm Password" runat="server" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required></asp:TextBox>
                        </asp:Label>
                        <asp:Label ID="Label5" runat="server"></asp:Label>  
                            </div>
                        <div class="form-group col-md-5">
                            
            <a id="v_1"  style="margin-left:230px"  onclick="javascript:visible()"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor"  class="bi bi-eye mt-5" viewBox="0 0 16 16">
  <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
  <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
</svg></a>
               <a id="v_2"  style="margin-left:230px;display:none" onclick="javascript:Notvisible()" ><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor"  class="bi bi-eye-slash mt-5" viewBox="0 0 16 16">
  <path d="M13.359 11.238C15.06 9.72 16 8 16 8s-3-5.5-8-5.5a7.028 7.028 0 0 0-2.79.588l.77.771A5.944 5.944 0 0 1 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.134 13.134 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755-.165.165-.337.328-.517.486l.708.709z"/>
  <path d="M11.297 9.176a3.5 3.5 0 0 0-4.474-4.474l.823.823a2.5 2.5 0 0 1 2.829 2.829l.822.822zm-2.943 1.299.822.822a3.5 3.5 0 0 1-4.474-4.474l.823.823a2.5 2.5 0 0 0 2.829 2.829z"/>
  <path d="M3.35 5.47c-.18.16-.353.322-.518.487A13.134 13.134 0 0 0 1.172 8l.195.288c.335.48.83 1.12 1.465 1.755C4.121 11.332 5.881 12.5 8 12.5c.716 0 1.39-.133 2.02-.36l.77.772A7.029 7.029 0 0 1 8 13.5C3 13.5 0 8 0 8s.939-1.721 2.641-3.238l.708.709zm10.296 8.884-12-12 .708-.708 12 12-.708.708z"/>
</svg></a>
                            </div>
          
                    </div>
   

                    <div class="form-group ml-2">
                        <asp:Label ID="DOB" Class="font-weight-bold" Text="Date of Birth" AssociatedControlID="Pg2DOB" runat="server">
                            <asp:TextBox class="form-control inputbox" TextMode="Date" ID="Pg2DOB" placeholder="DOB" runat="server"></asp:TextBox>
                        </asp:Label>
                    </div>



                    <div class="form-group  ml-2">
                        <asp:Label ID="Pnumber" Class="font-weight-bold" Text="Phone Number" AssociatedControlID="Pg2Number" runat="server">
                            <asp:TextBox class="form-control inputbox" ID="Pg2Number" placeholder="03XXXXXXXXX" runat="server" pattern="[0-9]{11}" title="Must contain 11 digits" required></asp:TextBox>
                        </asp:Label>
                        <asp:Label ID="Label6" runat="server"></asp:Label>
                    </div>


                    <div class="form-group  ml-2">
                        <asp:Label ID="Label1" Class="font-weight-bold" Text="City" AssociatedControlID="Pg2City" runat="server"> </asp:Label>


                        <div>
                            <asp:DropDownList ID="Pg2City" Class="inputbox" Style="height: 35px" runat="server">
                                <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Abbottabad" Value="Abbottabad"></asp:ListItem>
                                <asp:ListItem Text="Arif Wala" Value="Arif Wala"></asp:ListItem>
                                <asp:ListItem Text="Attock" Value="Attock"></asp:ListItem>
                                <asp:ListItem Text="Bahawalnagar" Value="Bahawalnagar"></asp:ListItem>
                                <asp:ListItem Text="Bhakkar" Value="Bhakkar"></asp:ListItem>
                                <asp:ListItem Text="Chiniot" Value="Chiniot"></asp:ListItem>
                                <asp:ListItem Text="Daharki" Value="Daharki"></asp:ListItem>
                                <asp:ListItem Text="Daska" Value="Daska"></asp:ListItem>
                                <asp:ListItem Text="Faisalabad" Value="Faisalabad"></asp:ListItem>
                                <asp:ListItem Text="Ferozwala" Value="Ferozwala"></asp:ListItem>
                                <asp:ListItem Text="Gojra" Value="Gojra"></asp:ListItem>
                                <asp:ListItem Text="Gujrat" Value="Gujrat"></asp:ListItem>
                                <asp:ListItem Text="Haroonabad" Value="Haroonabad"></asp:ListItem>
                                <asp:ListItem Text="Jacobabad" Value="Jacobabad"></asp:ListItem>
                                <asp:ListItem Text="Jhelum" Value="Jhelum"></asp:ListItem>
                                <asp:ListItem Text="Karachi" Value="Karachi"></asp:ListItem>
                                <asp:ListItem Text="Khairpur" Value="Khairpur"></asp:ListItem>
                                <asp:ListItem Text="Lahore" Value="Lahore"></asp:ListItem>
                                <asp:ListItem Text="Larkana" Value="Larkana"></asp:ListItem>
                                <asp:ListItem Text="Mardan" Value="Mardan"></asp:ListItem>
                                <asp:ListItem Text="Mirpur" Value="Mirpur"></asp:ListItem>
                                <asp:ListItem Text="Multan" Value="Multan"></asp:ListItem>
                                <asp:ListItem Text="Muzaffarabad" Value="Muzaffarabad"></asp:ListItem>
                                <asp:ListItem Text="Nowshera" Value="Nowshera"></asp:ListItem>
                                <asp:ListItem Text="Okara" Value="Okara"></asp:ListItem>
                                <asp:ListItem Text="Shikarpur" Value="Shikarpur"></asp:ListItem>
                                <asp:ListItem Text="Pakpattan" Value="Pakpattan"></asp:ListItem>
                                <asp:ListItem Text="Taxila" Value="Taxila"></asp:ListItem>
                                <asp:ListItem Text="Umerkot" Value="Umerkot"></asp:ListItem>
                                <asp:ListItem Text="Vehari" Value="Vehari"></asp:ListItem>
                                <asp:ListItem Text="Wazirabad" Value="Wazirabad"></asp:ListItem>
                            </asp:DropDownList>

                        </div>
                    </div>
                    <div class="form-group  ml-2">
                        <asp:Label ID="Label3" Class="font-weight-bold" Text="Account Type" AssociatedControlID="DropDownList1" runat="server"> </asp:Label>


                        <div>
                            <asp:DropDownList ID="DropDownList1" Class="inputbox" Style="height: 35px" runat="server">
                                <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="User" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Real Estate Agent" Value="1"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidator1"
                                runat="server"
                                ControlToValidate="DropDownList1"
                                InitialValue="-1"
                                ErrorMessage="* Please select an item."
                                ForeColor="Red"
                                Font-Names="Impact">
                            </asp:RequiredFieldValidator>
                        </div>
                    </div>


                    <div class="marginfromright">
                        <div>
                            <div class="mt-1 text-center">
                                <asp:Button ID="BSignUp" class="btn btn-dark ml-5" Text="Register" runat="server" OnClick="SignUp_Button_Click" />
                            </div>
                            <br />
                        </div>
                    </div>
                 
                </div>
                   
            </form>
        </div>
    </div>
        </section>
</asp:Content>



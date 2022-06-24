<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPg1.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="SE_Project.ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <section style="background-color: #dee2eb">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="custom_width1 bg-white" style="margin-bottom:150px;">
        <h3 style="text-align:center;">Recover Password</h3>
        <div id="abc">
            <%-- Email label and Button --%>
            <div class="form-group ml-2" runat="server">
                <asp:Label ID="Label4" Class="font-weight-bold" Text="Email" AssociatedControlID="Pgfemail" runat="server">

                    <asp:TextBox class="form-control " ID="Pgfemail" TextMode="Email" placeholder="Enter Email" runat="server"></asp:TextBox>
                </asp:Label>



                <asp:Label ID="Label3" Class="font-weight-bold" Text="Password" AssociatedControlID="fPassword1" runat="server">
                    <asp:TextBox class="form-control" ID="fPassword1" TextMode="password" placeholder="Enter Password" runat="server" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"></asp:TextBox>
                </asp:Label>
                <asp:Label ID="Label6" runat="server">

                </asp:Label>

            </div>


            <%-- Password label and Button --%>

            <div class="form-group ml-2">
                <asp:Label ID="Label1" Class="font-weight-bold" Text="Confirm Password" AssociatedControlID="ConfirmPg2Password1" runat="server">
                    <asp:TextBox class="form-control" ID="ConfirmPg2Password1" TextMode="password" Width="200px" placeholder="Confirm Password" runat="server" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"></asp:TextBox>
                </asp:Label>
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </div>



            <div>
                <asp:Button ID="BLogin" class="btn btn-primary" Style="margin-left: 180px" runat="server" Text="Confirm" OnClick="Forgotpass" />

                <asp:Label ID="Label2" runat="server">

                </asp:Label>
            </div>
        </div>
        <br />
    </div>



</asp:Content>

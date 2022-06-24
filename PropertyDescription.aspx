<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPg1.Master" AutoEventWireup="true" CodeBehind="PropertyDescription.aspx.cs" Inherits="SE_Project.PropertyDescription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Pdes" class="move7">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <section class="content-item grey" id="gallery-item">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8">
                        <asp:Image ID="Pg9Image"  ImageUrl="https://images.unsplash.com/photo-1543892607-04657ef3a279?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YnVpbGRpbmdzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" style="width:80%" class="img-responsive" alt=""  runat="server" />
                    </div>
                    
                    <div class="col-sm-4">
                        <div class="top7">
                            <h3>
                                <small> <asp:Label ID="l" Text="Id"  runat="server"></asp:Label></small>
                                <small class="text-muted"> <asp:Label ID="Label1"  AssociatedControlID="l" runat="server"></asp:Label></small>
                            </h3>
                            <h3>
                                <small> <asp:Label ID="Label2" Text="City"  runat="server"></asp:Label></small>
                                <small class="text-muted"> <asp:Label ID="Label3"  AssociatedControlID="Label2" runat="server"></asp:Label></small>
                            </h3>
                            <h3>
                                <small> <asp:Label ID="Label4" Text="Type"  runat="server"></asp:Label></small>
                                <small class="text-muted"> <asp:Label ID="Label5"  AssociatedControlID="Label4" runat="server"></asp:Label></small>
                            </h3>
                            <h3>
                               <small> <asp:Label ID="Label6" Text="Location"  runat="server"></asp:Label></small>
                                <small class="text-muted"> <asp:Label ID="Label7"  AssociatedControlID="Label6" runat="server"></asp:Label></small>
                            </h3>
                             <h3>
                               <small> <asp:Label ID="Label8" Text="sqArea"  runat="server"></asp:Label></small>
                                <small class="text-muted"> <asp:Label ID="Label9"  AssociatedControlID="Label6" runat="server"></asp:Label></small>
                            </h3>
                             <h3>
                               <small> <asp:Label ID="Label10" Text="Price"  runat="server"></asp:Label></small>
                                <small class="text-muted"> <asp:Label ID="Label11"  AssociatedControlID="Label6" runat="server"></asp:Label></small>
                            </h3>
                        </div>
                        
                         <asp:LinkButton runat="server" ONCLICK="Jump" class="nav-link"  Text="Contact Us"></asp:LinkButton>
                    
                        
                       <asp:LinkButton runat="server" ONCLICK="ShortlistButton" class="nav-link"  Text="Shortlist"></asp:LinkButton>
                        
                    </div>
                   
                </div>
            </div>
        </section>
    </div>

</asp:Content>

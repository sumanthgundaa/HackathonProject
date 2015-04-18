<%@ Page Title="" Language="C#" MasterPageFile="~/HackathonMaster.master" AutoEventWireup="true" CodeFile="AddElements.aspx.cs" Inherits="AddElements" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
     <link href="css/bootstrap.min.css" rel="stylesheet"/>
     <link href="css/navbar.css" rel="stylesheet"/>
     <script>
         $(function () {
             var icons = {
                 header: "ui-icon-circle-arrow-e",
                 activeHeader: "ui-icon-circle-arrow-s"
             };
             $("#accordion").accordion({
                 icons: icons
             });
             $("#toggle").button().click(function () {
                 if ($("#accordion").accordion("option", "icons")) {
                     $("#accordion").accordion("option", "icons", null);
                 } else {
                     $("#accordion").accordion("option", "icons", icons);
                 }
             });
         });
         </script>
  <div id="accordion">
  <h3>Add Elements</h3>
  <div>
      <div class ="form-group" style="margin-left:370px;">
           <br />
           <br />
          <asp:Label ID="lblHeading" runat="server" Text="Add New Element" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#333300"></asp:Label>
           <br />
           <br />
           <br />
   </div>
      <div class ="form-group" style="margin-left:200px;">
    <asp:Label ID="lblElementName" style="float:left;margin-right:25px;" runat="server" Text="Element Name" Font-Bold="True" Font-Italic="True"></asp:Label>
      <asp:TextBox ID="txtElementName" name="name" class="form-control" placeholder="Element Name" style="width:400px;margin-left:220px;" runat="server" required></asp:TextBox>
     </div>

       <div class ="form-group" style="margin-left:200px;">
    <asp:Label ID="lblElementDisplayName" style="float:left;margin-right:25px;" runat="server" Text="Element Display Name" Font-Bold="True" Font-Italic="True"></asp:Label>
      <asp:TextBox ID="txtElementDisplayName" name="name" class="form-control" placeholder="Element Display Name" style="width:400px;margin-left:220px;" runat="server" required></asp:TextBox>
     </div>

       <div class ="form-group" style="margin-left:200px;">
    <asp:Label ID="lblTool" style="float:left;margin-right:125px;" runat="server" Text="Select Tool" Font-Bold="True" Font-Italic="True"></asp:Label>
     <asp:DropDownList ID="ddlTool"  CssClass="btn btn-default dropdown-toggle" style="width:400px;" runat="server" DataTextField="Tool" DataValueField="Tool" AppendDataBoundItems="True" DataSourceID="SqlDsTool">
         <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
           <asp:SqlDataSource ID="SqlDsTool" runat="server" ConnectionString="<%$ ConnectionStrings:HackathonDataBase %>" SelectCommand="SELECT DISTINCT(Tool) FROM tbl_Elements"></asp:SqlDataSource>
       </div>

       <asp:Button ID="btnAdd" CssClass="btn btn-lg btn-primary btn-block" style="width:400px;margin-left:300px;" runat="server" Text="Add Element" OnClick="btnSubmit_Click"/>

      <br />
          <div class="alert alert-danger alert-dismissible" id="diverror1" runat="server" role="alert">
 <div style="margin-left:230px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Error! Element Already Exists in that Particular Tool</strong></div>
</div>
                <div class="alert alert-danger alert-dismissible" id="diverror2" runat="server" role="alert">
                    
 <div style="margin-left:280px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Error! Element Cannot Be Added</strong></div>
</div>

      <div class="alert alert-success alert-dismissible" id="divsuccess" runat="server" role="alert">
                    
 <div style="margin-left:280px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Success! Element Added Successfully</strong></div>
</div>
      </br></br></br></br></br></br>
  </div>
  
  </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/HackathonMaster.master" AutoEventWireup="true" CodeFile="AddSchedule.aspx.cs" Inherits="AddSchedule" %>

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
  <h3>Add Schedule</h3>
  <div>
      <div class ="form-group" style="margin-left:370px;">
           <br />
           <br />
          <asp:Label ID="lblHeading" runat="server" Text="Add New Element" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#333300"></asp:Label>
           <br />
           <br />
           <br />
   </div>
      <div class ="form-group" style="margin-left:170px;">
    <asp:Label ID="lblScheduleName" style="float:left;margin-right:25px;" runat="server" Text="Schedule Name" Font-Bold="True" Font-Italic="True"></asp:Label>
      <asp:TextBox ID="txtScheduleName" name="name" class="form-control" placeholder="Schedule Name" style="width:400px;margin-left:220px;" runat="server" required></asp:TextBox>
      </div>

       <div class ="form-group" style="margin-left:170px;">
    <asp:Label ID="lblStartHour" style="float:left;margin-right:25px;" runat="server" Text="Start Hour" Font-Bold="True" Font-Italic="True"></asp:Label>
      <asp:TextBox ID="txtStartHour" name="name" class="form-control" placeholder="Start Hour" style="float:left;width:400px;margin-left:100px;" runat="server" required></asp:TextBox>
      <asp:RangeValidator ID="rvalStartHour" runat="server" style="width:400px;margin-left:20px;" ErrorMessage="Enter Value Between 1 and 24" ControlToValidate="txtStartHour" Font-Bold="True" Font-Italic="True" ForeColor="Red" MaximumValue="24" MinimumValue="1" Type="Integer"></asp:RangeValidator>
            </div>
      </br>
        <div class ="form-group" style="margin-left:170px;">
    <asp:Label ID="lblEndHour" style="float:left;margin-right:25px;" runat="server" Text="End Hour" Font-Bold="True" Font-Italic="True"></asp:Label>
      <asp:TextBox ID="txtEndHour" name="name" class="form-control" placeholder="End Hour" style="float:left;width:400px;margin-left:110px;" runat="server" required></asp:TextBox>
       <asp:RangeValidator ID="rvalEndHour" runat="server" style="width:400px;margin-left:20px;" ErrorMessage="Enter Value Between 1 and 24" ControlToValidate="txtEndHour" Font-Bold="True" Font-Italic="True" ForeColor="Red" MaximumValue="24" MinimumValue="1" Type="Integer"></asp:RangeValidator>

        </div>
      </br>
       <asp:Button ID="btnAdd" CssClass="btn btn-lg btn-primary btn-block" style="width:400px;margin-left:300px;" runat="server" Text="Add Schedule" OnClick="btnSubmit_Click"/>

      <br />
          <div class="alert alert-danger alert-dismissible" id="diverror1" runat="server" role="alert">
 <div style="margin-left:230px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Error! Schedule Already Exists in that Particular Time</strong></div>
</div>
                <div class="alert alert-danger alert-dismissible" id="diverror2" runat="server" role="alert">
                    
 <div style="margin-left:280px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Error! Schedule Cannot Be Added</strong></div>
</div>

      <div class="alert alert-success alert-dismissible" id="divsuccess" runat="server" role="alert">
                    
 <div style="margin-left:280px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Success! Schedule Added Successfully</strong></div>
</div>
      </br></br></br>
  </div>
  
  </div>
</asp:Content>


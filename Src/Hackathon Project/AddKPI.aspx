<%@ Page Title="" Language="C#" MasterPageFile="~/HackathonMaster.master" AutoEventWireup="true" CodeFile="AddKPI.aspx.cs" Inherits="AddKPI" %>

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
          <asp:Label ID="lblHeading" runat="server" Text="Add New KPI" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#333300"></asp:Label>
           <br />
           <br />
           <br />
   </div>
      <div class ="form-group" style="margin-left:150px;">
    <asp:Label ID="lblKpid" style="float:left;margin-right:25px;" runat="server" Text="Enter KpId" Font-Bold="True" Font-Italic="True"></asp:Label>
      <asp:TextBox ID="txtKpid" name="name" class="form-control" placeholder="KPID" style="width:400px;margin-left:220px;" runat="server" required></asp:TextBox>
      </div>

       <div class ="form-group" style="margin-left:90px;">
    <asp:Label ID="lblDarkGreenValue" style="float:left;margin-right:25px;" runat="server" Text="Dark Green Value" Font-Bold="True" Font-Italic="True"></asp:Label>
      <asp:TextBox ID="txtDarkGreenValue" name="name" class="form-control" placeholder="Dark Green Value" style="float:left;width:400px;margin-left:100px;" runat="server" required></asp:TextBox>
      <asp:RangeValidator ID="rvalDarkGreenValue" runat="server" style="width:400px;margin-left:20px;" ErrorMessage="Enter Value Between 0 and 100" ControlToValidate="txtDarkGreenValue" Font-Bold="True" Font-Italic="True" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            </div>
 </br>
        <div class ="form-group" style="margin-left:130px;">
    <asp:Label ID="lblGreenValue" style="float:left;margin-right:25px;" runat="server" Text="Green Value" Font-Bold="True" Font-Italic="True"></asp:Label>
      <asp:TextBox ID="txtGreenValue" name="name" class="form-control" placeholder="Green Value" style="float:left;width:400px;margin-left:110px;" runat="server" required></asp:TextBox>
       <asp:RangeValidator ID="rvalGreenValue" runat="server" style="width:400px;margin-left:20px;" ErrorMessage="Enter Value Between 0 and 100" ControlToValidate="txtGreenValue" Font-Bold="True" Font-Italic="True" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>

        </div>
      </br>
        <div class ="form-group" style="margin-left:120px;">
    <asp:Label ID="lblYellowValue" style="float:left;margin-right:25px;" runat="server" Text="Yellow Value" Font-Bold="True" Font-Italic="True"></asp:Label>
      <asp:TextBox ID="txtYellowValue" name="name" class="form-control" placeholder="Yellow Value" style="float:left;width:400px;margin-left:110px;" runat="server" required></asp:TextBox>
       <asp:RangeValidator ID="rvalYellowValue" runat="server" style="width:400px;margin-left:20px;" ErrorMessage="Enter Value Between 0 and 100" ControlToValidate="txtYellowValue" Font-Bold="True" Font-Italic="True" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>

        </div>
     </br>

      <div class ="form-group" style="margin-left:120px;">
    <asp:Label ID="lblOrangeValue" style="float:left;margin-right:25px;" runat="server" Text="Orange Value" Font-Bold="True" Font-Italic="True"></asp:Label>
      <asp:TextBox ID="txtOrangeValue" name="name" class="form-control" placeholder="Orange Value" style="float:left;width:400px;margin-left:110px;" runat="server" required></asp:TextBox>
       <asp:RangeValidator ID="rvalOrangeValue" runat="server" style="width:400px;margin-left:20px;" ErrorMessage="Enter Value Between 0 and 100" ControlToValidate="txtOrangeValue" Font-Bold="True" Font-Italic="True" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>

        </div>
     </br>
    
      <div class ="form-group" style="margin-left:150px;">
    <asp:Label ID="lblRedValue" style="float:left;margin-right:25px;" runat="server" Text="Red Value" Font-Bold="True" Font-Italic="True"></asp:Label>
      <asp:TextBox ID="txtRedValue" name="name" class="form-control" placeholder="Red Value" style="float:left;width:400px;margin-left:110px;" runat="server" required></asp:TextBox>
       <asp:RangeValidator ID="rvalRedValue" runat="server" style="width:400px;margin-left:20px;" ErrorMessage="Enter Value Between 0 and 100" ControlToValidate="txtRedValue" Font-Bold="True" Font-Italic="True" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>

        </div>
      </br>

      <div class ="form-group" style="margin-left:150px;">
    <asp:Label ID="lblKpiName" style="float:left;margin-right:25px;" runat="server" Text="KPI Name" Font-Bold="True" Font-Italic="True"></asp:Label>
      <asp:TextBox ID="txtKpiName" name="name" class="form-control" placeholder="KPI Name" style="width:400px;margin-left:220px;" runat="server" required></asp:TextBox>
      </div>

      <div class ="form-group" style="margin-left:150px;">
    <asp:Label ID="lblOrder" style="float:left;margin-right:115px;" runat="server" Text="Select Order" Font-Bold="True" Font-Italic="True"></asp:Label>
     <asp:DropDownList ID="ddlOrder"  CssClass="btn btn-default dropdown-toggle" style="width:400px;" runat="server" DataTextField="Tool" DataValueField="Tool" AppendDataBoundItems="True">
         <asp:ListItem>--SELECT--</asp:ListItem>
                <asp:ListItem Value="ASC">Ascending</asp:ListItem>
         <asp:ListItem Value="DSC">Descending</asp:ListItem>
                </asp:DropDownList>
       </div>

       <div class ="form-group" style="margin-left:150px;">
    <asp:Label ID="lblTool" style="float:left;margin-right:125px;" runat="server" Text="Select Tool" Font-Bold="True" Font-Italic="True"></asp:Label>
     <asp:DropDownList ID="ddlTool"  CssClass="btn btn-default dropdown-toggle" style="width:400px;" runat="server" DataTextField="Tool" DataValueField="Tool" AppendDataBoundItems="True" DataSourceID="SqlDsTool">
         <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
           <asp:SqlDataSource ID="SqlDsTool" runat="server" ConnectionString="<%$ ConnectionStrings:HackathonDataBase %>" SelectCommand="SELECT DISTINCT(Tool) FROM tbl_Elements"></asp:SqlDataSource>
       </div>

       <asp:Button ID="btnAdd" CssClass="btn btn-lg btn-primary btn-block" style="width:400px;margin-left:300px;" runat="server" Text="Add Schedule" OnClick="btnSubmit_Click"/>

      <br />
          <div class="alert alert-danger alert-dismissible" id="diverror1" runat="server" role="alert">
 <div style="margin-left:230px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Error! KPI Already Exists</strong></div>
</div>
                <div class="alert alert-danger alert-dismissible" id="diverror2" runat="server" role="alert">
                    
 <div style="margin-left:280px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Error! KPI Cannot Be Added</strong></div>
</div>

      <div class="alert alert-success alert-dismissible" id="divsuccess" runat="server" role="alert">
                    
 <div style="margin-left:280px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Success! KPI Added Successfully</strong></div>
</div>
      </br></br></br>
  </div>
  
  </div>
</asp:Content>


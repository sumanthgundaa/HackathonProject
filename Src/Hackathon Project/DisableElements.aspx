<%@ Page Title="" Language="C#" MasterPageFile="~/HackathonMaster.master" AutoEventWireup="true" CodeFile="DisableElements.aspx.cs" Inherits="DisableElements" %>

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
  <h3>Edit/Disable Elements</h3>
  <div>
       <div class ="form-group" style="margin-left:370px;">

           <br />
          <asp:Label ID="lblHeading" runat="server" Text="List Of Elements" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#333300"></asp:Label>
           <br />
   </div>
      <asp:GridView ID="gvElementsList" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ElementId" DataSourceID="SqldsElementList" ForeColor="Black" GridLines="Horizontal" AllowPaging="True" PageSize="5" OnRowCommand="gvElementsList_RowCommand">
          <Columns>
              <asp:BoundField DataField="ElementId" HeaderText="ElementId" InsertVisible="False" ReadOnly="True" SortExpression="ElementId">
                   <HeaderStyle Font-Italic="True" Font-Size="Small" Width="200px" />
                <ItemStyle Font-Italic="True" Font-Size="Small" Width="200px"/>
                </asp:BoundField>
              <asp:BoundField DataField="ElementName" HeaderText="ElementName" SortExpression="ElementName">
                   <HeaderStyle Font-Italic="True" Font-Size="Small" Width="500px" />
                <ItemStyle Font-Italic="True" Font-Size="Small" Width="200px"/>
                </asp:BoundField>
              <asp:BoundField DataField="ElementDisplayName" HeaderText="ElementDisplayName" SortExpression="ElementDisplayName">
                   <HeaderStyle Font-Italic="True" Font-Size="Small" Width="300px" HorizontalAlign="Center" />
                <ItemStyle Font-Italic="True" Font-Size="Small" Width="200px" HorizontalAlign="Center"/>
                </asp:BoundField>
              <asp:BoundField DataField="Tool" HeaderText="Tool" SortExpression="Tool">
                   <HeaderStyle Font-Italic="True" Font-Size="Small" Width="200px" />
                <ItemStyle Font-Italic="True" Font-Size="Small" Width="200px"/>
                </asp:BoundField>
              <asp:BoundField DataField="TimeZone" HeaderText="TimeZone" SortExpression="TimeZone">
                   <HeaderStyle Font-Italic="True" Font-Size="Small" Width="200px" />
                <ItemStyle Font-Italic="True" Font-Size="Small" Width="200px" HorizontalAlign="Center"/>
                </asp:BoundField>
              <asp:BoundField DataField="Active" HeaderText="Active" SortExpression="Active">
                   <HeaderStyle Font-Italic="True" Font-Size="Small" Width="200px" />
                <ItemStyle Font-Italic="True" Font-Size="Small" Width="200px" HorizontalAlign="Center"/>
                </asp:BoundField>
              <asp:BoundField DataField="LastUpdatedGMT" HeaderText="LastUpdatedGMT" SortExpression="LastUpdatedGMT">
                   <HeaderStyle Font-Italic="True" Font-Size="Small" Width="200px" />
                <ItemStyle Font-Italic="True" Font-Size="Small" Width="100px"/>
                </asp:BoundField>
              <asp:BoundField DataField="UpdatedBy" HeaderText="UpdatedBy" SortExpression="UpdatedBy">
                   <HeaderStyle Font-Italic="True" Font-Size="Small" Width="200px" />
                <ItemStyle Font-Italic="True" Font-Size="Small" Width="200px"/>
                </asp:BoundField>
              <asp:ButtonField ButtonType="Button" CommandName="Change" Text="Update">
            <ControlStyle CssClass="btn btn-lg btn-info btn-block" />
            <ItemStyle Font-Italic="True" />
            </asp:ButtonField>
              <asp:ButtonField ButtonType="Button" CommandName="Disable" Text="Disable">
            <ControlStyle CssClass="btn btn-lg btn-danger btn-block" />
            <ItemStyle Font-Italic="True" />
            </asp:ButtonField>
              
          </Columns>
          <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
          <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
          <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F7F7F7" />
          <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
          <SortedDescendingCellStyle BackColor="#E5E5E5" />
          <SortedDescendingHeaderStyle BackColor="#242121" />
      </asp:GridView>
      <asp:SqlDataSource ID="SqldsElementList" runat="server" ConnectionString="<%$ ConnectionStrings:HackathonDataBase %>" SelectCommand="SELECT * FROM [tbl_Elements]"></asp:SqlDataSource>

       <div class="alert alert-danger alert-dismissible" id="divError21" runat="server" role="alert">
 <div style="margin-left:380px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Error! Element Already Disabled</strong></div>
</div>
                <div class="alert alert-danger alert-dismissible" id="divError22" runat="server" role="alert">
                    
 <div style="margin-left:380px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Error! Element Cannot Be Disabled</strong></div>
</div>

      <div class="alert alert-success alert-dismissible" id="divSuccess1" runat="server" role="alert">
                    
 <div style="margin-left:380px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Success! Element Disabled Successfully</strong></div>
</div>

              <div class ="form-group" style="margin-left:370px;">
           <br />
           <br />
          <asp:Label ID="lblHeading2" runat="server" Text="Update/Edit Element" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#333300" Visible="False"></asp:Label>
           <br />
   </div>
      <div class ="form-group" style="margin-left:200px;">
    <asp:Label ID="lblElementId" style="float:left;margin-right:25px;" runat="server" Text="Element Id" Font-Bold="True" Font-Italic="True" Visible="False"></asp:Label>
     <fieldset disabled>
          <input type="text" id="disabledTextInput" class="form-control" style="width:400px;margin-left:100px;" placeholder="Element Id" runat="server"/></fieldset>
           </div>
      <div class ="form-group" style="margin-left:200px;">
    <asp:Label ID="lblElementName2" style="float:left;margin-right:25px;" runat="server" Text="Element Name" Font-Bold="True" Font-Italic="True" Visible="False"></asp:Label>
      <asp:TextBox ID="txtElementName2" name="name" class="form-control" placeholder="Element Name" style="width:400px;margin-left:220px;" runat="server" required Visible="False"></asp:TextBox>
     </div>

       <div class ="form-group" style="margin-left:200px;">
    <asp:Label ID="lblElementDisplayName2" style="float:left;margin-right:25px;" runat="server" Text="Element Display Name" Font-Bold="True" Font-Italic="True" Visible="False"></asp:Label>
      <asp:TextBox ID="txtElementDisplayName2" name="name" class="form-control" placeholder="Element Display Name" style="width:400px;margin-left:220px;" runat="server" required Visible="False"></asp:TextBox>
     </div>
     <asp:Button ID="btnUpdate" CssClass="btn btn-lg btn-primary btn-block" style="width:400px;margin-left:300px;" runat="server" Text="Update Element" OnClick="btnSubmit_Click" Visible="False"/>

      </br>
      </br>
       <div class="alert alert-danger alert-dismissible" id="div1" runat="server" role="alert">
 <div style="margin-left:380px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Error! Element Already Exists</strong></div>
</div>
                <div class="alert alert-danger alert-dismissible" id="div2" runat="server" role="alert">
                    
 <div style="margin-left:380px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Error! Element Cannot Be Updated</strong></div>
</div>

      <div class="alert alert-success alert-dismissible" id="div3" runat="server" role="alert">
                    
 <div style="margin-left:380px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Success! Element Updated Successfully</strong></div>
</div>
  </div>
  </div>
</asp:Content>


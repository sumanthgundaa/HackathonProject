<%@ Page Title="" Language="C#" MasterPageFile="~/HackathonMaster.master" AutoEventWireup="true" CodeFile="DisableSchedule.aspx.cs" Inherits="DisableSchedule" %>

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
          <asp:Label ID="lblHeading" runat="server" Text="List Of Schedules" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#333300"></asp:Label>
           <br />
   </div>
      <asp:GridView ID="gvScheduleList" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ScheduleId" DataSourceID="SqldsScheduleList" ForeColor="Black" GridLines="Horizontal" AllowPaging="True" PageSize="5" OnRowCommand="gvScheduleList_RowCommand" EmptyDataText="No Records Found">
          <Columns>
              <asp:BoundField DataField="ScheduleId" HeaderText="ScheduleId" InsertVisible="False" ReadOnly="True" SortExpression="ScheduleId">
                 <HeaderStyle Font-Italic="True" Font-Size="Small" Width="200px" />
                <ItemStyle Font-Italic="True" Font-Size="Small" Width="200px"/>
                </asp:BoundField>
              <asp:BoundField DataField="ScheduleName" HeaderText="ScheduleName" SortExpression="ScheduleName">
                 <HeaderStyle Font-Italic="True" Font-Size="Small" Width="200px" />
                <ItemStyle Font-Italic="True" Font-Size="Small" Width="200px"/>
                </asp:BoundField>
              <asp:BoundField DataField="StartHour" HeaderText="StartHour" SortExpression="StartHour">
                 <HeaderStyle Font-Italic="True" Font-Size="Small" Width="200px" />
                <ItemStyle Font-Italic="True" Font-Size="Small" Width="200px"/>
                </asp:BoundField>
              <asp:BoundField DataField="EndHour" HeaderText="EndHour" SortExpression="EndHour">
                 <HeaderStyle Font-Italic="True" Font-Size="Small" Width="200px" />
                <ItemStyle Font-Italic="True" Font-Size="Small" Width="200px"/>
                </asp:BoundField>
              <asp:BoundField DataField="Active" HeaderText="Active" SortExpression="Active">
                 <HeaderStyle Font-Italic="True" Font-Size="Small" Width="200px" />
                <ItemStyle Font-Italic="True" Font-Size="Small" Width="200px"/>
                </asp:BoundField>
              <asp:BoundField DataField="LastUpdatedGMT" HeaderText="LastUpdatedGMT" SortExpression="LastUpdatedGMT">
                 <HeaderStyle Font-Italic="True" Font-Size="Small" Width="200px" />
                <ItemStyle Font-Italic="True" Font-Size="Small" Width="200px"/>
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
          <EmptyDataRowStyle Font-Bold="True" Font-Italic="True" ForeColor="Red" />
          <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
          <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
          <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F7F7F7" />
          <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
          <SortedDescendingCellStyle BackColor="#E5E5E5" />
          <SortedDescendingHeaderStyle BackColor="#242121" />
      </asp:GridView>
       <asp:SqlDataSource ID="SqldsScheduleList" runat="server" ConnectionString="<%$ ConnectionStrings:HackathonDataBase %>" SelectCommand="SELECT * FROM [tbl_Schedule]"></asp:SqlDataSource>

       <div class="alert alert-danger alert-dismissible" id="divError21" runat="server" role="alert">
 <div style="margin-left:380px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Error! Schedule Already Disabled</strong></div>
</div>
                <div class="alert alert-danger alert-dismissible" id="divError22" runat="server" role="alert">
                    
 <div style="margin-left:380px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Error! Schedule Cannot Be Disabled</strong></div>
</div>

      <div class="alert alert-success alert-dismissible" id="divSuccess1" runat="server" role="alert">
                    
 <div style="margin-left:380px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Success! Schedule Disabled Successfully</strong></div>
</div>

              <div class ="form-group" style="margin-left:370px;">
           <br />
           <br />
          <asp:Label ID="lblHeading2" runat="server" Text="Update/Edit Schedule" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#333300" Visible="False"></asp:Label>
           <br />
   </div>
      <div class ="form-group" style="margin-left:200px;">
    <asp:Label ID="lblScheduleId" style="float:left;margin-right:25px;" runat="server" Text="Element Id" Font-Bold="True" Font-Italic="True" Visible="False"></asp:Label>
     <fieldset disabled>
          <input type="text" id="disabledTextInput" class="form-control" style="width:400px;margin-left:100px;" placeholder="Element Id" runat="server"/></fieldset>
           </div>
      <div class ="form-group" style="margin-left:200px;">
    <asp:Label ID="lblScheduleName" style="float:left;margin-right:25px;" runat="server" Text="Schedule Name" Font-Bold="True" Font-Italic="True" Visible="False"></asp:Label>
      <asp:TextBox ID="txtScheduleName" name="name" class="form-control" placeholder="Schedule Name" style="width:400px;margin-left:220px;" runat="server" required Visible="False"></asp:TextBox>
     </div>

       <div class ="form-group" style="margin-left:200px;">
    <asp:Label ID="lblStartHour" style="float:left;margin-right:25px;" runat="server" Text="Start Hour" Font-Bold="True" Font-Italic="True" Visible="False"></asp:Label>
      <asp:TextBox ID="txtStartHour" name="name" class="form-control" placeholder="Start Hour" style="width:400px;margin-left:220px;" runat="server" required Visible="False"></asp:TextBox>
     </div>

      <div class ="form-group" style="margin-left:200px;">
    <asp:Label ID="lblEndHour" style="float:left;margin-right:25px;" runat="server" Text="End Hour" Font-Bold="True" Font-Italic="True" Visible="False"></asp:Label>
      <asp:TextBox ID="txtEndHour" name="name" class="form-control" placeholder="End Hour" style="width:400px;margin-left:220px;" runat="server" required Visible="False"></asp:TextBox>
     </div>
     <asp:Button ID="btnUpdate" CssClass="btn btn-lg btn-primary btn-block" style="width:400px;margin-left:300px;" runat="server" Text="Update Element" OnClick="btnSubmit_Click" Visible="False"/>

      </br>
      </br>
       <div class="alert alert-danger alert-dismissible" id="div1" runat="server" role="alert">
 <div style="margin-left:380px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Error! Schedule Already Exists</strong></div>
</div>
                <div class="alert alert-danger alert-dismissible" id="div2" runat="server" role="alert">
                    
 <div style="margin-left:380px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Error! Schedule Cannot Be Updated</strong></div>
</div>

      <div class="alert alert-success alert-dismissible" id="div3" runat="server" role="alert">
                    
 <div style="margin-left:380px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Success! Schedule Updated Successfully</strong></div>
</div>
  </div>
  </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/HackathonMaster.master" AutoEventWireup="true" CodeFile="DisableKPI.aspx.cs" Inherits="DisableKPI" %>

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
          <asp:Label ID="lblHeading" runat="server" Text="List Of KPI" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#333300"></asp:Label>
           <br />
   </div>
      <asp:GridView ID="gvKPIList" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="KPIId,ScheduleId" DataSourceID="SqldsKPIList" ForeColor="Black" GridLines="Horizontal" AllowPaging="True" PageSize="5" OnRowCommand="gvKPIList_RowCommand" EmptyDataText="No Records Found">
          <Columns>
              <asp:BoundField DataField="KPIId" HeaderText="KPIId" ReadOnly="True" SortExpression="KPIId">
                <HeaderStyle Font-Bold="True" Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" Width="60px" />
              <ItemStyle Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" />
                </asp:BoundField>
              <asp:BoundField DataField="ScheduleId" HeaderText="Sid" SortExpression="ScheduleId" ReadOnly="True">
                  <HeaderStyle Font-Bold="True" Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" Width="60px" />
              <ItemStyle Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" />
                </asp:BoundField>
              <asp:BoundField DataField="DarkGreenValue" HeaderText="DarkGreen" SortExpression="DarkGreenValue">
                  <HeaderStyle Font-Bold="True" Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" Width="100px" />
              <ItemStyle Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" />
                </asp:BoundField>
              <asp:BoundField DataField="GreenValue" HeaderText="Green" SortExpression="GreenValue">
                  <HeaderStyle Font-Bold="True" Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" Width="60px" />
              <ItemStyle Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" />
                </asp:BoundField>
              <asp:BoundField DataField="YellowValue" HeaderText="Yellow" SortExpression="YellowValue">
                  <HeaderStyle Font-Bold="True" Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" Width="60px" />
              <ItemStyle Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" />
                </asp:BoundField>
              <asp:BoundField DataField="OrangeValue" HeaderText="Orange" SortExpression="OrangeValue">
                  <HeaderStyle Font-Bold="True" Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" Width="60px" />
              <ItemStyle Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" />
                </asp:BoundField>
              <asp:BoundField DataField="RedValue" HeaderText="Red" SortExpression="RedValue">
                  <HeaderStyle Font-Bold="True" Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" Width="60px" />
              <ItemStyle Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" />
                </asp:BoundField>
              <asp:BoundField DataField="KPIName" HeaderText="KPIName" SortExpression="KPIName">
                  <HeaderStyle Font-Bold="True" Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" Width="100px" />
              <ItemStyle Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" />
                </asp:BoundField>
              <asp:BoundField DataField="OrderName" HeaderText="Order" SortExpression="OrderName">
                  <HeaderStyle Font-Bold="True" Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" Width="60px" />
              <ItemStyle Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" />
                </asp:BoundField>
              <asp:BoundField DataField="Tool" HeaderText="Tool" SortExpression="Tool">
                  <HeaderStyle Font-Bold="True" Font-Italic="True" Font-Size="Small"  Width="60px" HorizontalAlign="Center" />
              <ItemStyle Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" />
                </asp:BoundField>
              <asp:BoundField DataField="Active" HeaderText="Active" SortExpression="Active">
                  <HeaderStyle Font-Bold="True" Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" Width="80px" />
              <ItemStyle Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" />
                </asp:BoundField>
              <asp:BoundField DataField="LastUpdatedGMT" HeaderText="LastUpdatedGMT" SortExpression="LastUpdatedGMT">
                  <HeaderStyle Font-Bold="True" Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" Width="200px" />
              <ItemStyle Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" />
                </asp:BoundField>
              <asp:BoundField DataField="UpdatedBy" HeaderText="UpdatedBy" SortExpression="UpdatedBy">
                  <HeaderStyle Font-Bold="True" Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" Width="150px" />
              <ItemStyle Font-Italic="True" Font-Size="Small" HorizontalAlign="Center" />
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
      <asp:SqlDataSource ID="SqldsKPIList" runat="server" ConnectionString="<%$ ConnectionStrings:HackathonDataBase %>" SelectCommand="SELECT * FROM [tbl_KPI]"></asp:SqlDataSource>

       <div class="alert alert-danger alert-dismissible" id="divError21" runat="server" role="alert">
 <div style="margin-left:380px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Error! KPI Already Disabled</strong></div>
</div>
                <div class="alert alert-danger alert-dismissible" id="divError22" runat="server" role="alert">
                    
 <div style="margin-left:380px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Error! KPI Cannot Be Disabled</strong></div>
</div>

      <div class="alert alert-success alert-dismissible" id="divSuccess1" runat="server" role="alert">
                    
 <div style="margin-left:380px;"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span><strong>Success! KPI Disabled Successfully</strong></div>
</div>

              <div class ="form-group" style="margin-left:370px;">
           <br />
           <br />
          <asp:Label ID="lblHeading2" runat="server" Text="Update/Edit KPI" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#333300" Visible="False"></asp:Label>
           <br />
   </div>
      <div class ="form-group" style="margin-left:150px;">
    <asp:Label ID="lblKpId" style="float:left;margin-right:55px;" runat="server" Text="KPIId" Font-Bold="True" Font-Italic="True" Visible="False"></asp:Label>
     <fieldset disabled>
          <input type="text" id="disabledTextInput" class="form-control" style="width:400px;margin-left:100px;" placeholder="KPIId" runat="server"/></fieldset>
           </div>

       <div class ="form-group" style="margin-left:150px;">
    <asp:Label ID="lblSid" style="float:left;margin-right:15px;" runat="server" Text="Schedule Id" Font-Bold="True" Font-Italic="True" Visible="False"></asp:Label>
     <fieldset disabled>
          <input type="text" id="disabledTextInput1" class="form-control" style="width:400px;margin-left:100px;" placeholder="Schedule Id" runat="server"/></fieldset>
           </div>

     <div class ="form-group" style="margin-left:90px;">
    <asp:Label ID="lblDarkGreenValue" style="float:left;margin-right:25px;" runat="server" Text="Dark Green Value" Font-Bold="True" Font-Italic="True" Visible="False"></asp:Label>
      <asp:TextBox ID="txtDarkGreenValue" name="name" class="form-control" placeholder="Dark Green Value" style="float:left;width:400px;margin-left:100px;" runat="server" required Visible="False"></asp:TextBox>
      <asp:RangeValidator ID="rvalDarkGreenValue" runat="server" style="width:400px;margin-left:20px;" ErrorMessage="Enter Value Between 0 and 100" ControlToValidate="txtDarkGreenValue" Font-Bold="True" Font-Italic="True" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            </div>
 </br>
        <div class ="form-group" style="margin-left:130px;">
    <asp:Label ID="lblGreenValue" style="float:left;margin-right:25px;" runat="server" Text="Green Value" Font-Bold="True" Font-Italic="True" Visible="False"></asp:Label>
      <asp:TextBox ID="txtGreenValue" name="name" class="form-control" placeholder="Green Value" style="float:left;width:400px;margin-left:110px;" runat="server" required Visible="False"></asp:TextBox>
       <asp:RangeValidator ID="rvalGreenValue" runat="server" style="width:400px;margin-left:20px;" ErrorMessage="Enter Value Between 0 and 100" ControlToValidate="txtGreenValue" Font-Bold="True" Font-Italic="True" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>

        </div>
      </br>
        <div class ="form-group" style="margin-left:120px;">
    <asp:Label ID="lblYellowValue" style="float:left;margin-right:25px;" runat="server" Text="Yellow Value" Font-Bold="True" Font-Italic="True" Visible="False"></asp:Label>
      <asp:TextBox ID="txtYellowValue" name="name" class="form-control" placeholder="Yellow Value" style="float:left;width:400px;margin-left:110px;" runat="server" required Visible="False"></asp:TextBox>
       <asp:RangeValidator ID="rvalYellowValue" runat="server" style="width:400px;margin-left:20px;" ErrorMessage="Enter Value Between 0 and 100" ControlToValidate="txtYellowValue" Font-Bold="True" Font-Italic="True" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>

        </div>
     </br>

      <div class ="form-group" style="margin-left:120px;">
    <asp:Label ID="lblOrangeValue" style="float:left;margin-right:25px;" runat="server" Text="Orange Value" Font-Bold="True" Font-Italic="True" Visible="False"></asp:Label>
      <asp:TextBox ID="txtOrangeValue" name="name" class="form-control" placeholder="Orange Value" style="float:left;width:400px;margin-left:110px;" runat="server" required Visible="False"></asp:TextBox>
       <asp:RangeValidator ID="rvalOrangeValue" runat="server" style="width:400px;margin-left:20px;" ErrorMessage="Enter Value Between 0 and 100" ControlToValidate="txtOrangeValue" Font-Bold="True" Font-Italic="True" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>

        </div>
     </br>
    
      <div class ="form-group" style="margin-left:150px;">
    <asp:Label ID="lblRedValue" style="float:left;margin-right:25px;" runat="server" Text="Red Value" Font-Bold="True" Font-Italic="True" Visible="False"></asp:Label>
      <asp:TextBox ID="txtRedValue" name="name" class="form-control" placeholder="Red Value" style="float:left;width:400px;margin-left:110px;" runat="server" required Visible="False"></asp:TextBox>
       <asp:RangeValidator ID="rvalRedValue" runat="server" style="width:400px;margin-left:20px;" ErrorMessage="Enter Value Between 0 and 100" ControlToValidate="txtRedValue" Font-Bold="True" Font-Italic="True" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>

        </div>
      </br>

      <div class ="form-group" style="margin-left:150px;">
    <asp:Label ID="lblKpiName" style="float:left;margin-right:25px;" runat="server" Text="KPI Name" Font-Bold="True" Font-Italic="True" Visible="False"></asp:Label>
      <asp:TextBox ID="txtKpiName" name="name" class="form-control" placeholder="KPI Name" style="width:400px;margin-left:220px;" runat="server" required Visible="False"></asp:TextBox>
      </div>

      <div class ="form-group" style="margin-left:150px;">
    <asp:Label ID="lblOrder" style="float:left;margin-right:115px;" runat="server" Text="Select Order" Font-Bold="True" Font-Italic="True" Visible="False"></asp:Label>
     <asp:DropDownList ID="ddlOrder"  CssClass="btn btn-default dropdown-toggle" style="width:400px;" runat="server" DataTextField="Tool" DataValueField="Tool" AppendDataBoundItems="True" Visible="False">
         <asp:ListItem>--SELECT--</asp:ListItem>
                <asp:ListItem Value="ASC">Ascending</asp:ListItem>
         <asp:ListItem Value="DSC">Descending</asp:ListItem>
                </asp:DropDownList>
       </div>

       <div class ="form-group" style="margin-left:150px;">
    <asp:Label ID="lblTool" style="float:left;margin-right:125px;" runat="server" Text="Select Tool" Font-Bold="True" Font-Italic="True" Visible="False"></asp:Label>
     <asp:DropDownList ID="ddlTool"  CssClass="btn btn-default dropdown-toggle" style="width:400px;" runat="server" DataTextField="Tool" DataValueField="Tool" AppendDataBoundItems="True" DataSourceID="SqlDsTool" Visible="False">
         <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList>
           <asp:SqlDataSource ID="SqlDsTool" runat="server" ConnectionString="<%$ ConnectionStrings:HackathonDataBase %>" SelectCommand="SELECT DISTINCT(Tool) FROM tbl_Elements"></asp:SqlDataSource>
       </div>
     <asp:Button ID="btnUpdate" CssClass="btn btn-lg btn-primary btn-block" style="width:400px;margin-left:300px;" runat="server" Text="Update KPI" OnClick="btnSubmit_Click" Visible="False"/>

      </br>
      </br>
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


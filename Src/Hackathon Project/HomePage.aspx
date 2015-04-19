<%@ Page Title="" Language="C#" MasterPageFile="~/HackathonMaster.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style>
       #chartdiv {
	width		: 100%;
	height		: 435px;
	font-size	: 11px;
}	
       h1 {
  font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
  font-weight:700;
  font-style:italic;
}

.border {
  border: 2px solid #393939;
  -webkit-border-radius: 10px;
  -moz-border-radius: 10px;
  border-radius: 10px;
  -webkit-box-shadow: 4px 4px 5px rgba(50, 50, 50, 0.75);
  -moz-box-shadow: 4px 4px 5px rgba(50, 50, 50, 0.75);
  box-shadow: 4px 4px 5px rgba(50, 50, 50, 0.75);

}

label {
  display: block;
  margin-left: 3px;
  padding-top: 2px;
  text-shadow: 2px 2px 3px rgba(150, 150, 150, 0.75);
  font-family:Verdana, Geneva, sans-serif;
  font-size:.9em;
}

legend {
  text-shadow: 2px 2px 3px rgba(150, 150, 150, 0.75);
  font-family:Verdana, Geneva, sans-serif;
  font-size:1.4em;
  border-top: 2px solid #009;
  border-bottom:2px solid #009;
  border-left: 2px solid #009;
  border-right:  2px solid #009;
  border-radius: 10px;
  -webkit-box-shadow: 4px 4px 5px rgba(50, 50, 50, 0.75);
  -moz-box-shadow: 4px 4px 5px rgba(50, 50, 50, 0.75);
  box-shadow: 4px 4px 5px rgba(50, 50, 50, 0.75);
  padding: 3px;
}

.inline {
  display:inline-block;
}

   </style>
    <fieldset class="border">
     <legend>Elements List</legend> 
  <asp:GridView ID="gvElementsList" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ElementId" DataSourceID="SqldsElementList" ForeColor="Black" GridLines="Horizontal" AllowPaging="True" PageSize="5" EmptyDataText="No Records Found">
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
      <asp:SqlDataSource ID="SqldsElementList" runat="server" ConnectionString="<%$ ConnectionStrings:HackathonDataBase %>" SelectCommand="SELECT * FROM [tbl_Elements]"></asp:SqlDataSource>
       
</fieldset>
     </br></br>
        <fieldset class="border">
     <legend>KPI's List</legend> 
 <asp:GridView ID="gvKPIList" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="KPIId,ScheduleId" DataSourceID="SqldsKPIList" ForeColor="Black" GridLines="Horizontal" AllowPaging="True" PageSize="5" EmptyDataText="No Records Found">
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

</fieldset>
    </br></br>
        <fieldset class="border">
     <legend>Schedules</legend> 
  <asp:GridView ID="gvScheduleList" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ScheduleId" DataSourceID="SqldsScheduleList" ForeColor="Black" GridLines="Horizontal" AllowPaging="True" PageSize="5" EmptyDataText="No Records Found">
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

</fieldset>
</asp:Content>


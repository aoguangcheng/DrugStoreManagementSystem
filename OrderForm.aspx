<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="OrderForm.aspx.cs" Inherits="OrderForm" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" DataKeyNames="orderformid" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="orderformid" HeaderText="orderformid" 
                ReadOnly="True" SortExpression="orderformid" />
            <asp:BoundField DataField="stuffid" HeaderText="stuffid" 
                SortExpression="stuffid" />
            <asp:BoundField DataField="drugstoreid" HeaderText="drugstoreid" 
                SortExpression="drugstoreid" />
            <asp:BoundField DataField="memberid" HeaderText="memberid" 
                SortExpression="memberid" />
            <asp:BoundField DataField="saletime" HeaderText="saletime" 
                SortExpression="saletime" />
            <asp:BoundField DataField="totalmoney" HeaderText="totalmoney" 
                SortExpression="totalmoney" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DSMSConnectionString %>" 
        DeleteCommand="DELETE FROM [orderform] WHERE [orderformid] = @orderformid" 
        InsertCommand="INSERT INTO [orderform] ([orderformid], [stuffid], [drugstoreid], [memberid], [saletime], [totalmoney]) VALUES (@orderformid, @stuffid, @drugstoreid, @memberid, @saletime, @totalmoney)" 
        SelectCommand="SELECT * FROM [orderform]" 
        UpdateCommand="UPDATE [orderform] SET [stuffid] = @stuffid, [drugstoreid] = @drugstoreid, [memberid] = @memberid, [saletime] = @saletime, [totalmoney] = @totalmoney WHERE [orderformid] = @orderformid">
        <DeleteParameters>
            <asp:Parameter Name="orderformid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="orderformid" Type="String" />
            <asp:Parameter Name="stuffid" Type="String" />
            <asp:Parameter Name="drugstoreid" Type="String" />
            <asp:Parameter Name="memberid" Type="String" />
            <asp:Parameter DbType="Date" Name="saletime" />
            <asp:Parameter Name="totalmoney" Type="Single" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="stuffid" Type="String" />
            <asp:Parameter Name="drugstoreid" Type="String" />
            <asp:Parameter Name="memberid" Type="String" />
            <asp:Parameter DbType="Date" Name="saletime" />
            <asp:Parameter Name="totalmoney" Type="Single" />
            <asp:Parameter Name="orderformid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">
    <a href="OrderForm.aspx.cs">&nbsp; <asp:Chart ID="Chart1" runat="server" 
        DataSourceID="SqlDataSource2">
        <series>
            <asp:Series Name="Series1" XValueMember="drugstoreid" 
                YValueMembers="totalmoney">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>
    </a>&nbsp;&nbsp; <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DSMSConnectionString %>" 
        SelectCommand="SELECT * FROM [orderform]"></asp:SqlDataSource>
    <br />
</asp:Content>



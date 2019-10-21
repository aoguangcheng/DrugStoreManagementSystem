<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="OrderDetails.aspx.cs" Inherits="OrderDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="orderformid,drugid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="datailid" HeaderText="datailid" 
                SortExpression="datailid" />
            <asp:BoundField DataField="orderformid" HeaderText="orderformid" 
                ReadOnly="True" SortExpression="orderformid" />
            <asp:BoundField DataField="drugid" HeaderText="drugid" ReadOnly="True" 
                SortExpression="drugid" />
            <asp:BoundField DataField="discount" HeaderText="discount" 
                SortExpression="discount" />
            <asp:BoundField DataField="drugnumber" HeaderText="drugnumber" 
                SortExpression="drugnumber" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:DSMSConnectionString %>" 
    DeleteCommand="DELETE FROM [orderDetails] WHERE [orderformid] = @orderformid AND [drugid] = @drugid" 
    InsertCommand="INSERT INTO [orderDetails] ([datailid], [orderformid], [drugid], [discount], [drugnumber]) VALUES (@datailid, @orderformid, @drugid, @discount, @drugnumber)" 
    SelectCommand="SELECT * FROM [orderDetails] WHERE ([datailid] = @datailid)" 
    UpdateCommand="UPDATE [orderDetails] SET [datailid] = @datailid, [discount] = @discount, [drugnumber] = @drugnumber WHERE [orderformid] = @orderformid AND [drugid] = @drugid">
    <DeleteParameters>
        <asp:Parameter Name="orderformid" Type="String" />
        <asp:Parameter Name="drugid" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="datailid" Type="String" />
        <asp:Parameter Name="orderformid" Type="String" />
        <asp:Parameter Name="drugid" Type="String" />
        <asp:Parameter Name="discount" Type="Single" />
        <asp:Parameter Name="drugnumber" Type="Int32" />
    </InsertParameters>
    <SelectParameters>
        <asp:SessionParameter Name="datailid" SessionField="detailid" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="datailid" Type="String" />
        <asp:Parameter Name="discount" Type="Single" />
        <asp:Parameter Name="drugnumber" Type="Int32" />
        <asp:Parameter Name="orderformid" Type="String" />
        <asp:Parameter Name="drugid" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
    Text="CONTINUETOADD" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        Text="GOTOPAY" />
</asp:Content>



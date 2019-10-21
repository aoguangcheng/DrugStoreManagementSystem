<%@ Page Title="" Language="C#" MasterPageFile="~/masterManagement.master" AutoEventWireup="true" CodeFile="ManageDrug.aspx.cs" Inherits="ManageDrug" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="drugid" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="drugid" HeaderText="drugid" ReadOnly="True" 
            SortExpression="drugid" />
        <asp:BoundField DataField="factoryid" HeaderText="factoryid" 
            SortExpression="factoryid" />
        <asp:BoundField DataField="batchnumber" HeaderText="batchnumber" 
            SortExpression="batchnumber" />
        <asp:BoundField DataField="drugname" HeaderText="drugname" 
            SortExpression="drugname" />
        <asp:BoundField DataField="drugtype" HeaderText="drugtype" 
            SortExpression="drugtype" />
        <asp:BoundField DataField="drugstandard" HeaderText="drugstandard" 
            SortExpression="drugstandard" />
        <asp:BoundField DataField="producedate" HeaderText="producedate" 
            SortExpression="producedate" />
        <asp:BoundField DataField="qualitytime" HeaderText="qualitytime" 
            SortExpression="qualitytime" />
        <asp:BoundField DataField="primecost" HeaderText="primecost" 
            SortExpression="primecost" />
        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        <asp:BoundField DataField="more" HeaderText="more" SortExpression="more" />
        <asp:CommandField ShowDeleteButton="True" />
        <asp:CommandField ShowEditButton="True" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:DSMSConnectionString %>" 
    DeleteCommand="DELETE FROM [drug] WHERE [drugid] = @drugid" 
    InsertCommand="INSERT INTO [drug] ([drugid], [factoryid], [batchnumber], [drugname], [drugtype], [drugstandard], [producedate], [qualitytime], [primecost], [price], [more]) VALUES (@drugid, @factoryid, @batchnumber, @drugname, @drugtype, @drugstandard, @producedate, @qualitytime, @primecost, @price, @more)" 
    SelectCommand="SELECT * FROM [drug]" 
    UpdateCommand="UPDATE [drug] SET [factoryid] = @factoryid, [batchnumber] = @batchnumber, [drugname] = @drugname, [drugtype] = @drugtype, [drugstandard] = @drugstandard, [producedate] = @producedate, [qualitytime] = @qualitytime, [primecost] = @primecost, [price] = @price, [more] = @more WHERE [drugid] = @drugid">
    <DeleteParameters>
        <asp:Parameter Name="drugid" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="drugid" Type="String" />
        <asp:Parameter Name="factoryid" Type="String" />
        <asp:Parameter Name="batchnumber" Type="String" />
        <asp:Parameter Name="drugname" Type="String" />
        <asp:Parameter Name="drugtype" Type="String" />
        <asp:Parameter Name="drugstandard" Type="String" />
        <asp:Parameter DbType="Date" Name="producedate" />
        <asp:Parameter Name="qualitytime" Type="Int32" />
        <asp:Parameter Name="primecost" Type="Single" />
        <asp:Parameter Name="price" Type="Single" />
        <asp:Parameter Name="more" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="factoryid" Type="String" />
        <asp:Parameter Name="batchnumber" Type="String" />
        <asp:Parameter Name="drugname" Type="String" />
        <asp:Parameter Name="drugtype" Type="String" />
        <asp:Parameter Name="drugstandard" Type="String" />
        <asp:Parameter DbType="Date" Name="producedate" />
        <asp:Parameter Name="qualitytime" Type="Int32" />
        <asp:Parameter Name="primecost" Type="Single" />
        <asp:Parameter Name="price" Type="Single" />
        <asp:Parameter Name="more" Type="String" />
        <asp:Parameter Name="drugid" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>


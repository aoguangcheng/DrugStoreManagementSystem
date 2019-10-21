<%@ Page Title="" Language="C#" MasterPageFile="~/masterManagement.master" AutoEventWireup="true" CodeFile="ManageDrugStore.aspx.cs" Inherits="ManageDrugStore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="drugstoreid" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="drugstoreid" HeaderText="drugstoreid" 
            ReadOnly="True" SortExpression="drugstoreid" />
        <asp:BoundField DataField="drugstorename" HeaderText="drugstorename" 
            SortExpression="drugstorename" />
        <asp:BoundField DataField="drugstoreaddress" HeaderText="drugstoreaddress" 
            SortExpression="drugstoreaddress" />
        <asp:BoundField DataField="drugstorephonenumber" 
            HeaderText="drugstorephonenumber" SortExpression="drugstorephonenumber" />
        <asp:CommandField ShowDeleteButton="True" />
        <asp:CommandField ShowEditButton="True" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:DSMSConnectionString %>" 
    DeleteCommand="DELETE FROM [drugstore] WHERE [drugstoreid] = @drugstoreid" 
    InsertCommand="INSERT INTO [drugstore] ([drugstoreid], [drugstorename], [drugstoreaddress], [drugstorephonenumber]) VALUES (@drugstoreid, @drugstorename, @drugstoreaddress, @drugstorephonenumber)" 
    SelectCommand="SELECT * FROM [drugstore]" 
    UpdateCommand="UPDATE [drugstore] SET [drugstorename] = @drugstorename, [drugstoreaddress] = @drugstoreaddress, [drugstorephonenumber] = @drugstorephonenumber WHERE [drugstoreid] = @drugstoreid">
    <DeleteParameters>
        <asp:Parameter Name="drugstoreid" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="drugstoreid" Type="String" />
        <asp:Parameter Name="drugstorename" Type="String" />
        <asp:Parameter Name="drugstoreaddress" Type="String" />
        <asp:Parameter Name="drugstorephonenumber" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="drugstorename" Type="String" />
        <asp:Parameter Name="drugstoreaddress" Type="String" />
        <asp:Parameter Name="drugstorephonenumber" Type="String" />
        <asp:Parameter Name="drugstoreid" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>


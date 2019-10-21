<%@ Page Title="" Language="C#" MasterPageFile="~/masterManagement.master" AutoEventWireup="true" CodeFile="ManageStuff.aspx.cs" Inherits="ManageStuff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="stuffid" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:TemplateField HeaderText="stuffid" SortExpression="stuffid">
            <EditItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("stuffid") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("stuffid") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="drugstoreid" HeaderText="drugstoreid" 
            SortExpression="drugstoreid" />
        <asp:BoundField DataField="stuffname" HeaderText="stuffname" 
            SortExpression="stuffname" />
        <asp:BoundField DataField="stuffsex" HeaderText="stuffsex" 
            SortExpression="stuffsex" />
        <asp:BoundField DataField="stuffphonenumber" HeaderText="stuffphonenumber" 
            SortExpression="stuffphonenumber" />
        <asp:BoundField DataField="password" HeaderText="password" 
            SortExpression="password" />
        <asp:CommandField ShowDeleteButton="True" />
        <asp:CommandField ShowEditButton="True" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:DSMSConnectionString %>" 
    DeleteCommand="DELETE FROM [stuff] WHERE [stuffid] = @stuffid" 
    InsertCommand="INSERT INTO [stuff] ([stuffid], [drugstoreid], [stuffname], [stuffsex], [stuffphonenumber], [password]) VALUES (@stuffid, @drugstoreid, @stuffname, @stuffsex, @stuffphonenumber, @password)" 
    SelectCommand="SELECT * FROM [stuff]" 
    UpdateCommand="UPDATE [stuff] SET [drugstoreid] = @drugstoreid, [stuffname] = @stuffname, [stuffsex] = @stuffsex, [stuffphonenumber] = @stuffphonenumber, [password] = @password WHERE [stuffid] = @stuffid">
    <DeleteParameters>
        <asp:Parameter Name="stuffid" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="stuffid" Type="String" />
        <asp:Parameter Name="drugstoreid" Type="String" />
        <asp:Parameter Name="stuffname" Type="String" />
        <asp:Parameter Name="stuffsex" Type="String" />
        <asp:Parameter Name="stuffphonenumber" Type="String" />
        <asp:Parameter Name="password" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="drugstoreid" Type="String" />
        <asp:Parameter Name="stuffname" Type="String" />
        <asp:Parameter Name="stuffsex" Type="String" />
        <asp:Parameter Name="stuffphonenumber" Type="String" />
        <asp:Parameter Name="password" Type="String" />
        <asp:Parameter Name="stuffid" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>


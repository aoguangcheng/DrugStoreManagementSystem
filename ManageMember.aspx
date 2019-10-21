<%@ Page Title="" Language="C#" MasterPageFile="~/masterManagement.master" AutoEventWireup="true" CodeFile="ManageMember.aspx.cs" Inherits="ManageMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="memberid" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:BoundField DataField="memberid" HeaderText="memberid" ReadOnly="True" 
            SortExpression="memberid" />
        <asp:BoundField DataField="membername" HeaderText="membername" 
            SortExpression="membername" />
        <asp:BoundField DataField="phonenumber" HeaderText="phonenumber" 
            SortExpression="phonenumber" />
        <asp:BoundField DataField="credits" HeaderText="credits" 
            SortExpression="credits" />
        <asp:BoundField DataField="memberid" HeaderText="memberid" ReadOnly="True" 
            SortExpression="memberid" />
        <asp:BoundField DataField="membername" HeaderText="membername" 
            SortExpression="membername" />
        <asp:BoundField DataField="phonenumber" HeaderText="phonenumber" 
            SortExpression="phonenumber" />
        <asp:CommandField ShowDeleteButton="True" />
        <asp:TemplateField ShowHeader="False">
            <EditItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="更新"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                    CommandName="Cancel" Text="取消"></asp:LinkButton>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="编辑"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:DSMSConnectionString %>" 
    DeleteCommand="DELETE FROM [member] WHERE [memberid] = @memberid" 
    InsertCommand="INSERT INTO [member] ([memberid], [membername], [phonenumber], [credits]) VALUES (@memberid, @membername, @phonenumber, @credits)" 
    SelectCommand="SELECT * FROM [member]" 
    UpdateCommand="UPDATE [member] SET [membername] = @membername, [phonenumber] = @phonenumber, [credits] = @credits WHERE [memberid] = @memberid">
    <DeleteParameters>
        <asp:Parameter Name="memberid" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="memberid" Type="String" />
        <asp:Parameter Name="membername" Type="String" />
        <asp:Parameter Name="phonenumber" Type="String" />
        <asp:Parameter Name="credits" Type="Single" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="membername" Type="String" />
        <asp:Parameter Name="phonenumber" Type="String" />
        <asp:Parameter Name="credits" Type="Single" />
        <asp:Parameter Name="memberid" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="Member.aspx.cs" Inherits="Member" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <asp:Label ID="Label2" runat="server" Text="Input"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>ID</asp:ListItem>
        <asp:ListItem>NAME</asp:ListItem>
        <asp:ListItem>PHONE</asp:ListItem>
        <asp:ListItem>CREDITS</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Query" />
</asp:Content>


<asp:Content ID="Content4" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">
    <asp:Label ID="Label6" runat="server" Text="NAME  "></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label7" runat="server" Text="PHONE"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        Text="REGISTER" />
    <br />
</asp:Content>




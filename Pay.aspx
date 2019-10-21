<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="Pay.aspx.cs" Inherits="Pay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="Label6" runat="server" Text="TOTALMONEY"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/imagine/01.jpg" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="PAYFINISHED" />
</asp:Content>


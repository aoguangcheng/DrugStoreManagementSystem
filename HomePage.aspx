<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="Drug" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" DataKeyNames="drugid" >
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <asp:Label ID="Label2" runat="server" Text="Input"></asp:Label>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<asp:DropDownList ID="DropDownList1" runat="server">
    <asp:ListItem>DrugID</asp:ListItem>
    <asp:ListItem>FactoryID</asp:ListItem>
    <asp:ListItem>DrugName</asp:ListItem>
    <asp:ListItem>DRUGTYPE</asp:ListItem>
</asp:DropDownList>
<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Query" />
</asp:Content>



<asp:Content ID="Content4" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="ADD TO SHOP" 
        style="height: 32px" />
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
    Text="ORDERFORM" />
<asp:Button ID="Button5" runat="server" Text="TURNTODETAIL" 
    onclick="Button5_Click" />
</asp:Content>




<asp:Content ID="Content5" runat="server" 
    contentplaceholderid="ContentPlaceHolder4">
    <asp:Label ID="Label6" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content6" runat="server" 
    contentplaceholderid="ContentPlaceHolder5">
    <asp:Label ID="Label7" runat="server"></asp:Label>
</asp:Content>






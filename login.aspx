<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
             background-image:url(背景/login.jpg);
             }
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 28px;
        }
        .style3
        {
        }
        .style4
        {
            height: 28px;
            width: 185px;
        }
        .style5
        {
            width: 185px;
        }
        .style6
        {
            width: 305px;
        }
        .style7
        {
            height: 28px;
            width: 305px;
        }
        .style8
        {
        }
        .style9
        {
            height: 28px;
            width: 309px;
        }
        .style13
        {
            font-size: x-small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="font-family: 方正粗黑宋简体; font-size: 40px">
                HAPPINESS <span class="style13">DRUGSTORE MANAGEMENT SYSTEM</span></td>
        </tr>
        <tr>
            <td  align="right" class="style9">
                </td>
            <td class="style7" align="center">
                <asp:Label ID="Label3" runat="server" Text="当前时间" ForeColor="#006600"></asp:Label>
            </td>
            <td class="style4">
                </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td align="right" class="style6">
                <asp:Label ID="Label1" runat="server" Text="USERID："></asp:Label>
            </td>
            <td class="style3" colspan="2">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td align="right" class="style6">
                <asp:Label ID="Label2" runat="server" Text="PASSWORD:"></asp:Label>
            </td>
            <td class="style3" colspan="2">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                <asp:Label ID="Label4" runat="server" ForeColor="#FF0066"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
            </td>
            <td align="right" class="style7">
                <asp:Button ID="Button1" runat="server" Text="lOGIN" onclick="Button1_Click" />
            </td>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="Button2" runat="server" Text="RESET" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style8" colspan="4" 
                style="font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 15px">
                copyright reserved by @CTGU Computer And Information Academy</td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>

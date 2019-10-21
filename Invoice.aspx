<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Invoice.aspx.cs" Inherits="Invoice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {}
        .style3
        {
        }
        .style4
        {
            font-size: xx-large;
            font-family: 方正粗黑宋简体;
        }
        .style5
        {
            font-family: 方正粗黑宋简体;
        }
        .style6
        {
            height: 29px;
        }
        .style7
        {
            height: 167px;
        }
        .style8
        {
            height: 28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2" colspan="3">
                    <span class="style4">HAPPINESS</span><span class="style5"> DRUGSTORE</span></td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="药店名称"></asp:Label>
                </td>
                <td align="center">
                <a href ="HomePage.aspx">Return To HomePage</a>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style3">
                    <asp:Label ID="Label2" runat="server" Text="stuffid"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td align="center">
                    <asp:Label ID="Label3" runat="server" Text="总计件数"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style7" colspan="3">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="style8" align="center" colspan="3">
                    ----------------------------------------------------------------------------------</td>
            </tr>
            <tr>
                <td class="style6" align="right">
                    <asp:Label ID="Label4" runat="server" Text="应收金额"></asp:Label>
                </td>
                <td class="style6">
                    </td>
                <td align="left" class="style6">
                    <asp:Label ID="Label5" runat="server" Text="找零：0.00"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" align="center" colspan="3">
                    <asp:Label ID="Label6" runat="server" Text="姓名/判断是否使用了会员卡"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" align="center" colspan="3">
                    <asp:Label ID="Label7" runat="server" Text="会员卡号"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" align="center" colspan="3">
                    <asp:Label ID="Label8" runat="server" Text="本次积分"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" align="center" colspan="3">
                    <asp:Label ID="Label9" runat="server" Text="总积分"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" align="center" colspan="3">
                    ----------------------------------------------------------------------------------</td>
                </tr>
            <tr>
                <td class="style3" align="center" colspan="3">
                    <asp:Label ID="Label10" runat="server" Text="销售单号"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" align="center" colspan="3">
                    <asp:Label ID="Label11" runat="server" Text="销售时间"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" align="center" colspan="3">
                    ----------------------------------------------------------------------------------</td>
            </tr>
            <tr>
                <td class="style8" align="center" colspan="3">
                    <asp:Label ID="Label12" runat="server" Text="门店地址"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3" align="center" colspan="3">
                    <asp:Label ID="Label131" runat="server" Text="联系电话"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style8" align="center" colspan="3">
                    ----------------------------------------------------------------------------------</td>
            </tr>
            <tr>
                <td class="style3" align="center" colspan="3">
                    益丰大药房火热招聘各岗位人员<br />
                    招聘电话：13872596079<br />
                    客服服务热线：95599</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

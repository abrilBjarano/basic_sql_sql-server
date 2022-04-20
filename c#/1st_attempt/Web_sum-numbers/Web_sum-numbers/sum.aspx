<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sum.aspx.cs" Inherits="Web_sum_numbers.sum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Addition of two numbers&nbsp;&nbsp;&nbsp; </h1>
        </div>
</body>
</html>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Number 1"></asp:Label>
            </td>
            <td class="auto-style2">
<asp:TextBox runat="server" ID="txt_n1" OnTextChanged="Unnamed1_TextChanged" style="margin-top: 0px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Number 2"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_n2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btn_add" runat="server" OnClick="btn_add_Click" Text="Add" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lbl_res" runat="server" Text="0"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>


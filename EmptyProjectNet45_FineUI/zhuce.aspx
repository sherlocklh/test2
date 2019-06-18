<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zhuce.aspx.cs" Inherits="EmptyProjectNet45_FineUI.zhuce" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body  style="background-image:url(图片/16137632_1354005593653.jpg); background-repeat:no-repeat;">
    <form id="form2" runat="server">
        <center>
        <div class="main">
            <br />
            <br />
            <br />
            <br />
            <div class="title">
                    注册
                </div>
            <div>
                <center>
            <table runat="server">
                <tr>
                    <td >学号：</td>
                    <td>
                        <asp:TextBox ID="txtid" runat="server"  class="box"></asp:TextBox>
                    </td>
                    <td class="left">
                        <asp:RequiredFieldValidator ID="lid" runat="server" ErrorMessage="学号不能为空！" ControlToValidate="txtid"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>密码：</td>
                    <td>
                        <asp:TextBox ID="txtpass" runat="server"  class="box"></asp:TextBox>
                    </td>
                    <td class="left">
                        <asp:RequiredFieldValidator ID="lpass" runat="server" ErrorMessage="密码不能为空！" ControlToValidate="txtpass"></asp:RequiredFieldValidator>
                    </td>
                    </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnInsert" runat="server" Text="确认" OnClick="btnInsert_Click" CssClass="buttom"></asp:Button>
                        <asp:Button ID="btnResert" runat="server" Text="重置" CausesValidation="False" OnClick="btnReset_Click" CssClass="buttom"></asp:Button></td>
                </tr>
            </table></center>
        </div>
            </div>
            </center>
    </form>
</body>
</html>

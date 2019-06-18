<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="EmptyProjectNet45_FineUI.add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form2" runat="server">
        <center>
        <div class="main">
            <div class="title">
                    填写个人信息
                </div>
            <div class="content">
            <table runat="server" class="table">
                <tr>
                    <td class="right">姓名：</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server"  class="box"></asp:TextBox>
                    </td>
                    <td class="left">
                        <asp:RequiredFieldValidator ID="lname" runat="server" ErrorMessage="姓名不能为空！" ControlToValidate="txtname"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="right">学号：</td>
                    <td>
                        <asp:TextBox ID="txtnum" runat="server"  class="box"></asp:TextBox>
                    </td>
                    <td class="left">
                        <asp:RequiredFieldValidator ID="lnum" runat="server" ErrorMessage="学号不能为空！" ControlToValidate="txtnum"></asp:RequiredFieldValidator>
                    </td>
                    </tr>
                
                <tr>
                    <td class="right">性别：</td>
                    <td>
                        <asp:TextBox ID="txtsex" runat="server" class="box"></asp:TextBox>
                    </td>
                    <td class="left">
                        <asp:RequiredFieldValidator ID="lsex" runat="server" ErrorMessage="性别不能为空！" ControlToValidate="txtsex"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="right">联系方式：</td>
                    <td>
                        <asp:TextBox ID="txtphone" runat="server" class="box"></asp:TextBox>
                    </td>
                    <td class="left">
                        <asp:RequiredFieldValidator ID="lphone" runat="server" ErrorMessage="联系方式不能为空！" ControlToValidate="txtphone"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="right">宿舍：</td>
                    <td>
                        <asp:TextBox ID="txtsushe" runat="server" class="box"></asp:TextBox>
                    </td>
                    <td class="left">
                        <asp:RequiredFieldValidator ID="lsushe" runat="server" ErrorMessage="宿舍不能为空！" ControlToValidate="txtsushe"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="right">学院：</td>
                    <td>
                        <asp:TextBox ID="txtxueyuan" runat="server" class="box"></asp:TextBox>
                    </td>
                    <td class="left">
                        <asp:RequiredFieldValidator ID="lxueyuan" runat="server" ErrorMessage="学院不能为空！" ControlToValidate="txtxueyuan"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;<asp:Button ID="btnInsert" runat="server" Text="确认添加" OnClick="btnInsert_Click" CssClass="buttom"></asp:Button>
                        <asp:Button ID="btnResert" runat="server" Text="重新填写" CausesValidation="False" OnClick="btnReset_Click" CssClass="buttom"></asp:Button></td>
                </tr>
            </table>
        </div>
            </div>
            </center>
    </form>
</body>
</html>
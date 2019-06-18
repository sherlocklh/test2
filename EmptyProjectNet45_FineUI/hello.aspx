<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="hello.aspx.cs" Inherits="EmptyProjectNet20.hello" %>

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
                    添加记录
                </div>
            <div class="content">
            <table runat="server" class="table">
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
                    <td class="right">姓名：</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server"  class="box"></asp:TextBox>
                    </td>
                    <td class="left">
                        <asp:RequiredFieldValidator ID="lname" runat="server" ErrorMessage="姓名不能为空！" ControlToValidate="txtname"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="right">班级：</td>
                    <td>
                        <asp:TextBox ID="txtclass" runat="server" class="box"></asp:TextBox>
                    </td>
                    <td class="left">
                        <asp:RequiredFieldValidator ID="lclass" runat="server" ErrorMessage="班级不能为空！" ControlToValidate="txtclass"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="right">英语：</td>
                    <td>
                        <asp:TextBox ID="txtEnglish" runat="server" class="box"></asp:TextBox>
                    </td>
                    <td class="left">
                        <asp:RequiredFieldValidator ID="lEnglish" runat="server" ErrorMessage="英语不能为空！" ControlToValidate="txtEnglish"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="right">高数：</td>
                    <td>
                        <asp:TextBox ID="txtmath" runat="server" class="box"></asp:TextBox>
                    </td>
                    <td class="left">
                        <asp:RequiredFieldValidator ID="lmath" runat="server" ErrorMessage="高数不能为空！" ControlToValidate="txtmath"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="right">数据结构：</td>
                    <td>
                        <asp:TextBox ID="txtdata" runat="server" class="box"></asp:TextBox>
                    </td>
                    <td class="left">
                        <asp:RequiredFieldValidator ID="ldata" runat="server" ErrorMessage="数据结构不能为空！" ControlToValidate="txtdata"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="right">经济学：</td>
                    <td>
                        <asp:TextBox ID="txteconomic" runat="server" class="box"></asp:TextBox>
                    </td>
                    <td class="left">
                        <asp:RequiredFieldValidator ID="leconomic" runat="server" ErrorMessage="经济学不能为空！" ControlToValidate="txteconomic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="right">c语言：</td>
                    <td>
                        <asp:TextBox ID="txtc" runat="server" class="box"></asp:TextBox>
                    </td>
                    <td class="left">
                        <asp:RequiredFieldValidator ID="lc" runat="server" ErrorMessage="c语言不能为空！" ControlToValidate="txtc"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="right">市场营销：</td>
                    <td>
                        <asp:TextBox ID="txtmarketing" runat="server" class="box"></asp:TextBox>
                    </td>
                    <td class="left">
                        <asp:RequiredFieldValidator ID="lmarketing" runat="server" ErrorMessage="市场营销不能为空！" ControlToValidate="txtmarketing"></asp:RequiredFieldValidator>
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
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="perstu.aspx.cs" Inherits="EmptyProjectNet45_FineUI.perstu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label runat="server" ID="name"></asp:Label>&nbsp;&nbsp;
    请你选择：
        <asp:Button ID="Button1" runat="server" Text="各科成绩" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="平均成绩" OnClick="Button2_Click" />
    
        <br />
        <br />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                        <asp:BoundField DataField="ord" HeaderText="序号" ReadOnly="True" SortExpression="ord" />
                        <asp:BoundField DataField="num" HeaderText="学号" SortExpression="num" />
                        <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
                        <asp:BoundField DataField="class" HeaderText="班级" SortExpression="class" />
                        <asp:BoundField DataField="English" HeaderText="英语" SortExpression="English" />
                        <asp:BoundField DataField="math" HeaderText="高数" SortExpression="math" />
                        <asp:BoundField DataField="data" HeaderText="数据结构" SortExpression="data" />
                        <asp:BoundField DataField="economic" HeaderText="经济学" SortExpression="economic" />
                        <asp:BoundField DataField="c" HeaderText="c语言" SortExpression="c" />
                        <asp:BoundField DataField="marketing" HeaderText="市场营销" SortExpression="marketing" />
                </Columns>
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
        <br />
        <br />
        <asp:Label ID="txtave" runat="server"></asp:Label>
    </form>
</body>
</html>

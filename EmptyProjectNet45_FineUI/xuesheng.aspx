﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xuesheng.aspx.cs" Inherits="EmptyProjectNet45_FineUI.xuesheng" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
            <link href="StyleSheet1.css" rel="stylesheet" />
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
                <center>
    <div>
    <div class="line">
                            <asp:Button ID="DISPLAY" runat="server" Text="显示全表" CssClass="buttom" OnClick="DISPLAY_Click" />
                        </div>
                        <div class="line">
                            共有<asp:Label ID="rowcount" runat="server" Text=""></asp:Label>条记录
                        <br />
                        </div>
                        <div class="line">
                            <asp:TextBox ID="txtfind" runat="server" CssClass="box" />
                        <asp:Button ID="FINDBUTTOM" runat="server" Text="搜索"   OnClick="FINDBUTTOM_Click" CssClass="buttom" />
                        </div>
    </div>
                <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" CssClass="gridview"
                            OnRowEditing="GridView2_RowEditing" OnRowDeleting="GridView2_RowDeleting" OnPageIndexChanging="GridView2_PageIndexChanging"
                            OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowUpdating="GridView2_RowUpdating"  OnRowCommand="GridView2_RowCommand" DataKeyNames="NUM" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
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
                        <asp:CommandField HeaderText="选中行" ShowHeader="True" ShowSelectButton="True" />
                        <asp:CommandField HeaderText="编辑" ShowEditButton="True" ShowHeader="True" />
                        <asp:CommandField HeaderText="删除" ShowDeleteButton="True" ShowHeader="True" />
                        <asp:ButtonField ButtonType="Button" CommandName="Note_Operation" HeaderText="提示" ShowHeader="True" Text="操作提示" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
    </form>
</body>
</html>


<%@ Page Title="" Language="C#" MasterPageFile="~/UserPages/Admin/admin.Master" AutoEventWireup="true" CodeBehind="GroupManagement.aspx.cs" Inherits="DictionaryWeb.UserPages.Admin.UserManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 500px;
    }
        .auto-style2 {
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
            width: 67px;
        }
        .auto-style7 {
            width: 67px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style1">
    <tr>
        <td class="auto-style6" style="font-weight: bold">Grup Adı</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox1" runat="server" Width="187px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td>
            <asp:Button ID="btn_ekle" runat="server" OnClick="btn_ekle_Click" style="height: 26px" Text="Ekle" />
            <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
    <table align="center" >
        <asp:Repeater ID="repeaterGroup" runat="server">
            <ItemTemplate>
                <tr style="vertical-align:central">
            <td style="width:5"><%#Eval("UserGroupName") %></td>
            <td style="width:10%"><a href="GroupUpdate.aspx?Id=<%#Eval("GroupId") %>"><img alt=""  border="0"  style="vertical-align:middle" src="../Images/edit-icon.png" /></a></td>
            <td style="width:50%"><a href="GroupManagement.aspx?Id=<%#Eval("GroupId")%>&islem=sil "><img border="0" alt=""    src="../Images/Delete-icon.png" style="vertical-align:middle"  /></a></td>
        </tr>
            </ItemTemplate>
        </asp:Repeater>
        
    </table>
</asp:Content>

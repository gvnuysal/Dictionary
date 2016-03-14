<%@ Page Title="" Language="C#" MasterPageFile="~/UserPages/Admin/admin.Master" AutoEventWireup="true" CodeBehind="GroupUpdate.aspx.cs" Inherits="DictionaryWeb.UserPages.Admin.GroupUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style1">
        <tr>
            <td>Grup İsmi</td>
            <td>
                <asp:TextBox ID="groupNameTxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Güncelle" />
            </td>
        </tr>
    </table>
</asp:Content>

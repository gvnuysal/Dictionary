<%@ Page Title="" Language="C#" MasterPageFile="~/UserPages/Admin/admin.Master" AutoEventWireup="true" CodeBehind="AdminManagement.aspx.cs" Inherits="DictionaryWeb.UserPages.Admin.AdminManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style1" style="width: 698px">
        <tr>
            <td colspan="3">
                <table align="left" class="auto-style2">
                    <tr>
                        <td>Kullanıcı Adı</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="userSearchTxt" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3">
                            <asp:Button ID="btnSearch" runat="server" Text="Ara" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnFindAdmin" runat="server" OnClick="btnFindAdmin_Click" Text="Yöneticiler" />
            </td>
            <td>
                <asp:Button ID="btnFindUser" runat="server" Text="Kullanıcılar" OnClick="btnFindUser_Click" />
            </td>
            <td>
                <asp:Button ID="btnFindLast20" runat="server" Text="Son 20 Kullanıcı" OnClick="btnFindLast20_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3" style="vertical-align:top;text-align:left">
                <br />
                <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="3" style="vertical-align:top;text-align:left">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

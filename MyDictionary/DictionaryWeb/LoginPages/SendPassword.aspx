<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendPassword.aspx.cs" Inherits="DictionaryWeb.LoginPages.SendPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dictionary | RememberPass</title>
    <style type="text/css">
        .auto-style1 {
            width: 43%;
            margin-left: 391px;
            margin-top: 169px;
        }
        .auto-style2 {
            width: 152px;
        }
        .auto-style3 {
            width: 242px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr style="vertical-align:top">
                <td class="auto-style2">Kullanıcı Adı</td>
                <td class="auto-style3">
                    <asp:TextBox ID="userNameTxt" runat="server" Width="230px"></asp:TextBox>
                </td>
                <td rowspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">İsim</td>
                <td class="auto-style3">
                    <asp:TextBox ID="nameTxt" runat="server" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Şifreniz</td>
                <td class="auto-style3">
                    <asp:Label ID="passwordLabel" runat="server" Font-Bold="True" Font-Size="15pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="GetPasswordButton" runat="server" Text="Şifre Ver" Width="145px" OnClick="GetPasswordButton_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginPages/Login.aspx">Login Sayfası</asp:HyperLink>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

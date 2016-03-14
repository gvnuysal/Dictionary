<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs"  Inherits="DictionaryWeb.LoginPages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dictionary | LoginPages</title>
   
  
    <style type="text/css">
        .auto-style1 {
            width: 589px;
        }
        .auto-style2 {
            width: 175px;
        }
        .auto-style3 {
            width: 510px;
        }
    </style>
   
  
</head>
<body">
    <form id="form1" runat="server">
    
    <div  style="vertical-align:middle; width: 607px; margin-left: 334px; margin-top: 134px; height: 199px;" height: 234px;"> 
        <fieldset title="Dictionary">
        <table class="auto-style1" style="vertical-align:central; margin-left: 0px; height: 149px; margin-top: 50px;">
            <tr style="vertical-align:top">
                <td class="auto-style2">Kullanıcı Adı :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="userNameTxt" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style1" rowspan="5">
            <img src="Images/dic.jpg" style="width: 162px" /></td>
            </tr>
            <tr>
                <td class="auto-style2">Şifre&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style3">
                    <asp:TextBox ID="passwordTxt" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="EnterSystem" runat="server" Text="Sisteme Giriş" OnClick="EnterSystem_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style3">
                    <asp:Label ID="warningLabel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" Orientation="Horizontal" StaticSubMenuIndent="10px">
                        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#FFFBD6" />
                        <DynamicSelectedStyle BackColor="#FFCC66" />
                        <Items>
                            <asp:MenuItem Text="Şifremi Unuttum" Value="Şifremi Unuttum" NavigateUrl="~/LoginPages/SendPassword.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Kayıt Olmak İstiyorum" Value="Kayıt Olmak İstiyorum" NavigateUrl="~/LoginPages/Register.aspx"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#FFCC66" />
                    </asp:Menu>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
        </table>
    </fieldset>
    </div>
    </form>
    </body>
</html>

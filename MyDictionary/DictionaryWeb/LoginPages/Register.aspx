<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="DictionaryWeb.LoginPages.Register" %>

<!DOCTYPE html>

<html data-ng-app="">
<head runat="server">
    <script src="../Script/angular.min.js"></script>
    <title>Dictionary | RegisterPages</title>
    <style type="text/css">
        .auto-style1 {
            width: 64%;
            margin-left: 92px;
            margin-top: 0px;
        }

        .auto-style3 {
            width: 478px;
            height: 56px;
        }
    </style>
</head>
<body>

    <div style="width: 642px; margin-left: 325px; margin-top: 0px">

        <form id="form1" runat="server">

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">
                        <img alt="" class="auto-style3" src="Images/SAVE_sign_-_891__81716.1405334884.1280.1280.jpg" /></td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Kullanıcı Adı</td>
                    <td>
                        <asp:TextBox ID="userNameTxt" runat="server" Width="201px" ng-model="userName"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Şifre</td>
                    <td>
                        <asp:TextBox ID="passwordTxt" runat="server" Width="201px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">İsim</td>
                    <td>
                        <asp:TextBox ID="nameTxt" runat="server" ng-model="name" Width="201px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Soyisim</td>
                    <td>
                        <asp:TextBox ID="surnameTxt" runat="server" ng-model="surname" Width="201px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Gender</td>
                    <td>
                        <asp:DropDownList ID="gender" runat="server">
                            <asp:ListItem>Bay</asp:ListItem>
                            <asp:ListItem>Bayan</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Kaydet" Style="height: 26px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="warningLabel" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="backLogin" runat="server" NavigateUrl="~/LoginPages/Login.aspx">Login Sayfası</asp:HyperLink>
                    </td>
                </tr>
            </table>

        </form>

    </div>

    <div style="height: 70px; margin-left: 417px; margin-top: 0px; width: 226px;" >
        Kullanıcı Adı&nbsp; :{{userName}}<br />
        İsim&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :{{name}}<br />
        Soyisim&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :{{surname}}

       
    </div>  
    
    </body>
</html>

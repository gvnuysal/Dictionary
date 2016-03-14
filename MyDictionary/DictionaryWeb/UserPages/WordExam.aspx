<%@ Page Title="Dictionary | Word Exam" Language="C#" MasterPageFile="~/UserPages/Site.Master" AutoEventWireup="true" CodeBehind="WordExam.aspx.cs" Inherits="DictionaryWeb.UserPages.WordExam" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <br />
    <fieldset>
    <table class="auto-style4">
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="True" Font-Size="20pt" Font-Underline="True" Text=" KELİME ÇEVİRME"></asp:Label>
            
            </td>
        </tr>
    </table>
    <br />
            <table class="auto-style4" style="width: 65%; margin-left: 114px;" >
                <tr>
                    <td style="width: 131px">Tercih</td>
                    <td _ style="width: 318px">
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="a" Text="Kendi Kelimelerim" Checked="True" OnCheckedChanged="RadioButton1_CheckedChanged" />
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" Text="Tüm Kelimeler" OnCheckedChanged="RadioButton2_CheckedChanged" />
                    </td>
                    <td _ rowspan="6" style="vertical-align:top">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 131px">İngilizce Kelime</td>
                    <td _ style="width: 318px">
                        <asp:Label ID="engWordLabel" runat="server" BorderStyle="Double" Font-Bold="True" ForeColor="#0099CC"></asp:Label>
                        </td>
                </tr>
                <tr >
                    <td style="width: 131px" >Kelime Türü</td>
                    <td style="width: 318px" >
                        <asp:Label ID="wordKindLabel" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 131px" >Türkçe Karşılığı</td>
                    <td style="width: 318px" >
                        <asp:TextBox ID="turkishMeanTxt" runat="server" Width="169px"></asp:TextBox>
                        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Visible="False" Width="115px"></asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr >
                    <td style="width: 131px">&nbsp;</td>
                    <td style="width: 318px" >
                        <asp:Button ID="GetWordBtn" runat="server" OnClick="GetWordBtn_Click" Text="Kelime Getir" />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Karşılaştır" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 131px" >&nbsp;</td>
                    <td style="width: 318px" >
                        <asp:Label ID="warningLabel" runat="server" Font-Bold="True" Font-Size="14pt"></asp:Label>
                    </td>
                </tr>
            </table>
       <h2 style="margin-left: 0px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<u>SCORE</u> </h2>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:Label ID="score" runat="server" Font-Bold="True" Font-Size="72pt" ForeColor="#3333FF"></asp:Label>
          
    <br /></fieldset>
</asp:Content>
    
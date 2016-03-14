<%@ Page Title="Dictionary | SaveWord" Language="C#" MasterPageFile="~/UserPages/Site.Master" AutoEventWireup="true" CodeBehind="SaveWordInfo.aspx.cs" Inherits="DictionaryWeb.Pages.SaveWorInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server" >
    <br />
<table style="width: 75%">
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="True" Font-Size="20pt" Font-Underline="True" Text="KELİME KAYDET"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <table class="auto-style1" style="margin-left: 168px">
        <tr>
            <td style="width: 114px; height: 23px">İngilizce Kelime</td>
            <td style="height: 23px; width: 213px;">
                <asp:TextBox ID="wordEngTxt" runat="server" Width="205px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 23px; width: 114px">Türkçe Karşılığı</td>
            <td style="height: 23px; width: 213px;">
                <asp:TextBox ID="wordTurkishTxt" runat="server" Width="205px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 114px">Kelime Türü</td>
            <td style="width: 213px">
                <asp:DropDownList ID="wordKind" runat="server">
                    <asp:ListItem>Noun</asp:ListItem>
                    <asp:ListItem>Verb</asp:ListItem>
                    <asp:ListItem>Adjective</asp:ListItem>
                    <asp:ListItem>Adverb</asp:ListItem>
                </asp:DropDownList>
&nbsp;
                <asp:Button ID="SaveButton" runat="server" Text="KAYDET" Width="106px" OnClick="SaveButton_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 114px">&nbsp;</td>
            <td style="width: 213px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 114px">&nbsp;</td>
            <td style="width: 213px">
                <asp:Label ID="warningLabel" runat="server"></asp:Label>
                </td>
        </tr>
    </table>
    <hr />

    &nbsp;<div style="width: 357px; margin-left: 178px">
        <asp:GridView    ID="myWordList" runat="server"  AutoGenerateColumns="False" ToolTip="Kayıtlı Kelimeler Listesi"
         CellPadding="3" DataSourceID="ObjectDataSource1" AllowPaging="True"  
        OnRowDataBound="myWordList_RowDataBound" OnRowEditing="myWordList_RowEditing" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" PageSize="5" AllowSorting="True" EnableSortingAndPagingCallbacks="True">
        <AlternatingRowStyle BackColor="Gainsboro" />
        <Columns >
            <asp:CommandField ButtonType="Image" CancelImageUrl="~/UserPages/Images/cancel.png"  CancelText="İptal" DeleteImageUrl="~/UserPages/Images/Delete-icon.png" DeleteText="Sil" EditImageUrl="~/UserPages/Images/edit-icon.png" EditText="Düzenle" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="~/UserPages/Images/update.png" UpdateText="Güncelle" />
            <asp:BoundField DataField="EngWord" HeaderText="İngilizce" SortExpression="EngWord"  />
            <asp:BoundField DataField="TurkishWord" HeaderText="Türkçe" SortExpression="TurkishWord" />
            <asp:BoundField DataField="WordKind" HeaderText="Kelime Türü" SortExpression="WordKind" />
        </Columns>

        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />

    </asp:GridView>
          </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetWords" TypeName="DictionaryWeb.DataClass.WordRepository">
        <SelectParameters>
            <asp:CookieParameter CookieName="Id" DefaultValue="0" Name="id" Type="Int32" />
        </SelectParameters>
</asp:ObjectDataSource>
</asp:Content>

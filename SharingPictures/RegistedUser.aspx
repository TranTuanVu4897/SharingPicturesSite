<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistedUser.aspx.cs" Inherits="SharingPictures.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 478px;
        }
        .auto-style2 {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:ImageButton ID="btnHomePage" runat="server" Height="50px" ImageUrl="~/img/icon/home.png" Width="50px" />
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:ImageButton ID="btnUpload" runat="server" Height="50px" ImageUrl="~/img/icon/upload.png" Width="50px" />
                </td>
            </tr>
            </table>
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2">
                    <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/img/icon/user.png" />
                </td>
                <td class="auto-style2">
                    <asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal">
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" Width="100px" />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>

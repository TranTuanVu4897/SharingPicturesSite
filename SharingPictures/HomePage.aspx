<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="SharingPictures.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 478px;
        }
        .auto-style2 {
            width: 194px;
        }
        .auto-style3 {
            width: 28px;
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
                    <asp:Button ID="btnLogin" runat="server" Text="Login" Width="72px" />
                    <asp:Button ID="btnRegister" runat="server" Text="Register" />
                    <asp:ImageButton ID="btnUser" runat="server" Height="50px" ImageUrl="~/img/icon/user.png" Width="50px" OnClick="btnUser_Click" />
                    <asp:ImageButton ID="btnUpload" runat="server" Height="50px" ImageUrl="~/img/icon/upload.png" Width="50px" />
                </td>
            </tr>
            </table>
    
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    <asp:ImageButton ID="btnTop" runat="server" Height="30px" ImageUrl="~/img/icon/top.png" />
                </td>
                <td class="auto-style2">
                    <asp:ImageButton ID="btnNew" runat="server" Height="30px" ImageUrl="~/img/icon/new.png" />
                </td>
                <td>
                    <asp:ImageButton ID="btnSearch" runat="server" Height="30px" ImageUrl="~/img/icon/search.png" />
&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtSearch" runat="server" Height="30px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:ImageButton ID="ImageButton1" runat="server" Height="150px" Width="150px" />
                <table style="width:100%;">
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="20px" ImageUrl="~/img/icon/like.png" Width="20px" />
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/img/icon/dislike.png" />
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/img/icon/love.png" />
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    
    </div>
    </form>
</body>
</html>

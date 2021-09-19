<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GDisp.aspx.cs" Inherits="bibliotheca.GDisp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 255px;
        }
        .auto-style4 {
            height: 23px;
            width: 240px;
        }
        .auto-style5 {
            width: 240px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" rowspan="12">
                    <asp:Image ID="Image1" runat="server" Height="225px" ImageUrl="egbc.jpg" Width="196px" />
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style5"> <asp:Label ID="Label1" runat="server" Text="htd"></asp:Label></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Author</td>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="htd"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">ISBN</td>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="5645"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Publisher</td>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="dutd"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Pages</td>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="654"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Year Published</td>
                <td>
                    <asp:Label ID="Label17" runat="server" Text="2019"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Format</td>
                <td>
                    <asp:Label ID="Label18" runat="server" Text="Paperback"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Original Price</td>
                <td class="auto-style2">
                    <asp:Label ID="Label19" runat="server" Text="325"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Selling Price</td>
                <td>
                    <asp:Label ID="Label20" runat="server" Text="300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Exam Name</td>
                <td>
                    <asp:Label ID="Label21" runat="server" Text="CLAT"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Condition</td>
                <td>
                    <asp:Label ID="Label22" runat="server" Text="Like-New"></asp:Label>
                </td>
            </tr>
        </table>
        <div>
            <br />
            <asp:Button ID="btnContact" runat="server" Text="Contact Seller" />
        </div>
    </form>
</body>
</html>

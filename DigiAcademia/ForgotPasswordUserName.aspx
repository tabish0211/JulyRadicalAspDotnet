<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPasswordUserName.aspx.cs" Inherits="DigiAcademia.ForgotPasswordUserName" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">User name</td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="auto-style2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email Id</td>
                <td>
                    <asp:TextBox ID="txtEmailId" runat="server" CssClass="auto-style2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnVerify" runat="server" BackColor="#0099FF" ForeColor="White" style="font-size: xx-large" Text="Verify" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

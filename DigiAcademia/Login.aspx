<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DigiAcademia.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 313px;
            background-color: #3399FF;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <br /><br /><br /><br /><br />
        <div>

            <table align="center" class="auto-style2">
                <tr>
                    <td class="auto-style3">User name</td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server" style="font-size: xx-large"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Password</td>
                    <td style="font-size: xx-large">
                        <asp:TextBox ID="txtPassword" runat="server" style="font-size: xx-large" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" BackColor="#0099FF" ForeColor="White" style="font-size: xx-large" Text="Login" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="linkForgot" runat="server" style="font-size: xx-large">Forgot Password?</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="linkNewUser" runat="server" PostBackUrl="~/SignUp.aspx" style="font-size: xx-large">New User?</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
        <div>
             <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OTP.aspx.cs" Inherits="DigiAcademia.OTP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>Enter OTP</td>
                <td>
                    <asp:TextBox ID="txtOTP" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnVerify" runat="server" OnClick="btnVerify_Click" Text="Verify" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblError" runat="server" ForeColor="#FF3300" Text="Invalid OTP" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblNewPswd" runat="server" Text="New Password" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNewPswd" runat="server" TextMode="Password" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblConfPswd" runat="server" Text="Confirm Password" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtConfPswd" runat="server" TextMode="Password" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnChangePswd" runat="server" Text="Save" Visible="False" OnClick="btnChangePswd_Click" />
                </td>
                <td>
                    <asp:Label ID="lblSuccessMessage" runat="server" ForeColor="Lime" Text="Password changes Successfully" Visible="False"></asp:Label>
&nbsp;<asp:LinkButton ID="btnGoLogin" runat="server" OnClick="btnGoLogin_Click" Visible="False">Go To Login</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>

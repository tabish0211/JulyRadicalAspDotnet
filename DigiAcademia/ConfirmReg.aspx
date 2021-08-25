<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmReg.aspx.cs" Inherits="DigiAcademia.ConfirmReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
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
                <td style="font-size: xx-large">User name</td>
                <td>
                    <asp:Label ID="lblUName" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">First name</td>
                <td>
                    <asp:Label ID="lblFname" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Last Name</td>
                <td>
                    <asp:Label ID="lblLName" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Gender</td>
                <td>
                    <asp:Label ID="lblGender" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Subjects</td>
                <td>
                    <asp:Label ID="lblSubjects" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Email</td>
                <td>
                    <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Mobile Number</td>
                <td>
                    <asp:Label ID="lblMobileNo" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Profile Pic</td>
                <td>
                    <asp:Image ID="imgProfile" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                   
                    <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" style="font-size: xx-large" Text="Back" />
                   
                </td>
                <td>
                    <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" style="font-size: xx-large" Text="Confirm" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

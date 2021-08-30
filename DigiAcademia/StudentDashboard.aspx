<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDashboard.aspx.cs" Inherits="DigiAcademia.StudentDashboard" %>

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
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:LinkButton ID="btnEdit" runat="server" OnClick="btnEdit_Click">Edit</asp:LinkButton>
                </td>
                <td style="margin-left: 40px">
                    <asp:LinkButton ID="btnChangePassword" runat="server">Change Password</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="btnFee" runat="server">Fee</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="btnLogut" runat="server">Logout</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

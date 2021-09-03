<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="DigiAcademia.AdminDashboard" %>

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
                    <asp:LinkButton ID="btnAllStudents" runat="server" PostBackUrl="~/AllStudents.aspx">All Students</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="btnSyllabus" runat="server" PostBackUrl="~/Upload Syllabus.aspx">Upload Syllabus</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="btnCertificate" runat="server" PostBackUrl="~/UploadCertificates.aspx">Uplaod Certificate</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="btnSearch" runat="server" PostBackUrl="~/SearchStudents.aspx">Search Student</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="btnTeacher" runat="server" PostBackUrl="~/AssignTeacher.aspx">Assign Teacher</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="btnFee" runat="server" PostBackUrl="~/AddFee.aspx">Add Fee</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="btnNotification" runat="server" PostBackUrl="~/Notification.aspx">Notification</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="btnEnquiry" runat="server" PostBackUrl="~/ViewEnquiry.aspx">View Enquiry</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

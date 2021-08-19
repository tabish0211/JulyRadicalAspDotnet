<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Controls.aspx.cs" Inherits="DigiAcademia.Controls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Controls Demo</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #CCFF66;
        }
        .auto-style2 {
            width: 100%;
        }
    </style>
</head>
<body style="height: 285px">
    <form id="form1" runat="server">
    <div>
    <h1>Welcome to ASP.net Web Form</h1>
        <p>&nbsp;</p>
    </div>
        <div>
            <table>
                <tr>
                    <td>ID</td>
                    <td>Name</td>
                </tr>
                <tr>
                    <td>1001</td>
                    <td>Rahul</td>
                </tr>
            </table>
        </div>
        <div>

            <table class="auto-style1">
                <tr>
                    <td>ID</td>
                    <td>Name</td>
                </tr>
                <tr>
                    <td>1001</td>
                    <td>Rahul</td>
                </tr>
            </table>

        </div>

        <div>

            <asp:Button ID="btnClick" runat="server" BackColor="#3399FF" ForeColor="Black" Height="60px" Text="Click Me" Width="275px" OnClick="btnClick_Click" />
            <br />

        </div>

        <div>

            <asp:Label ID="lblName" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#339933" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblNameVal" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblNewVal" runat="server" Text="No value waiting for val"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnNext" runat="server" OnClick="btnNext_Click" Text="NextClick" />
            <br />
            <br />
            <br />
            <asp:Label ID="lblConcat" runat="server" Text="Concateneted value will appear here when you clcik below button"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Button ID="btnConCatResult" runat="server" OnClick="btnConCatResult_Click" Text="Click concat Result" />
            <br />
            <br />
            <asp:Button ID="btnShow" runat="server" OnClick="btnShow_Click" Text="Show the value" />
            <asp:Button ID="btnHide" runat="server" OnClick="btnHide_Click" Text="Hide the value" />
            <br />
            <asp:Label ID="lblToggle" runat="server" Text="Show/Hide text" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtCopyName" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnTextSender" runat="server" OnClick="btnTextSender_Click" Text="Sendval" />
            <br />
            <br />
            <br />
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
&nbsp;
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblPasswordval" runat="server"></asp:Label>
            <br />
            Address&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAddress" runat="server" Height="102px" TextMode="MultiLine" Width="202px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="txtPasswordLenthRestrict" runat="server" MaxLength="5"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />
            <br />
            <br />
            <table class="auto-style2">
                <tr>
                    <td>Emp Id</td>
                    <td>
                        <asp:TextBox ID="txtEmpId" runat="server" Enabled="False" ReadOnly="True">1001</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="txtname_" runat="server">Rahul</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Desg</td>
                    <td>
                        <asp:TextBox ID="txtDesg" runat="server" ToolTip="Here you can give your designation">Programmer</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnEdit" runat="server" Text="Edit" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Label ID="lblInputval" runat="server" Text="Input here"></asp:Label>
            <br />
            <asp:TextBox ID="txtInputFirst" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtInputSecond" runat="server"></asp:TextBox>
            <asp:Button ID="btnSwap" runat="server" OnClick="btnSwap_Click" Text="Swap" />
            <br />
            <br />
            <asp:Label ID="lbloutputval" runat="server" Text="Output"></asp:Label>
            <br />
            <asp:TextBox ID="txtOutputFirst" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtOutputSecond" runat="server"></asp:TextBox>

        </div>

    </form>
</body>
</html>

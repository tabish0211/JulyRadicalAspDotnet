<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddFee.aspx.cs" Inherits="DigiAcademia.AddFee" %>

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
                <td>Select username</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="uname" DataValueField="uname">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:imsdbConnectionString2 %>" SelectCommand="SELECT [uname] FROM [studentprofile]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Fee</td>
                <td>3000</td>
            </tr>
            <tr>
                <td>Paid</td>
                <td>
                    <asp:TextBox ID="txtFee" runat="server" AutoPostBack="True" OnTextChanged="txtFee_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Balance</td>
                <td>
                    <asp:TextBox ID="txtBalance" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnFee" runat="server" OnClick="btnFee_Click" Text="Save" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="fid" HeaderText="fid" InsertVisible="False" ReadOnly="True" SortExpression="fid" />
                    <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
                    <asp:BoundField DataField="fee" HeaderText="fee" SortExpression="fee" />
                    <asp:BoundField DataField="paid" HeaderText="paid" SortExpression="paid" />
                    <asp:BoundField DataField="balance" HeaderText="balance" SortExpression="balance" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:imsdbConnectionString %>" SelectCommand="SELECT * FROM [feeTbl]"></asp:SqlDataSource>

        </div>
    </form>
</body>
</html>

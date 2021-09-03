<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Notification.aspx.cs" Inherits="DigiAcademia.Notification" %>

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
                    <td>Subject</td>
                    <td>
                        <asp:TextBox ID="txtSub" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td>
                        <asp:TextBox ID="txtDescription" runat="server" Height="177px" TextMode="MultiLine" Width="241px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
        <div>


            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="nid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="274px" Width="571px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="nid" HeaderText="nid" InsertVisible="False" ReadOnly="True" SortExpression="nid" />
                    <asp:BoundField DataField="sub" HeaderText="sub" SortExpression="sub" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:imsdbConnectionString %>" DeleteCommand="DELETE FROM [notification] WHERE [nid] = @nid" InsertCommand="INSERT INTO [notification] ([sub], [Description]) VALUES (@sub, @Description)" SelectCommand="SELECT * FROM [notification]" UpdateCommand="UPDATE [notification] SET [sub] = @sub, [Description] = @Description WHERE [nid] = @nid">
                <DeleteParameters>
                    <asp:Parameter Name="nid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="sub" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="sub" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="nid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>


        </div>
    </form>
</body>
</html>

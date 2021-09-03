<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssignTeacher.aspx.cs" Inherits="DigiAcademia.AssignTeacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="uname" DataValueField="uname">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:imsdbConnectionString2 %>" SelectCommand="SELECT [uname] FROM [studentprofile]"></asp:SqlDataSource>
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>John</asp:ListItem>
            <asp:ListItem>Azhar</asp:ListItem>
            <asp:ListItem>Rakesh</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="mid" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="mid" HeaderText="mid" InsertVisible="False" ReadOnly="True" SortExpression="mid" />
                <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
                <asp:BoundField DataField="tname" HeaderText="tname" SortExpression="tname" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:imsdbConnectionString %>" DeleteCommand="DELETE FROM [userteacher] WHERE [mid] = @mid" InsertCommand="INSERT INTO [userteacher] ([uname], [tname]) VALUES (@uname, @tname)" SelectCommand="SELECT * FROM [userteacher]" UpdateCommand="UPDATE [userteacher] SET [uname] = @uname, [tname] = @tname WHERE [mid] = @mid">
            <DeleteParameters>
                <asp:Parameter Name="mid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="uname" Type="String" />
                <asp:Parameter Name="tname" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="uname" Type="String" />
                <asp:Parameter Name="tname" Type="String" />
                <asp:Parameter Name="mid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>

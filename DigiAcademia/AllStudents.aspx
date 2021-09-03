<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllStudents.aspx.cs" Inherits="DigiAcademia.AllStudents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="uname" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="510px" Width="694px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="uname" HeaderText="User name" ReadOnly="True" SortExpression="uname" />
                <asp:BoundField DataField="fname" HeaderText="First name" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="last name" SortExpression="lname" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="mobilno" HeaderText="mobilno" SortExpression="mobilno" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="subjects" HeaderText="subjects" SortExpression="subjects" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:imsdbConnectionString2 %>" DeleteCommand="DELETE FROM [studentprofile] WHERE [uname] = @uname" InsertCommand="INSERT INTO [studentprofile] ([uname], [fname], [lname], [email], [mobilno], [gender], [subjects]) VALUES (@uname, @fname, @lname, @email, @mobilno, @gender, @subjects)" SelectCommand="SELECT [uname], [fname], [lname], [email], [mobilno], [gender], [subjects] FROM [studentprofile] ORDER BY [uname]" UpdateCommand="UPDATE [studentprofile] SET [fname] = @fname, [lname] = @lname, [email] = @email, [mobilno] = @mobilno, [gender] = @gender, [subjects] = @subjects WHERE [uname] = @uname">
            <DeleteParameters>
                <asp:Parameter Name="uname" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="uname" Type="String" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="mobilno" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="subjects" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="mobilno" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="subjects" Type="String" />
                <asp:Parameter Name="uname" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>

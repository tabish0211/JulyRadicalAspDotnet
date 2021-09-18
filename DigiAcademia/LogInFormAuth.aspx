<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInFormAuth.aspx.cs" Inherits="DigiAcademia.LogInFormAuth" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        User Name
        <asp:TextBox ID="txtUserid" runat="server"></asp:TextBox>
&nbsp;Password
        <asp:TextBox ID="txtPasswrd" runat="server"></asp:TextBox>
        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
        <br />
        <asp:Label ID="Msg" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>

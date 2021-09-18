<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FielHandlingConceptaspx.aspx.cs" Inherits="DigiAcademia.FielHandlingConceptaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="WriteFile" style="height: 26px" />
    
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="ReadFile" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="AppendTextToFIle" />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="CheckFileExist" />
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="CopyFile" />
        <asp:Button ID="Button6" runat="server" Height="26px" OnClick="Button6_Click" Text="MoveFile" />
        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="DeleteFile" />
        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="FileStreamWriter" />
    
    </div>
    </form>
</body>
</html>

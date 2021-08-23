<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Control-2.aspx.cs" Inherits="DigiAcademia.Control_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: xx-large">
    
        <asp:CheckBoxList ID="chkSkills" runat="server">
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
            <asp:ListItem>PHP</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:CheckBoxList ID="chkSkillsreplica" runat="server">
        </asp:CheckBoxList>
        <br />
        <br />
        <asp:Label ID="lblSkills" runat="server"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="ddCity" runat="server">
            <asp:ListItem>--Select City---</asp:ListItem>
            <asp:ListItem>Pune</asp:ListItem>
            <asp:ListItem>Mumbai</asp:ListItem>
            <asp:ListItem>Nagpur</asp:ListItem>
            <asp:ListItem>Delhi</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="btnDropDownShow" runat="server" OnClick="btnDropDownShow_Click" Text="Clcik to show city" />
        <br />
        <asp:Label ID="lblCity" runat="server"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="ddDay" runat="server">
        </asp:DropDownList>
        <asp:DropDownList ID="ddMM" runat="server">
        </asp:DropDownList>
        <asp:DropDownList ID="ddYY" runat="server">
        </asp:DropDownList>
        <br />
        <asp:Button ID="btnDate" runat="server" OnClick="btnDate_Click" Text="Show Data" />
        <br />
        <asp:Label ID="lblDate" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnShow" runat="server" OnClick="btnShow_Click" Text="Show" />
        <br />
        <asp:ImageButton ID="btnHome" runat="server" Height="169px" ImageUrl="~/images/Home.png" OnClick="btnHome_Click" Width="212px" />
        <br />
        <br />
        <asp:ListBox ID="lstHobbies" runat="server" Height="61px" SelectionMode="Multiple">
            <asp:ListItem>--Select Hobbies--</asp:ListItem>
            <asp:ListItem>Music</asp:ListItem>
            <asp:ListItem>Teaching</asp:ListItem>
            <asp:ListItem>Reading</asp:ListItem>
            <asp:ListItem>Dance</asp:ListItem>
            <asp:ListItem>Politics</asp:ListItem>
        </asp:ListBox>
        <br />
        <br />
        <asp:Label ID="lblHobbies" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="btnShowHobbies" runat="server" OnClick="btnShowHobbies_Click" Text="Show Hobbies" />
        <br />
        <br />
        <asp:RadioButtonList ID="rdbGender" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="lblGender" runat="server"></asp:Label>
        <br />
        <asp:Button ID="btnGender" runat="server" OnClick="btnGender_Click" Text="show selected gender" />
        <br />
        <br />
        <asp:RadioButtonList ID="rdbCity" runat="server">
        </asp:RadioButtonList>
        <asp:Label ID="lblrdbCity" runat="server"></asp:Label>
        <br />
        <asp:Button ID="btnRdbCity" runat="server" OnClick="btnRdbCity_Click" Text="Show City" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/sample.png" />
        <br />
        <br />
        <br />
        <asp:Image ID="imgBackground" runat="server" />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>

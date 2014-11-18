<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BackOffice.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <h1>
        <asp:Image ID="Image1" runat="server" Height="104px" Width="933px" style="background-color:darkgreen" />
        </h1>
        <h1>Tailgating Made Easy</h1>
    
    </div>
        <p>
            &nbsp;</p>
        <h2>Back Office</h2>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View Transactions" />
        </p>
    </form>
</body>
</html>

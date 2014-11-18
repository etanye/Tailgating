<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>
        <asp:Image ID="Image1" runat="server" Height="104px" Width="1314px" style="background-color:darkgreen" />
        </h1>
        <h1>&nbsp; Tailgating Made Easy</h1>
        <p>&nbsp;</p>
        <h2>&nbsp; Login</h2>
    </div>
        <br />
        &nbsp;&nbsp; Enter Your Username<br />
&nbsp;&nbsp;
        <asp:TextBox ID="UsernameTxt" runat="server" Width="192px" OnTextChanged="UsernameTxt_TextChanged"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp; Enter Your Password<br />
&nbsp;&nbsp;
        <asp:TextBox ID="PasswordTxt" runat="server" Width="191px" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PasswordTxt" ErrorMessage="Invalid Password" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="PasswordTxt" ErrorMessage="Password must be 8-10 characters long with atleast one numeric character." ForeColor="Red" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$"></asp:RegularExpressionValidator>
        <br />
&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />
        <br />
&nbsp;&nbsp;
        <asp:Button ID="LoginSubmit" runat="server" Text="Submit" OnClick="LoginSubmit_Click" />
        <br />
    </form>
</body>
</html>

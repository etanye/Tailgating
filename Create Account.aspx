<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Create Account.aspx.cs" Inherits="CreateAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>
        <asp:Image ID="Image1" runat="server" Height="104px" Width="1308px" style="background-color:darkgreen" />
        </h1>
        <h1>Tailgating Made Easy&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="HomeButton" runat="server" PostBackUrl="~/Home Page.aspx" Text="HOME" Width="83px" />
        </h1>
        <br />
    <h2>Create New Customer Account</h2>
        <p>
            <asp:Label ID="ConfirmSubmit" runat="server" ForeColor="Red"></asp:Label>
        </p>
        <p>&nbsp;</p>
        <p>
            <asp:Label ID="name" runat="server" Text="Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="cName" runat="server" style="margin-left: 54px" Width="203px" ></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Address" runat="server" Text="Street Address:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="cAddress" runat="server" Width="207px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="City" runat="server" Text="City:"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="cCity" runat="server" style="margin-left: 68px" Width="150px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="State" runat="server" Text="State:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="cState" runat="server" style="margin-left: 61px" Width="150px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Zipcode" runat="server" Text="Zipcode:"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="cZip" runat="server" style="margin-left: 43px" Width="150px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="cZip" ErrorMessage="Invalid Zip Code. Enter 5-digitZIP" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Label ID="Phone" runat="server" Text="Phone Number:"></asp:Label>
&nbsp;
&nbsp;
            <asp:TextBox ID="cPhone" runat="server" Width="150px" OnTextChanged="cPhone_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cPhone" ErrorMessage="Phone number is required" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label1" runat="server" Text="(xxx-xxx-xxxx)"></asp:Label>
        </p>
        <p>
            <asp:Label ID="email" runat="server" Text="Email: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="cEmail" runat="server" Width="164px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cEmail" ErrorMessage="Email address is required" ForeColor="Red">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="cEmail" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </p>
        <p>
            Card Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="cCard" runat="server" Width="164px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" />
        </p>
    </div>
    <p>
        &nbsp;</p>
    </form>
    </body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DebitAcct.aspx.cs" Inherits="DebitAcct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
     <h1>
        <asp:Image ID="Image1" runat="server" Height="104px" Width="1307px" style="background-color:darkgreen" />
        </h1>
        <h1>Tailgating Made Easy&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="HomeButton" runat="server" PostBackUrl="~/Home Page.aspx" Text="HOME" Width="97px" />
        </h1>

    <div>
    
        <br />
        <br />
        <strong><span class="auto-style1">Debit Account<br />
        </span></strong>
    
    </div>
        <p style="width: 966px">
            <span class="auto-style2">Card Number:</span>&nbsp;
            <asp:TextBox ID="CardNoTxt" runat="server"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        </p>
        <p style="width: 966px">
            <span class="auto-style2">Current Balance</span>:&nbsp;&nbsp;
            <asp:Label ID="CurrBalLabel" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="CurrBalButton" runat="server" Text="Current Balance" OnClick="CurrBalButton_Click" />
        </p>
        <p>
            <span class="auto-style2">Purchase Amount:</span>&nbsp;
            <asp:TextBox ID="AmtToDebTxt" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="ConfirmSubmit" runat="server" ForeColor="Blue"></asp:Label>
        </p>
        <p>
            <span class="auto-style2">Balance</span>:&nbsp;
            <asp:Label ID="BalanceLabel" runat="server"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <asp:Button ID="SubmitB" runat="server" Text="Submit" OnClick="SubmitB_Click" />
    
    </div>
    </form>
</body>
</html>

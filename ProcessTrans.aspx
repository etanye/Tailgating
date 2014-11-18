<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProcessTrans.aspx.cs" Inherits="ProcessTrans" %>

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

    <form id="form2" runat="server">
     <h1>
        <asp:Image ID="Image1" runat="server" Height="104px" Width="1067px" style="background-color:darkgreen" />
        </h1>
        <h1>Tailgating Made Easy</h1>

    <div>
    
        <br />
        <br />
        <strong><span class="auto-style1">Credit Account<br />
        </span></strong>
    
    </div>
        <p style="width: 966px">
            <span class="auto-style2">Card Number</span>:&nbsp;
            <asp:Label ID="CardNoLabel" runat="server"></asp:Label>
        </p>
        <p style="width: 966px">
            <span class="auto-style2">Current Balance</span>:&nbsp;&nbsp;
            <asp:Label ID="CurrBalLabel" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="CurrBalButton" runat="server" Text="Current Balance" />
        </p>
        <p>
            <span class="auto-style2">Amount to debit:</span>&nbsp;
            <asp:TextBox ID="AmtToAddTxt" runat="server"></asp:TextBox>
        </p>
        <p>
            <span class="auto-style2">Balance</span>:&nbsp;
            <asp:Label ID="BalanceLabel" runat="server"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <asp:Button ID="SubmitB" runat="server" Text="Submit" />
    </form>
   
</body>
</html>

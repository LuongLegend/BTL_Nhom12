<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GUI.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link type="text/css" rel="stylesheet" href="CSS/login.css"/>
</head>
<body >
    <form id="form1" runat="server" >
         <h1 style="text-align:center"> Admin Login</h1> 
        <div class="container"> 
            <label>Adminname : </label>
            <asp:TextBox ID="txtAdminName" runat="server" placeholder="Enter Adminname" required="required"></asp:TextBox>
            <label>Password : </label> 
            <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter Password" required="required" TextMode="Password" ></asp:TextBox>
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="button" OnClick="btnLogin_Click" />
        </div>
    </form>
</body>
</html>

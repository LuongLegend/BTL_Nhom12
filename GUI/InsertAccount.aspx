<%@ Page Title="Insert Account" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="InsertAccount.aspx.cs" Inherits="GUI.InsertAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

.auto-style3 {
    width: 120px;
}

.auto-style4 {
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
    width: 517px;
}
.auto-style5 {
    width: 337px;
}

    </style>
    <link type="text/css" rel="stylesheet" href="CSS/table.css"/>
      <link type="text/css" rel="stylesheet" href="CSS/LuongLegend.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div align="center">
    <table class="styled-table" >
        <tr class="active-row">
            <td class="auto-style3" >Admin ID</td>
            <td class="auto-style5" >
                <asp:TextBox ID="txtAdminID" runat="server" Width="329px" TabIndex="-1" required="required" class="" CssClass="form-control"></asp:TextBox>
                <asp:CustomValidator runat="server" id="cusCustom" controltovalidate="txtAdminID" onservervalidate="validateAdminId" errormessage="AdminID đã tồn tại" class="fa fa-warning" style="color:red"/>
            </td>
        </tr>
        <tr class="active-row">
            <td class="auto-style3">Admin name</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtAdminName" runat="server" TabIndex="1" Width="329px" required="required" CssClass="form-control"></asp:TextBox>
                <asp:CustomValidator runat="server" id="validName" controltovalidate="txtAdminName" onservervalidate="validateAdminName" errormessage="Admin name đã tồn tại" class="fa fa-warning" style="color:red"/>
            </td>
        </tr>
        <tr class="active-row">
            <td class="auto-style3">FullName</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtFullname" runat="server" TabIndex="2" Width="329px" required="required" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr class="active-row">
            <td class="auto-style3">Phone Number</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPhone" runat="server" TabIndex="3" Width="329px" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr class="active-row">
            <td class="auto-style3">Address</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtAddress" runat="server" TabIndex="4" Width="329px" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr class="active-row">
            <td class="auto-style3">Password</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPass" runat="server" TabIndex="5" Width="329px" required="required" minlength="6" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr class="active-row">
            <td class="auto-style3">Note</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtNote" runat="server" TabIndex="6" TextMode="MultiLine" Width="329px" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr class="active-row">
            <td class="auto-style3">role</td>
            <td class="auto-style5">
                <asp:DropDownList ID="roleList" runat="server" TabIndex="7" >
                    <asp:ListItem >admin</asp:ListItem>
                    <asp:ListItem Value="purchaser">Nhập hàng</asp:ListItem>
                    <asp:ListItem  Value="writer">Viết tin tức</asp:ListItem>
                    <asp:ListItem  Value="marketer">Liên hệ khách hàng</asp:ListItem>
                    <asp:ListItem  Value="approver">Duyệt đơn</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table>
        <asp:Button ID="Button1" runat="server" CssClass="myButton" Text="Thêm" OnClick="Button1_Click" />
           </div>
</asp:Content>

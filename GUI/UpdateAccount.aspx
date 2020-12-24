<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="UpdateAccount.aspx.cs" Inherits="GUI.UpdateAccount" %>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

        .auto-style6 {
            width: 177px;
        }
        .auto-style7 {
            width: 335px;
        }

    </style>
    <link type="text/css" rel="stylesheet" href="CSS/table.css"/>
      <link type="text/css" rel="stylesheet" href="CSS/LuongLegend.css"/>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div align="center">
    <table class="styled-table" >
        <tr class="active-row">
            <td class="auto-style6" >Admin ID</td>
            <td class="auto-style7" >
                <asp:TextBox ID="txtAdminID" runat="server" Width="329px" TabIndex="-1" required="required" class="" CssClass="form-control" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr class="active-row">
            <td class="auto-style6">Admin name</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtAdminName" runat="server" TabIndex="1" Width="329px" required="required" CssClass="form-control" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr class="active-row">
            <td class="auto-style6">FullName</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtFullname" runat="server" TabIndex="2" Width="329px" required="required" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr class="active-row">
            <td class="auto-style6">Phone Number</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtPhone" runat="server" TabIndex="3" Width="329px" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr class="active-row">
            <td class="auto-style6">Address</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtAddress" runat="server" TabIndex="4" Width="329px" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr class="active-row">
            <td class="auto-style6">Note</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtNote" runat="server" TabIndex="6" TextMode="MultiLine" Width="329px" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr class="active-row">
            <td class="auto-style6">role</td>
            <td class="auto-style7">
                <asp:DropDownList ID="roleList" runat="server" TabIndex="7" >
                    <asp:ListItem >admin</asp:ListItem>
                    <asp:ListItem Value="purchaser">Nhập hàng</asp:ListItem>
                    <asp:ListItem  Value="writer">Viết tin tức</asp:ListItem>
                    <asp:ListItem  Value="marketer">Liên hệ khách hàng</asp:ListItem>
                    <asp:ListItem  Value="approver">Duyệt đơn</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="active-row">
            <td class="auto-style6">Active</td>
            <td class="auto-style7">
                <asp:DropDownList ID="activeL" runat="server">
                    <asp:ListItem Value="1">true</asp:ListItem>
                    <asp:ListItem Value="0">false</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table>
        <asp:Button ID="Button1" runat="server" CssClass="myButton" Text="Sửa" OnClick="Button1_Click" />
           </div>
</asp:Content>

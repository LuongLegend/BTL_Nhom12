<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="UpdateBill.aspx.cs" Inherits="GUI.UpdateBill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 83%;
        }
        .auto-style2 {
            width: 235px;
        }
        .auto-style3 {
            width: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style1">
        <tr>
            <td class="auto-style2">ID</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtID" runat="server" Width="546px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Ten </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtTen" runat="server" Width="545px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">So dien thoai</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtSoDienThoai" runat="server" Width="544px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Dia chi</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtDiaChi" runat="server" Width="545px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Note</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtNote" runat="server" Width="544px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Phuong thuc thanh toan</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtPhuongThucThanhToan" runat="server" Width="545px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Trang thai</td>
            <td class="auto-style3">

                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>pending</asp:ListItem>
                    <asp:ListItem>approved</asp:ListItem>
                    <asp:ListItem>cancel</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
    </table>

    <asp:Button ID="btnCapNhat" runat="server" Text="Cap Nhat" Width="169px" OnClick="btnCapNhat_Click" BackColor="#99FF66"  />

</asp:Content>

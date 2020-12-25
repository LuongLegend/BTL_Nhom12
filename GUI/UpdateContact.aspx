<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="UpdateContact.aspx.cs" Inherits="GUI.UpdateContact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 171px;
        }
        .auto-style3 {
            margin-bottom: 0;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Contact_ID</td>
            <td>
                <asp:TextBox ID="txtID" runat="server" Width="385px" CssClass="auto-style3" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-weight: bold">Tên khách hàng</td>
            <td>
                <asp:TextBox ID="txtTen" runat="server" Width="385px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-weight: bold">Số điện thoại</td>
            <td>
                <asp:TextBox ID="txtSoDienThoai" runat="server" Width="385px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-weight: bold">Địa chỉ</td>
            <td>
                <asp:TextBox ID="txtDiaChi" runat="server" Width="385px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-weight: bold">Ghi chú</td>
            <td>
                <asp:TextBox ID="txtNote" runat="server" Width="385px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-weight: bold">Thời gian tạo</td>
            <td>
                <asp:TextBox ID="txtThoiGianTao" runat="server" Width="385px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-weight: bold">Sản phẩm</td>
            <td>
                <asp:TextBox ID="txtSanPham" runat="server" Rows="3" TextMode="MultiLine" Width="386px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-weight: bold">Trạng thái</td>
            <td>
                <asp:DropDownList ID="DropDownList_Status" runat="server" Width="160px">
                    <asp:ListItem Value="pending">pending</asp:ListItem>
                    <asp:ListItem Value="resolved">resolved</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="btnCapNhap" runat="server" BackColor="#FF5050" Text="Cap nhat" Width="170px" OnClick="btnCapNhap_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>

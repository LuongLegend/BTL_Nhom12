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
                <asp:TextBox ID="txtNote" runat="server" Width="544px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Phuong thuc thanh toan</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtPhuongThucThanhToan" runat="server" Width="545px" Enabled="False"></asp:TextBox>
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

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="product_ID" HeaderText="ID" />
            <asp:ImageField DataImageUrlField="photo" HeaderText="Ảnh sản phẩm">
                <ControlStyle Height="100px" Width="100px" />
            </asp:ImageField>
            <asp:BoundField DataField="product_name" HeaderText="Tên sản phẩm" />
            <asp:BoundField DataField="quanitity" HeaderText="Số lượng đặt mua" />
            <asp:TemplateField HeaderText="Giá">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# getPrice(Convert.ToInt32(Eval("price")), Convert.ToInt32(Eval("quanitity")), Convert.ToInt32(Eval("min_product")), Convert.ToInt32(Eval("sale_price")))%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tổng tiền">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# getTotalPrice(Convert.ToInt32(Eval("price")),Convert.ToInt32(Eval("quanitity")),Convert.ToInt32(Eval("min_product")),Convert.ToInt32(Eval("sale_price"))) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <br />
    <br />

    <asp:Button ID="btnCapNhat" runat="server" Text="Cap Nhat" Width="169px" OnClick="btnCapNhat_Click" BackColor="#99FF66"  />

</asp:Content>

<%@ Page Title="Contact user" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="GUI.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gvContact" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowEditing="gvContact_RowEditing" OnSelectedIndexChanged="gvContact_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Thong Tin khach Hang">
                <ItemTemplate>
                    Ho Ten:&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                    &nbsp;<br /> Dia chi:&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                    <br />
                    Phone:&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("phone") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle Height="100px" Width="300px" />
            </asp:TemplateField>
            <asp:BoundField DataField="create_date" HeaderText="Thoi Gian Yeu Cau" SortExpression="create_date">
            <ItemStyle HorizontalAlign="Center" Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="product_name" HeaderText="San Pham" SortExpression="product_name">
            <FooterStyle Width="200px" />
            <ItemStyle HorizontalAlign="Center" Width="300px" />
            </asp:BoundField>
            <asp:BoundField DataField="note" HeaderText="NOTE" SortExpression="note">
            <ItemStyle HorizontalAlign="Center" Width="300px" />
            </asp:BoundField>
            <asp:BoundField DataField="status_Contact" HeaderText="Trang Thai" SortExpression="status_Contact">
            <ItemStyle HorizontalAlign="Center" Width="200px" />
            </asp:BoundField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>

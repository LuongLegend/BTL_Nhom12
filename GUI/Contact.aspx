<%@ Page Title="Contact user" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="GUI.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:GridView ID="GV_Contact" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="contact_ID" OnRowEditing="GV_Contact_RowEditing" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:BoundField DataField="contact_ID" HeaderText="ID" SortExpression="contact_ID" />
            <asp:BoundField DataField="username" HeaderText="Ten" SortExpression="username" />
            <asp:BoundField DataField="phone" HeaderText="So dien thoai" SortExpression="phone" />
            <asp:BoundField DataField="address" HeaderText="Dia chi" SortExpression="address" />
            <asp:BoundField DataField="note" HeaderText="Note" SortExpression="note" />
            <asp:BoundField DataField="create_date" HeaderText="Thoi gian tao" SortExpression="create_date" />
            <asp:BoundField DataField="product_name" HeaderText="San pham" SortExpression="product_name" />
            <asp:BoundField DataField="status_contact" HeaderText="Trang thai" SortExpression="status_contact" />
            <asp:CommandField HeaderText="Cap nhat" ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
   
</asp:Content>

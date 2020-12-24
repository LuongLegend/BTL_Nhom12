<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="Sale.aspx.cs" Inherits="GUI.Sale" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
        <asp:Button ID="btnadd" runat="server" Text="Add new item" ForeColor="#FF6600" OnClick="btnadd_Click" Width="150px" CssClass="btn btn-outline-secondary"/>
        <br />
        <asp:GridView ID="grsale" runat="server" AutoGenerateColumns="False" CellPadding="4" Width="100%" DataKeyNames="sale_id" OnRowDeleting="grsale_RowDeleting" OnPageIndexChanging="grsale_PageIndexChanging" OnRowCommand="grsale_RowCommand" BackColor="#CC0000" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="sale_id" HeaderText="Sale_ID" >
                <HeaderStyle VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="min_product" HeaderText="Min_Product" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="sale_price" HeaderText="Sale_Price" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ButtonField CommandName="editSale" HeaderText="Edit" Text="Edit" ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:ButtonField>
                <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" HorizontalAlign="Center" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
</asp:Content>

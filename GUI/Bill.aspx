<%@ Page Title="Bill management" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="Bill.aspx.cs" Inherits="GUI.Bill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:GridView ID="GV_Bill" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None"  DataKeyNames="bill_ID" BorderWidth="1px" CellPadding="4" OnRowDeleting="GV_Bill_RowDeleting" OnRowEditing="GV_Bill_RowEditing">
        <Columns>
            <asp:BoundField DataField="bill_ID" HeaderText="ID" SortExpression="bill_ID">
            <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="username" HeaderText="Ten" SortExpression="username">
            <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="phone" HeaderText="So dien thoai" SortExpression="phone">
            <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="address" HeaderText="Dia chi" SortExpression="address">
            <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="note" HeaderText="Note" SortExpression="note">
            <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="payment_method" HeaderText="Phuong thuc thanh toan" SortExpression="payment_method">
            <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="status_bill" HeaderText="Trang thai" SortExpression="status_bill">
            <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="bill_date" HeaderText="Thoi gian" SortExpression="bill_date">
            <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CommandField ButtonType="Button" HeaderText="Cap nhat" ShowEditButton="True" ShowHeader="True">
            <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" />
            </asp:CommandField>
            <asp:CommandField ButtonType="Button" HeaderText="Xoa" ShowDeleteButton="True" ShowHeader="True">
            <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" />
            </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
</asp:Content>

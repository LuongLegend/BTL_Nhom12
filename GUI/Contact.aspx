<%@ Page Title="Contact user" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="GUI.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <div class="card">
  <div class="form-group row" >
    <label for="inputKeyword" class="col-sm-2 col-form-label" style="font-weight:bold">Keyword: </label>
    <div class="col-sm-10">
        <asp:TextBox ID="txtKeyword" runat="server" CssClass="form-control" placeholder="contact_ID | username | phone | address"></asp:TextBox>
    </div>
  </div>
  
    <div class="row">
          <label for="inputKeyword" class="col-sm-2 col-form-label" style="font-weight:bold">Time: </label>
    <div class="col">
     <b>From: </b><asp:TextBox ID="txtDateStart" runat="server" CssClass="form-control"  TextMode="Date" ></asp:TextBox>
    </div>
    <div class="col">
    <b>To: </b> <asp:TextBox ID="txtDateEnd" runat="server" CssClass="form-control"  TextMode="Date" ></asp:TextBox>
    </div>

  </div>
     <div class="form-group row" >
    <label for="inputKeyword" class="col-sm-2 col-form-label" style="font-weight:bold">Status: </label>
    <div class="col-sm-10">
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="none">All</asp:ListItem>
            <asp:ListItem>pending</asp:ListItem>
            <asp:ListItem>resolved</asp:ListItem>
        </asp:DropDownList>
    </div>
  </div>
            <div class="col-sm-10">
      <asp:Button ID="btnSearch" runat="server" Text="Tìm kiếm" CssClass="btn btn-primary" OnClick="btnSearch_Click1"  />
    </div>
            </div>
    <br />
    <asp:GridView ID="GV_Contact" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="contact_ID" OnRowEditing="GV_Contact_RowEditing" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" AllowPaging="True" OnPageIndexChanging="GV_Contact_PageIndexChanging" PageSize="5">
        <Columns>
            <asp:BoundField DataField="contact_ID" HeaderText="contact_ID" SortExpression="contact_ID" />
            <asp:BoundField DataField="username" HeaderText="Tên khách hàng" SortExpression="username" />
            <asp:BoundField DataField="phone" HeaderText="Số điện thoại" SortExpression="phone" />
            <asp:BoundField DataField="address" HeaderText="Địa chỉ" SortExpression="address" />
            <asp:BoundField DataField="note" HeaderText="Note" SortExpression="note" />
            <asp:BoundField DataField="create_date" HeaderText="Thời gian tạo" SortExpression="create_date" />
            <asp:BoundField DataField="product_name" HeaderText="Sản phẩm" SortExpression="product_name" />
            <asp:BoundField DataField="status_contact" HeaderText="Trạng thái" SortExpression="status_contact" />
            <asp:CommandField HeaderText="Cập nhật" ShowEditButton="True" />
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

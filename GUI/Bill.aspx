<%@ Page Title="Bill management" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="Bill.aspx.cs" Inherits="GUI.Bill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
     <div class="card">
  <div class="form-group row" >
    <label for="inputKeyword" class="col-sm-2 col-form-label" style="font-weight:bold">Keyword: </label>
    <div class="col-sm-10">
        <asp:TextBox ID="txtKeyword" runat="server" CssClass="form-control" placeholder="bill_ID | admin_ID | username | phone | address"></asp:TextBox>
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
            <asp:ListItem>approved</asp:ListItem>
            <asp:ListItem>cancel</asp:ListItem>
        </asp:DropDownList>
    </div>
  </div>
          <div class="col-sm-10">
      <asp:Button ID="btnSearch" runat="server" Text="Tìm kiếm" CssClass="btn btn-primary" OnClick="btnSearch_Click"/>
    </div>
  </div>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand" AllowPaging="True" BorderWidth="1px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="bill_ID" HeaderText="Bill_ID" />
            <asp:BoundField DataField="admin_ID" HeaderText="adminID xử lý" />
            <asp:BoundField DataField="username" HeaderText="Tên khách hàng" />
            <asp:BoundField DataField="phone" HeaderText="Số điện thoại" />
            <asp:BoundField DataField="address" HeaderText="Địa chỉ" />
            <asp:BoundField DataField="note" HeaderText="Ghi chú" />
            <asp:BoundField DataField="payment_method" HeaderText="Phương thức thanh toán" />
            <asp:BoundField DataField="status_bill" HeaderText="Trạng thái" />
            <asp:BoundField DataField="bill_date" HeaderText="Thời gian" />
            <asp:ButtonField HeaderText="Cập nhật" Text="Cập nhật" CommandName="editBill" ControlStyle-ForeColor="Blue"/>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    </asp:Content>

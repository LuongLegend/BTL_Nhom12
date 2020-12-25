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
    <asp:GridView ID="GV_Bill" runat="server" AutoGenerateColumns="False"  DataKeyNames="bill_ID" OnRowDeleting="GV_Bill_RowDeleting" OnRowEditing="GV_Bill_RowEditing" AllowPaging="True" OnPageIndexChanging="GV_Bill_PageIndexChanging" PageSize="5">
        <Columns>
            <asp:BoundField DataField="bill_ID" HeaderText="Bill_ID" SortExpression="bill_ID">
            <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="admin_ID" HeaderText="adminID xử lý" SortExpression="admin_ID">
            <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="username" HeaderText="Tên khách hàng" SortExpression="username">
            <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="phone" HeaderText="Số điện thoại" SortExpression="phone">
            <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="address" HeaderText="Địa chỉ" SortExpression="address">
            <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="note" HeaderText="Note" SortExpression="note">
            <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="payment_method" HeaderText="Phương thức thanh toán" SortExpression="payment_method">
            <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="status_bill" HeaderText="Trạng thái" SortExpression="status_bill">
            <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="bill_date" HeaderText="Thời gian" SortExpression="bill_date">
            <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CommandField ButtonType="Button" HeaderText="Cập nhật" ShowEditButton="True" ShowHeader="True">
            <HeaderStyle BackColor="#FFFFCC" HorizontalAlign="Center" />
            </asp:CommandField>
        </Columns>
    </asp:GridView>
</asp:Content>

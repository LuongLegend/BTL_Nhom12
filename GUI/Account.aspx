<%@ Page Title="Account management" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="GUI.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Quản lý tài khoản<br />
  <div class="card">
  <div class="form-group row" >
    <label for="inputEmail3" class="col-sm-2 col-form-label">Keyword: </label>
    <div class="col-sm-10">
        <asp:TextBox ID="txtKeyword" runat="server" CssClass="form-control" placeholder="admin_ID | admin_name | fullname | address | phone number"></asp:TextBox>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">Role admin: </label>
    <div class="col-sm-10">
         <asp:DropDownList ID="listRole" runat="server" TabIndex="7" >
                    <asp:ListItem Value="none">Tất cả</asp:ListItem>
                    <asp:ListItem >admin</asp:ListItem>
                    <asp:ListItem Value="purchaser">Nhập hàng</asp:ListItem>
                    <asp:ListItem  Value="writer">Viết tin tức</asp:ListItem>
                    <asp:ListItem  Value="marketer">Liên hệ khách hàng</asp:ListItem>
                    <asp:ListItem  Value="approver">Duyệt đơn</asp:ListItem>
                </asp:DropDownList>
    </div>
  </div>
          <div class="col-sm-10">
      <asp:Button ID="btnSearch" runat="server" Text="Tìm kiếm" CssClass="btn btn-primary" OnClick="btnSearch_Click"/>
    </div>
  </div>

   
<asp:LinkButton ID="lbThem" runat="server" PostBackUrl="~/InsertAccount.aspx" CssClass="btn btn-success">Thêm</asp:LinkButton>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging" Width="100%" OnRowCommand="GridView1_RowCommand">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="admin_ID" HeaderText="admin ID" />
        <asp:BoundField DataField="admin_name" HeaderText="Name" />
        <asp:BoundField DataField="full_name" HeaderText="Fullname" />
        <asp:BoundField DataField="phone" HeaderText="Phone Number" />
        <asp:BoundField DataField="address" HeaderText="Address" />
        <asp:BoundField DataField="note" HeaderText="Note" />
        <asp:TemplateField HeaderText="Role">
            <ItemTemplate>
                <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Eval("role") %>'>
                    <asp:ListItem >admin</asp:ListItem>
                    <asp:ListItem Value="purchaser">Nhập hàng</asp:ListItem>
                    <asp:ListItem  Value="writer">Viết tin tức</asp:ListItem>
                    <asp:ListItem  Value="marketer">Liên hệ khách hàng</asp:ListItem>
                    <asp:ListItem  Value="approver">Duyệt đơn</asp:ListItem>
                </asp:DropDownList>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="active" HeaderText="Active" />
        <asp:ButtonField CommandName="editAcc" HeaderText="Edit" Text="Edit" ControlStyle-ForeColor="Blue">
<ControlStyle ForeColor="Blue"></ControlStyle>
        </asp:ButtonField>
        <asp:ButtonField CommandName="resetPass" HeaderText="Reset Password" Text="Reset" ControlStyle-ForeColor="Blue">
      
<ControlStyle ForeColor="Blue"></ControlStyle>
        </asp:ButtonField>
      
    </Columns>
    <EditRowStyle BackColor="#7C6F57" />
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#E3EAEB" />
    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F8FAFA" />
    <SortedAscendingHeaderStyle BackColor="#246B61" />
    <SortedDescendingCellStyle BackColor="#D4DFE1" />
    <SortedDescendingHeaderStyle BackColor="#15524A" />
</asp:GridView>
&nbsp;

</asp:Content>

<%@ Page Title="Product management" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="GUI.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Hehehe</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Quản lý sản phẩm<br />
 <div class="card">
  <div class="form-group row" >
    <label for="inputKeyword" class="col-sm-2 col-form-label" style="font-weight: bold">Keyword: </label>
    <div class="col-sm-10">
        <asp:TextBox ID="txtKeyword" runat="server" CssClass="form-control" placeholder="id | name | brand | origin"></asp:TextBox>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputCata" class="col-sm-2 col-form-label" style="font-weight: bold">Catagories: </label>
    <div class="col-sm-10">
        <asp:CheckBox ID="CheckBox1" runat="server" Checked="true"/> 
        <b>Tất cả</b> hoặc
         <asp:DropDownList ID="listRole" runat="server" TabIndex="7" DataSourceID="SqlDataSource1" DataTextField="category_name" DataValueField="category_ID" >
                
                </asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DoNgoaiChinhHangConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
    </div>
  </div>
    <div class="row">
          <label for="inputKeyword" class="col-sm-2 col-form-label" style="font-weight: bold">Price: </label>
    <div class="col">
     <asp:TextBox ID="txtMin" runat="server" CssClass="form-control" placeholder="min" TextMode="Number" min="0"></asp:TextBox>
    </div>
    <div class="col">
          <asp:TextBox ID="txtMax" runat="server" CssClass="form-control" placeholder="max" TextMode="Number" min="0    "></asp:TextBox>
    </div>

  </div>
               <div class="form-group row" >
    <label for="inputKeyword" class="col-sm-2 col-form-label" style="font-weight: bold">Active: </label>
    <div class="col-sm-10">
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="none">All</asp:ListItem>
            <asp:ListItem Value="1">True</asp:ListItem>
            <asp:ListItem Value="0">False</asp:ListItem>
        </asp:DropDownList>
    </div>
  </div>
          <div class="col-sm-10">
      <asp:Button ID="btnSearch" runat="server" Text="Tìm kiếm" CssClass="btn btn-primary" OnClick="btnSearch_Click"/>
    </div>
  </div>
    <asp:Button ID="btnThem" runat="server" Text="Thêm sản phẩm" CssClass="btn btn-success" style="margin-top:10px;margin-bottom:10px" OnClick="btnThem_Click"/>
    <div class="card-body">
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" RepeatColumns="3">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#E3EAEB" />
            <ItemTemplate>
                <h5><asp:Label ID="Label1" runat="server" Text='<%# Eval("product_name") %>'></asp:Label></h5>
                <p style="font-weight:bold">
                    Id:
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("product_ID") %>'></asp:Label>
                </p>
                <p>
                    <asp:Image ID="Image1" runat="server" Height="195px" ImageUrl='<%# Eval("photo") %>' />
                </p>
                <p style="font-weight:bold">
                    Giá:
                    <asp:Label ID="Label2" runat="server" Text='<%# String.Format("{0:000,0 đ}",Eval("price")) %>'></asp:Label>
                </p>
                <p style="font-weight:bold">
                    origin:
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("origin") %>'></asp:Label>
                </p>
                <p style="font-weight:bold">
                    brand:
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("product_brand") %>'></asp:Label>
                </p>
                    <p style="font-weight:bold">
                     quantity:
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                </p>
                <p>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("summary") %>'></asp:Label>
                </p>
                <p>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "DetailsProducts.aspx?Id=" + Eval("product_ID").ToString() %>'>Xem chi tiết </asp:HyperLink>
                    &nbsp;</p>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
    </div>
</asp:Content>

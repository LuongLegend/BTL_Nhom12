<%@ Page Title="News management" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="GUI.News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="card">
  <div class="form-group row" >
    <label for="inputEmail3" class="col-sm-2 col-form-label" style="font-weight: bold">Keyword: </label>
    <div class="auto-style1">
        <asp:TextBox ID="txtKeyword" runat="server" CssClass="form-control" placeholder="news_ID | title "></asp:TextBox>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label" style="font-weight: bold">Status news: </label>
    <div class="col-sm-10">
         <asp:DropDownList ID="activeList" runat="server" TabIndex="7" >
                    <asp:ListItem Value="none">Tất cả</asp:ListItem>
                    <asp:ListItem Value="1">Active</asp:ListItem>
                    <asp:ListItem  Value="0">Deactive</asp:ListItem>
         </asp:DropDownList>
    </div>
  </div>
          <div class="col-sm-10">
      <asp:Button ID="btnSearch" runat="server" Text="Tìm kiếm" CssClass="btn btn-primary" OnClick="btnSearch_Click"/>
    </div>
  </div>

    <div class="d-flex justify-content-center bd-highlight mb-3">
        <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-success px-xl-5" Text="Thêm tin tức" OnClick="btnAdd_Click" />
        <span style="margin-right: 50px"></span>
    </div>
    <br />
    <asp:GridView ID="grdNews" Style="text-align: center" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" DataKeyNames="new_ID" PageSize="5" AllowPaging="True" EmptyDataText="No data available." OnRowCommand="grdNews_RowCommand" OnPageIndexChanging="grdNews_PageIndexChanging" OnRowDeleting="grdNews_RowDeleting">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <%--<asp:BoundField HeaderText="Detail" DataField="detail" />--%>
            <asp:BoundField HeaderText="New_ID" DataField="new_ID" />
            <asp:BoundField HeaderText="Title" DataField="title" />
            <asp:ImageField HeaderText="Photos" DataImageUrlField="photo">
                <ControlStyle Height="150px" Width="100px" />
            </asp:ImageField>
            <asp:TemplateField HeaderText="Active">
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Eval("status_News") %>'>
                        <asp:ListItem Value="1">True</asp:ListItem>
                        <asp:ListItem Value="0">False</asp:ListItem>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="Summary" DataField="summary" />
            <asp:ButtonField CommandName="editNew" HeaderText="Edit" Text="Edit" ControlStyle-ForeColor="Blue" >
<ControlStyle ForeColor="Blue"></ControlStyle>
            </asp:ButtonField>
            <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" ControlStyle-ForeColor="Blue" >
<ControlStyle ForeColor="Blue"></ControlStyle>
            </asp:CommandField>
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
    <br />
    <br />
    <br />
</asp:Content>

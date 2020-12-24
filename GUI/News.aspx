<%@ Page Title="News management" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="GUI.News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex justify-content-center bd-highlight mb-3">
        <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-success px-xl-5" Text="Thêm tin tức" OnClick="btnAdd_Click" />
        <span style="margin-right: 50px"></span>
    </div>
    <br />
    <asp:GridView ID="grdNews" Style="text-align: center" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" DataKeyNames="new_ID" PageSize="4" AllowPaging="True" EmptyDataText="No data available." OnRowCommand="grdNews_RowCommand" OnPageIndexChanging="grdNews_PageIndexChanging" OnRowDeleting="grdNews_RowDeleting">
        <Columns>
            <asp:BoundField HeaderText="New_ID" DataField="new_ID" />
            <asp:BoundField HeaderText="Title" DataField="title" />
            <asp:ImageField HeaderText="Photos" DataImageUrlField="photo">
                <ControlStyle Height="150px" Width="100px" />
            </asp:ImageField>
            <%--<asp:BoundField HeaderText="Detail" DataField="detail" />--%>
            <asp:BoundField HeaderText="Status_News" DataField="status_News" />
            <asp:BoundField HeaderText="Summary" DataField="summary" />
            <asp:ButtonField CommandName="editNew" HeaderText="Edit" Text="Edit" ControlStyle-ForeColor="Blue" />
            <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" ControlStyle-ForeColor="Blue" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <br />
</asp:Content>

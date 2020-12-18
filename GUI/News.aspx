<%@ Page Title="News management" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="GUI.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex justify-content-center bd-highlight mb-3">
        <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-success px-xl-5" Text="Thêm tin tức" OnClick="btnAdd_Click" />
        <span style="margin-right: 50px"></span>
    </div>
    <br />
    <br />
    <asp:GridView ID="grdNews" style="text-align:center" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" DataKeyNames="new_ID" PageSize="5" AllowPaging="True" EmptyDataText="No data available.">
        <Columns>
            <asp:BoundField HeaderText="New_ID" DataField="new_ID" />
            <asp:BoundField HeaderText="Title" DataField="title" />
            <asp:BoundField HeaderText="Photos" DataField="photo" />
            <asp:BoundField HeaderText="Detail" DataField="detail" />
            <asp:BoundField HeaderText="Status_News" DataField="status_News" />
            <asp:BoundField HeaderText="Summary" DataField="summary" />
            <asp:CommandField HeaderText="Edit" ShowEditButton="true" />
            <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <br />
</asp:Content>

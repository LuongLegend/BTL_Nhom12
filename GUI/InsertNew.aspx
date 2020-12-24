<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="InsertNew.aspx.cs" Inherits="GUI.InsertNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link type="text/css" rel="stylesheet" href="CSS/table.css" />
    <link type="text/css" rel="stylesheet" href="CSS/LuongLegend.css" />
    <script src="Scripts/ckeditor/ckeditor.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form>
        <div class="form-row" style="margin-top: 30px">
            <div class="form-group col-md-6">
                <label for="txtNewID" style="font-weight: bold">New ID</label>
                <asp:TextBox ID="txtNewID" runat="server" TabIndex="-1" required="required" placeholder="New ID" CssClass="form-control" pattern="[A-Za-z0-9]+"></asp:TextBox>
                <asp:CustomValidator runat="server" ID="cusCustom" ControlToValidate="txtNewID" OnServerValidate="validateNewsID" ErrorMessage="news ID đã tồn tại" class="fa fa-warning" Style="color: red" />
            </div>
            <div class="form-group col-md-6">
                <label for="txtTitle" style="font-weight: bold">Title</label>
                <asp:TextBox ID="txtTitle" runat="server" TabIndex="1" required="required" placeholder="Title" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label for="FileUpload1" style="font-weight: bold">Photo</label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </div>
        <div class="form-group">
            <label for="editor" style="font-weight: bold">Details</label>
            <textarea id="ckcontent" runat="server" class="ckeditor"></textarea>
        </div>
           <div class="form-row">
      
                <label for="DropDownStatusAdd"><b>Status</b></label>
                <asp:DropDownList ID="DropDownStatusAdd" runat="server">
                    <asp:ListItem Value="1">True</asp:ListItem>
                    <asp:ListItem Value="0">False</asp:ListItem>
                </asp:DropDownList>
            </div>
                <%--<label for="txtStatusNew" style="font-weight: bold">StatusNew</label>--%>
                <%--<asp:TextBox ID="txtStatusNew" runat="server" TabIndex="4" CssClass="form-control"></asp:TextBox>--%>
         <div class="form-row">
                <label for="txtSummary" style="font-weight: bold">Summary</label>
                <asp:TextBox ID="txtSummary" runat="server" TabIndex="5" placeholder="Summary" CssClass="form-control" required="required" TextMode="MultiLine"></asp:TextBox>
            </div>
        <asp:Button runat="server" ID="btnThem" CssClass="btn btn-primary form-control" Text="Thêm" OnClick="btnThem_Click"/>
    </form>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="UpdateNew.aspx.cs" Inherits="GUI.UpdateNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/ckeditor/ckeditor.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form>
        <div class="form-row" style="margin-top: 30px">
            <div class="form-group col-md-6">
                <label for="txtNewID" style="font-weight: bold">NewID</label>
                <asp:TextBox ID="txtNewID" runat="server" TabIndex="-1" required="required" placeholder="New ID" CssClass="form-control" pattern="[A-Za-z0-9]+" Enabled="false"></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
                <label for="txtTitle" style="font-weight: bold">Title</label>
                <asp:TextBox ID="txtTitle" runat="server" TabIndex="1" required="required" placeholder="Product Name" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label for="txtPhoto" style="font-weight: bold">Photo</label>
            <asp:Image ID="txtPhoto" runat="server" Width="250px" Height="350px" TabIndex="7" />
            <br />
            &nbsp;<b>Image replace</b>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </div>
        <div class="form-group">
            <label for="editor" style="font-weight: bold">Details</label>
            <textarea id="ckcontent" runat="server" class="ckeditor"></textarea>
        </div>
            <div class="form-row">
                <label for="DropDownStatus"><b>Active</b></label>
                <asp:DropDownList ID="DropDownStatus" runat="server">
                    <asp:ListItem Value="1">True</asp:ListItem>
                    <asp:ListItem Value="0">False</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-row">
                <label for="txtSummary" style="font-weight: bold">Summary</label>
                <asp:TextBox TextMode="MultiLine" ID="txtSummary" runat="server" TabIndex="1" required="required" CssClass="form-control"></asp:TextBox>
            </div>
        <asp:Button runat="server" ID="btnLuu" Text="Lưu" CssClass="btn btn-success form-control" OnClick="btnLuu_Click" />
    </form>

</asp:Content>

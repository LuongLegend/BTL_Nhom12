<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="InsertProduct.aspx.cs" Inherits="GUI.InsertProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link type="text/css" rel="stylesheet" href="CSS/table.css"/>
      <link type="text/css" rel="stylesheet" href="CSS/LuongLegend.css"/>
    <script src="Scripts/ckeditor/ckeditor.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form >
        <div class="form-row" style="margin-top:30px">
            <div class="form-group col-md-6" style="left: 0px; top: 0px">
              <label for="txt_ProductID" style="font-weight:bold">ProductID</label>
                 <asp:TextBox ID="txt_ProductID" runat="server" TabIndex="-1" required="required" placeholder="product ID" CssClass="form-control" pattern="[A-Za-z0-9]+" ></asp:TextBox>
                 <asp:CustomValidator runat="server" id="cusCustom" controltovalidate="txt_ProductID" onservervalidate="validateProductID" errormessage="product ID đã tồn tại" class="fa fa-warning" style="color:red"/>
            </div>
            <div class="form-group col-md-6">
              <label for="txt_ProductName" style="font-weight:bold">Product Name</label>
                <asp:TextBox ID="txt_ProductName" runat="server" TabIndex="1" required="required" placeholder="Product Name" CssClass="form-control" ></asp:TextBox>
              
            </div>
         </div>
        <div class="form-row">
            <div class="form-group col-md-6">
              <label for="txt_Brand" style="font-weight:bold">Brand</label>
                 <asp:TextBox ID="txt_Brand" runat="server" TabIndex="2"  placeholder="Brand" CssClass="form-control" required="required" ></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
              <label for="txt_Origin" style="font-weight:bold">Origin</label>
             <asp:TextBox ID="txt_Origin" runat="server" TabIndex="3" placeholder="Origin" CssClass="form-control" required="required"></asp:TextBox>
            </div>
         </div>
        <div class="form-row">
            <div class="form-group col-md-6">
              <label for="txt_Sumary" style="font-weight:bold">Summary</label>
                <asp:TextBox ID="txt_Sumary" runat="server" TabIndex="4"  TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
              <label for="txt_Price" style="font-weight:bold">Price</label>
             <asp:TextBox ID="txt_Price" runat="server" TabIndex="5" placeholder="Price" CssClass="form-control" TextMode="Number" min="0" max="10000000" required="required"></asp:TextBox>
            </div>
         </div>
            <div class="form-group">
              <label for="txt_Quantity" style="font-weight:bold">Quantity</label>
             <asp:TextBox ID="txt_Quantity" runat="server" TabIndex="6" TextMode="Number" min="0" max="10000000" CssClass="form-control"></asp:TextBox>
             </div>
              <div class="form-group">
                    <label for="FileUpload1" style="font-weight:bold">Photo</label>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
              </div>
        <div class="form-group">
               <label for="editor" style="font-weight:bold">Details</label>
            <textarea id="ckcontent" runat="server" class="ckeditor"></textarea>
        </div>
           <div class="form-row">
                  <label for="CheckBoxList2" style="font-weight:bold">Catagories</label>
                <asp:CheckBoxList ID="CheckBoxList2" runat="server"></asp:CheckBoxList>
                </div>
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary"  style="position:fixed;right:30%;bottom:-2147483648%; padding:20px" Text="Thêm" OnClick="Button1_Click"  />
    </form>
   
</asp:Content>


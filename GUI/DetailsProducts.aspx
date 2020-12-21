<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="DetailsProducts.aspx.cs" Inherits="GUI.DetailsProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link type="text/css" rel="stylesheet" href="CSS/table.css"/>
      <link type="text/css" rel="stylesheet" href="CSS/LuongLegend.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form >
        <div class="form-row" style="margin-top:30px">
            <div class="form-group col-md-6">
              <label for="txt_ProductID" style="font-weight:bold">ProductID</label>
                 <asp:TextBox ID="txt_ProductID" runat="server" TabIndex="-1" required="required" placeholder="product ID" CssClass="form-control" pattern="[A-Za-z0-9]+"></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
              <label for="txt_ProductName" style="font-weight:bold">Product Name</label>
                <asp:TextBox ID="txt_ProductName" runat="server" TabIndex="1" required="required" placeholder="Product Name" CssClass="form-control" ></asp:TextBox>
              
            </div>
         </div>
        <div class="form-row">
            <div class="form-group col-md-6">
              <label for="txt_Brand" style="font-weight:bold">Brand</label>
                 <asp:TextBox ID="txt_Brand" runat="server" TabIndex="2"  placeholder="Brand" CssClass="form-control" ></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
              <label for="txt_Origin" style="font-weight:bold">Origin</label>
             <asp:TextBox ID="txt_Origin" runat="server" TabIndex="3" placeholder="Origin" CssClass="form-control"></asp:TextBox>
            </div>
         </div>
        <div class="form-row">
            <div class="form-group col-md-6">
              <label for="txt_Sumary" style="font-weight:bold">Summary</label>
                <asp:TextBox ID="txt_Sumary" runat="server" TabIndex="4"  TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
              <label for="txt_Price" style="font-weight:bold">Price</label>
             <asp:TextBox ID="txt_Price" runat="server" TabIndex="5" placeholder="Price" CssClass="form-control" TextMode="Number" min="0"></asp:TextBox>
            </div>
         </div>
         <div class="form-row">
            <div class="form-group col-md-6">
              <label for="txt_Quantity" style="font-weight:bold">Quantity</label>
             <asp:TextBox ID="txt_Quantity" runat="server" TabIndex="6" TextMode="Number" min="0" CssClass="form-control"></asp:TextBox>
             </div>
              <div class="form-group col-md-6">
                    <label for="txt_Photo" style="font-weight:bold">Photo</label>
                  <asp:Image ID="txt_Photo" runat="server" width="250px" Height="350px" TabIndex="7"/>
              </div>
         </div>
        <div class="form-group">
               <label for="editor" style="font-weight:bold">Details</label>
             <div class="editor" id="editor" runat="server"></div>
        </div>
       
            <div class="form-group">
                  <label for="DropDownList2"><b>Active</b></label>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem Value="1">True</asp:ListItem>
                    <asp:ListItem Value="0">False</asp:ListItem>
                </asp:DropDownList>
                </div>
           <div class="form-row">
                  <label for="CheckBoxList2" style="font-weight:bold">Catagories</label>
                <asp:CheckBoxList ID="CheckBoxList2" runat="server"></asp:CheckBoxList>
                </div>
      
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary"  style="position:fixed;right:30%;bottom:30%;padding:20px" Text="Sửa" OnClick="Button1_Click" />
    </form>
     <script src="CK5editor/ck5.js"></script>
    <script>
		ClassicEditor
			.create(document.querySelector('.editor'), {
				cloudServices: {
					tokenUrl: 'https://77093.cke-cs.com/token/dev/33ce323f9c2c7d3db21f73f00481e0e76dd57b91479d332a08711b93b5bd',
					uploadUrl: 'https://77093.cke-cs.com/easyimage/upload/'
				},
				toolbar: {
					items: [
						'heading',
						'htmlEmbed',
						'CKFinder',
						'|',
						'bold',
						'underline',
						'italic',
						'link',
						'fontColor',
						'fontSize',
						'fontFamily',
						'fontBackgroundColor',
						'highlight',
						'bulletedList',
						'numberedList',
						'|',
						'indent',
						'outdent',
						'|',
						'alignment',
						'imageUpload',
						'blockQuote',
						'insertTable',
						'mediaEmbed',
						'undo',
						'redo'
					]
				},
				language: 'en',
				image: {
					toolbar: [
						'imageTextAlternative',
						'imageStyle:full',
						'imageStyle:side'
					]
				},
				table: {
					contentToolbar: [
						'tableColumn',
						'tableRow',
						'mergeTableCells',
						'tableCellProperties'
					]
				},
				licenseKey: '',

			})
			.then(editor => {
				window.editor = editor;
			})
			.catch(error => {
				console.error(error);
			});
    </script>
</asp:Content>

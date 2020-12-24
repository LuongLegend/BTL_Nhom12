<%@ Page Title="Contact user" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="GUI.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="contact_ID" DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="username" HeaderText="Thong tin" SortExpression="username" >
        <ItemStyle Width="150px" />
        </asp:BoundField>
        <asp:BoundField DataField="phone" HeaderText="So dien thoai" SortExpression="phone" >
        <ItemStyle Width="150px" />
        </asp:BoundField>
        <asp:BoundField DataField="address" HeaderText="Dia chi" SortExpression="address" >
        <ItemStyle Width="200px" />
        </asp:BoundField>
        <asp:BoundField DataField="note" HeaderText="note" SortExpression="note" >
        <ItemStyle Width="200px" />
        </asp:BoundField>
        <asp:BoundField DataField="create_date" HeaderText="Thoi gian yeu cau" SortExpression="create_date" >
        <ItemStyle Width="150px" />
        </asp:BoundField>
        <asp:BoundField DataField="product_name" HeaderText="San pham" SortExpression="product_name" >
        <ItemStyle Width="200px" />
        </asp:BoundField>
        <asp:BoundField DataField="status_Contact" HeaderText="Trang thai" SortExpression="status_Contact" >
        <ItemStyle Width="100px" />
        </asp:BoundField>
        <asp:CommandField ShowEditButton="True" />
    </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DoNgoaiChinhHangConnectionString %>" DeleteCommand="DELETE FROM [Contact] WHERE [contact_ID] = @contact_ID" InsertCommand="INSERT INTO [Contact] ([contact_ID], [username], [phone], [address], [note], [create_date], [status_Contact], [product_name]) VALUES (@contact_ID, @username, @phone, @address, @note, @create_date, @status_Contact, @product_name)" SelectCommand="SELECT * FROM [Contact]" UpdateCommand="UPDATE [Contact] SET [username] = @username, [phone] = @phone, [address] = @address, [note] = @note, [create_date] = @create_date, [status_Contact] = @status_Contact, [product_name] = @product_name WHERE [contact_ID] = @contact_ID">
    <DeleteParameters>
        <asp:Parameter Name="contact_ID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="contact_ID" Type="String" />
        <asp:Parameter Name="username" Type="String" />
        <asp:Parameter Name="phone" Type="String" />
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="note" Type="String" />
        <asp:Parameter DbType="Date" Name="create_date" />
        <asp:Parameter Name="status_Contact" Type="String" />
        <asp:Parameter Name="product_name" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="username" Type="String" />
        <asp:Parameter Name="phone" Type="String" />
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="note" Type="String" />
        <asp:Parameter DbType="Date" Name="create_date" />
        <asp:Parameter Name="status_Contact" Type="String" />
        <asp:Parameter Name="product_name" Type="String" />
        <asp:Parameter Name="contact_ID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
   
</asp:Content>

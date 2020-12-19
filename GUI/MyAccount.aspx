<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="GUI.MyAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:FormView ID="FormView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" Caption="Account" CellPadding="2" ForeColor="Black" align="center"  DataKeyNames="admin_ID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                admin_ID:
                <asp:Label ID="admin_IDLabel1" runat="server" Text='<%# Eval("admin_ID") %>' />
                <br />
                admin_name:
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("admin_name") %>'></asp:Label>
                <br />
                full_name:
                <asp:TextBox ID="full_nameTextBox" runat="server" Text='<%# Bind("full_name") %>' />
                <br />
                phone:
                <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                <br />
                address:
                <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>'></asp:TextBox>
                <br />
                role:
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("role") %>'></asp:Label>
                <br />
                <asp:LinkButton
                    id="UpdateButton"
                    Text="Update"
                    CommandName="Update"
                    Runat="server" CausesValidation="True" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="PaleGoldenrod" ForeColor="black" />
            <ItemTemplate>
                admin_ID:
                <asp:Label ID="admin_IDLabel" runat="server" Text='<%# Eval("admin_ID") %>' />
                <br />
                admin_name:
                <asp:Label ID="admin_nameLabel" runat="server" Text='<%# Bind("admin_name") %>' />
                <br />
                full_name:
                <asp:Label ID="full_nameLabel" runat="server" Text='<%# Bind("full_name") %>' />
                <br />
                address:
                <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
                <br />
                phone:
                <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
                <br />
                role:
                <asp:Label ID="roleLabel" runat="server" Text='<%# Bind("role") %>' />
                <br />
                <asp:LinkButton
                    id="EditButton"
                    Text="Edit"
                    CommandName="Edit"
                    Runat="server" CausesValidation="False" />
                &nbsp;&nbsp;
                <a href="ChangePassword.aspx">Change Password</a>
                
                
            </ItemTemplate>
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DoNgoaiChinhHangConnectionString %>" 
        SelectCommand="SELECT [address], [phone], [full_name], [admin_name], [admin_ID], [role] FROM [Admin] WHERE ([admin_ID] = @admin_ID)" 
        UpdateCommand="UPDATE [Admin] SET [address] = @address, [phone] = @phone, [full_name] = @full_name WHERE [admin_ID] = @admin_ID">
        <DeleteParameters>
            <asp:Parameter Name="admin_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="full_name" Type="String" />
            <asp:Parameter Name="admin_name" Type="String" />
            <asp:Parameter Name="admin_ID" Type="String" />
            <asp:Parameter Name="role" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="admin_ID" SessionField="id" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="full_name" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
    <br />
</asp:Content>

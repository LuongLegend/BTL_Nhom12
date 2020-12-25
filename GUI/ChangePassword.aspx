<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="GUI.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 128px;
            height: 26px;
        }
        .auto-style6 {
            width: 185px;
            height: 26px;
        }
        .auto-style7 {
            width: 185px;
        }
        .auto-style9 {
            width: 323px;
        }
        .auto-style10 {
            width: 128px;
        }
        .auto-style11 {
            width: 185px;
            height: 62px;
        }
        .auto-style12 {
            width: 128px;
            height: 62px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div align="center">
    <table class="auto-style9" title="Change your password">
        <tr>
            <td class="auto-style11">Your password</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtPass" runat="server" required="required" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">New password</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtNewPass" runat="server" required="required" TextMode="Password"  CssClass="form-control" minlength="6"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Confirm new password</td>
            <td class="auto-style10">
                <asp:TextBox ID="txtConfPass" runat="server" required="required" TextMode="Password"  CssClass="form-control" minlength="6"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="btnChangePassword" runat="server" OnClick="btnChangePassword_Click" Text="Submit" CssClass="btn-primary"/>
        &nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="MyAccount.aspx">Back</asp:HyperLink>
        <br />
        </div>
</asp:Content>

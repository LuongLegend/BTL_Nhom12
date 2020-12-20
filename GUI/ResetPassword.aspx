<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="GUI.ResetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 131px;
        }
        .auto-style2 {
            width: 363px;
        }
        .auto-style3 {
            width: 228px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <h1 align="center">Reset Password for account:
              <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Label"></asp:Label>
          </h1>
          <p align="center">
              <table class="auto-style2" style="background-color:antiquewhite" align="center">
                  <tr>
                      <td class="auto-style1">New password:</td>
                      <td class="auto-style3">
                          <asp:TextBox ID="TextBox1" runat="server" required="required" minlength="6"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style1">
                          <asp:Button ID="Button1" runat="server" Text="Reset" CssClass="btn btn-primary" OnClick="Button1_Click"/>
                      </td>
                      <td class="auto-style3">
                          <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" />
                      </td>
                  </tr>
              </table>
          </p>
     
</asp:Content>

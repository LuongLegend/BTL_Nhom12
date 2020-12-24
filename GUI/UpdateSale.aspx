<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="UpdateSale.aspx.cs" Inherits="GUI.UpdateSale" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 177px;
        }
        .auto-style7 {
            width: 335px;
        }
    </style>
    <link type="text/css" rel="stylesheet" href="CSS/table.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <table class="styled-table">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server" Text="Sale ID"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtsaleid" runat="server" Width="304px" required ="required" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Min_Product"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtminproduct" runat="server" Width="304px" required ="required" TextMode="Number" min="0" max="10000000"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Sale_Price"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtsaleprice" runat="server" Width="304px" required ="required" TextMode="Number" min="0" max="10000000"></asp:TextBox>
                </td> 
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnupdate" runat="server" Text="Update" CssClass="myButton" OnClick="updatesale" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="InsertBonus.aspx.cs" Inherits="GUI.InsertBonus" %>
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
                    <asp:Label ID="Label1" runat="server" Text="Bonus ID"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtbonusid" runat="server" Width="304px" required ="required"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Bonus Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbonusname" runat="server" Width="304px" required ="required"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td rowspan="2">
                    <asp:Label ID="Label3" runat="server" Text="Bonus Photo"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="bonusphoto" runat="server" Width="311px" />
                </td>
            </tr>
            <tr>
                <td style="height:300px; width:300px">
                    <asp:Image ID="txtbonusphoto" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Bonus Price"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbonusprice" runat="server" Width="304px" required ="required" TextMode="Number" min="0" max="10000000"></asp:TextBox>
                </td> 
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnadd" runat="server" Text="Add" CssClass="myButton" OnClick="addNewBonus" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

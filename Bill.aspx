<%@ Page Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="Bill.aspx.cs" Inherits="Bill" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<table>
    <tr>
        <td align="center" colspan="2">
          <h1><asp:Label ID="lbltitle" Font-Underline="true" runat="server" Font-Size="XX-Large" Text="Your Shopping Information"></asp:Label>
            </h1>
        </td>
    </tr>
    <tr>
        <td><br /></td></tr>
    <tr>
        <td align="right">
            <asp:Label ID="lblbillno" runat="server" Text="Bill Number is :"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblno" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="right">
            <asp:Label ID="lblbilldate" runat="server" Text="Bill Date Is :"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lbldate" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="right">
            <asp:Label ID="lblbilltotal" runat="server" Text="Total Amount:"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lbltotal" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Label ID="lblmsg" Font-Italic="true" ForeColor="Aqua" Font-Size="Larger" runat="server" Text="Congratulation Your Order is Sucessfully Placed.<br /> Your Order delievery Will Come Soon."></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:LinkButton ID="lnkdone" runat="server" onclick="lnkdone_Click">Done</asp:LinkButton>
        </td>
    </tr>
</table>

</center>
</asp:Content>


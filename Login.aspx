<%@ Page Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <center>
<div style="height:70%;"></div>
<table style="border:1pt solid #6666FF; width:60%; height:424px; font-family: Verdana;
    border-collapse:collapse; background-color:white">
    <tr style="height:70px;">
        <td align="center" colspan="2">
            <asp:Label ID="lbltitle"  runat="server" Font-Bold="true" Font-Italic="false" Font-Size="X-Large" Font-Underline="true" Text="Login Form"></asp:Label> 
        </td>
    </tr>
    <tr style="height:50px;">
        <td align="right">
            <asp:Label ID="lblunm" Font-Size="X-Large" runat="server" Text="User Name/Email:"></asp:Label>
        </td>
        <td align="left">
            <asp:TextBox ID="txtunm" Font-Size="X-Large" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr style="height:50px;">
        <td align="right">
            <asp:Label ID="lblpwd" Font-Size="X-Large" runat="server" Text="Password:"></asp:Label>
        </td>
        <td  align="left">
            <asp:TextBox ID="txtpwd" runat="server" Font-Size="X-Large" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right">                                          
            <asp:LinkButton ID="lnklogin"    Font-Size="X-Large" runat="server" onclick="lnklogin_Click">Login</asp:LinkButton></td>
        <td align= "left">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="lnkregister"  PostBackUrl="~/Register.aspx" Font-Size="X-Large" runat="server" 
                onclick="lnkregister_Click">Register Now</asp:LinkButton>
        </td>
    </tr>
</table>
<div style="height:50px;"></div>
</center>

</asp:Content>


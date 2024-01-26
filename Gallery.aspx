<%@ Page Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="15" cellspacing="10" align="center">
    <tr>    
        <td><asp:Image ID="Image1" runat="server" Height="230px" Width="230px" ImageUrl="<img src="images/011.jpg" />"</td>
        <td><asp:Image ID="Image2" runat="server" Height="230px" Width="230px" ImageUrl="<img src="images/012.jpg" />" /></td>
        <td><asp:Image ID="Image3" runat="server" Height="230px" Width="230px" ImageUrl="<img src="images/013.jpg" />"  /></td>
    </tr>
    <tr>
        <td><asp:Image ID="Image4" runat="server" Height="230px" Width="230px" ImageUrl="<img src="images/014.jpg" />" /></td>
        <td><asp:Image ID="Image5" runat="server" Height="230px" Width="230px" ImageUrl="<img src="images/015.jpg" />" /></td>
        <td><asp:Image ID="Image6" runat="server" Height="230px" Width="230px" ImageUrl="<img src="images/016.jpg" />" /></td>
    </tr>
   
   <tr>
        <td><asp:Image ID="Image7" runat="server" Height="230px" Width="230px" ImageUrl="<img src="images/sk2.jpg" />" /></td>
        <td><asp:Image ID="Image8" runat="server" Height="230px" Width="230px" ImageUrl="<img src="images/sk3.jpg" />" /></td>
        <td><asp:Image ID="Image9" runat="server" Height="230px" Width="230px" ImageUrl="<img src="images/sk5.jpg" />" /></td>
    </tr>
</table>
</asp:Content>


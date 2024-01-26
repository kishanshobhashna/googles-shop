<%@ Page Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="Contectus-msg.aspx.cs" Inherits="Contectus_msg" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<font size="5" color="White">
Your Message Has Been Successfully Send.
And Thanks For Giving Your Feedback.
<br />
</font>
<asp:LinkButton ID ="lnkback" runat="server" PostBackUrl="~/Home.aspx" style="color:Red;font-size:23px">Go To Home</asp:LinkButton>

</asp:Content>


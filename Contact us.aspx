<%@ Page Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="Contact us.aspx.cs" Inherits="Contact_us" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>
<h2>Feedback</h2></center>
<br />
<center>
<table style="border:1pt solid #6666FF; width:60%; height:424px; font-family: Verdana;
    border-collapse:collapse; background-color:Black;">
<!--Name-->
<tr>
<td align="center">Name:</td>
<td>
<asp:TextBox ID="txtName"  runat="server" Columns="50"></asp:TextBox> 
</td>
<td align="left">
      <asp:RequiredFieldValidator ID="RfvName" Font-Size="X-Large" runat="server" ErrorMessage="* Required" ForeColor="#FF3300" ControlToValidate="txtName"></asp:RequiredFieldValidator>
      <br />
      <asp:RegularExpressionValidator ID="RevNm" Font-Size="X-Large"  runat="server" ForeColor="#FF3300" ControlToValidate="txtName"
          ErrorMessage="Invalid Name" ValidationExpression="[A-z]*"></asp:RegularExpressionValidator>
      </td>
      </tr>
      <!--Phone No-->
      <tr>
      <td align="center">Phone No:</td>
      <td>
      <asp:TextBox ID="txtPhno"  runat="server" Columns="50"></asp:TextBox>
      </td>
      <td>
      <asp:RegularExpressionValidator ID ="RevPhno"  runat="server" ErrorMessage="Invalid Mobile Number" ForeColor="#FF3300" ValidationExpression="^([7-9]{1})([0-9]{9})$" ControlToValidate="txtPhno"></asp:RegularExpressionValidator>
      </td>
      </tr> 
      <!--Email-->
      <tr>
      <td align="center">Email:</td>
      <td>
      <asp:TextBox ID ="txtEmail"  runat="server" Columns="50"></asp:TextBox></td>
      <td align="left">
          <asp:RegularExpressionValidator ID="RevEmail" runat="server" ControlToValidate="txtEmail"
              ErrorMessage="Invalid E-Mail" ForeColor="#FF3300"
              ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
      </td>
      </tr>
      <!--Subject-->
      <tr>
      <td align="center">Subject(Ask a Question):</td>
      <td>
      <asp:DropDownList ID="ddlSubject"  runat="server" Height="24px" Width="320px">
      <asp:ListItem>Report a bug</asp:ListItem>

      <asp:ListItem>Other</asp:ListItem>
      </asp:DropDownList>
      </td>
      <td></td>
      </tr>
      
      <!--Message-->
      <tr>
        <td align="center">
            Message:
        </td>
        <td>
            <asp:TextBox ID="txtMessage" runat="server" Columns="37" Rows="6" TextMode="MultiLine"></asp:TextBox></td>
       <td>
        <asp:RequiredFieldValidator ID="RfvMsg" runat="server" ErrorMessage="* Required" ForeColor="#FF3300" ControlToValidate="txtMessage"></asp:RequiredFieldValidator>
        </td>
      </tr>
      <!--Submit-->
      <tr align="center">
      <td colspan="3">
         <asp:Button ID ="btnSubmit" BackColor="SkyBlue" Font-Bold="true" Width="322px" 
              Height="30px" runat="server" Text="Send" OnClick="btnsubmit_Click" />
         </td>
         </tr>
        </table></center>
</asp:Content>








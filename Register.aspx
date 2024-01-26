<%@ Page Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<div style="height:50px;"></div>
<table style="border:1pt solid #6666FF; width:60%; height:424px; font-family: Verdana;
    border-collapse:collapse; background-color:gray;">
    <tr>
    <td align="center" colspan="3" class="style9">
    <asp:Label ID="lblHeader" runat="server" Text="Registration Form" Font-Bold="true"></asp:Label>
    
    
     </td>
    </tr>
<tr>
    <td align="right">
        <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
    </td>
    <td align="left">
        <asp:TextBox ID="txtFirstName" runat="server" Width="150px"></asp:TextBox>
    </td>
    <td align="left">
        <asp:RequiredFieldValidator ID="RfvFirstName" runat="server" ErrorMessage="*Required" ForeColor="#FF3300"
controlToValidate="txtFirstName"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RevFnm" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Invalid Name" ForeColor="#FF3300" ValidationExpression="[A-z]*"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
    <td align="right">
        <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
    </td>
    <td align="left">
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
    </td>
    <td align="left">
        <asp:RequiredFieldValidator ID="Rfvlnm" runat="server" ErrorMessage="* Required" ForeColor="#FF3300" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RevLastName" runat="server" ErrorMessage="Invalid Name" ValidationExpression="[A-z]*" ForeColor="#FF3300" ControlToValidate="txtLastName"></asp:RegularExpressionValidator>
    </td>
 </tr>
 <tr>
    <td align="right">
        <asp:Label ID="lblEmail" runat="server" Text="E-Mail :"></asp:Label>
    </td>
    <td align="left">
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
   </td>
    <td align="left">
        <asp:RequiredFieldValidator ID="RfvUserName" runat="server" ErrorMessage="*Required" ForeColor="#FF3300" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RevEmail" runat="server" 
            ControlToValidate="txtEmail" ErrorMessage="invalid E-Mail" ForeColor="#FF3300" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
 </td>
</tr>
<tr>
    <td align="right">
        <asp:Label ID="lblPassword" runat="server" Text="Password : "></asp:Label>
    </td>
    <td align="left">
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="152px"></asp:TextBox>
    </td>
    <td align="left">
        <asp:RequiredFieldValidator ID="RfvPwd" runat="server" ErrorMessage="* Required" ForeColor="#FF3300" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
    <td align="right">
        <asp:Label ID="lblconfirmpwd" runat="server" Text="confirm pasword:" 
            Height="120%" Width="79%"></asp:Label>
    </td>
    <td align="left">
        <asp:TextBox ID="txtconfirmpwd" runat="server" TextMode="Password" 
            Width="151px"></asp:TextBox>
    </td>
    <td align="left">
        <asp:RequiredFieldValidator ID="rfvcnfrmpwd" runat="server" ForeColor="#FF3300" ControlToValidate="txtConfirmpwd" 
            ErrorMessage="* Required"></asp:RequiredFieldValidator>
        <br />
        <asp:CompareValidator ID="CvCnfmPWd" runat="server" ForeColor="#FF3300" 
            ControlToCompare="txtPassword" ControlToValidate="txtconfirmpwd" 
            ErrorMessage="Password Does Not Match"></asp:CompareValidator>
    </td>
</tr>   
<tr>
    <td align="right">
        <asp:Label ID="lblGender" runat="server" Text="gender :"></asp:Label>
    </td>
    <td align="left">
        <asp:RadioButtonList ID="rdoGender" runat="server" RepeatDirection="Horizontal" Width="176px">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
    </td>
    <td align="left">
        <asp:RequiredFieldValidator ID="RfvGender" runat="server" ErrorMessage="* Required" ForeColor="#FF3300" ControlToValidate="RdoGender"></asp:RequiredFieldValidator>
    </td>
</tr>    
<tr>
    <td align="right">
        <asp:Label ID="lblDob" runat="server" Text="Date Of Birth :"></asp:Label>
    </td>
    <td align="left">
        <asp:TextBox ID="txtDob" runat="server"></asp:TextBox> 
        &nbsp;<asp:Label ID="Label1" runat="server" Text="(dd/mm/yyyy)"></asp:Label>
    </td>
    <td align="left">
        <asp:RequiredFieldValidator ID="rfvbDate" runat="server" 
            ErrorMessage="*Required" ForeColor="#FF3300" ControlToValidate="txtDob"></asp:RequiredFieldValidator>
        &nbsp;<br />
        <asp:RegularExpressionValidator ID="Revdob" runat="server" ControlToValidate="txtDob" ErrorMessage="Invalid Date Format"  ValidationExpression="[0-9]{2}/[0-9]{2}/[0-9]{4}"
 ForeColor="#FF3300"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>    
    <td align="right">
        <asp:Label ID="lblMobile" runat="server" Text="Mobile"></asp:Label>
    </td>
    <td align="left">
        <asp:TextBox ID="txtMobile" runat="server" MaxLength="10">
        </asp:TextBox>
    </td>
    <td align="left">
        <asp:RegularExpressionValidator ID="RevMobile" runat="server" ErrorMessage="Invalid Mobile number" ForeColor="#FF3300" ValidationExpression="^([7-9]{1})([0-9]{9})$" ControlToValidate="txtmobile"></asp:RegularExpressionValidator>
    </td>
</tr>
<tr>
    <td align="right"> 
        <asp:Label ID="lblAddress" runat="server" Text="address :"></asp:Label>
    </td>
    <td align="left">
        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
    </td>
    <td align="left">
        <asp:RequiredFieldValidator ID="refAddress" runat="server" ErrorMessage="* required" ForeColor="Red" ControlToValidate="txtAddress">
        </asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
    <td></td>
    <td align="center">
        <asp:Button ID="btnSubmit" runat="server" Text="submit" OnClick="btnsubmit_click" />
        &nbsp;
        <asp:Button ID="btnClear" runat="server" Text="clear" Width="42px" 
        onclick="btnClear_Click" />
    </td>
    <td>
    </td>
</tr>
</table>
<div style="height:50px;"></div>    
</center>



</asp:Content>


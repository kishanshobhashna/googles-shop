<%@ Page Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="Shipping.aspx.cs" Inherits="Shipping" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<div style="height:50px;"></div>
<table align="center">
    <tr>
        <td align="center" colspan="3">
            <asp:Label ID="lblHeader" runat="server" Text="Shipping Details" Font-Bold="true"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="right">
            <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
        </td>
        <td align="left">
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </td>
        <td align="left">
            <asp:RequiredFieldValidator ID="RfvName" runat="server" ErrorMessage="*Required"
            ForeColor="#FF3300" ControlToValidate="txtName"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RevNm" runat="server" ControlToValidate="txtName"
            ErrorMessage="Invalid Name" ForeColor="#FF3300"
            ValidationExpression="[A-z]*"></asp:RegularExpressionValidator>
        </td>
    </tr> 
    <tr>
        <td align="right">
            <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>
        </td>
        <td align="left">
            <asp:TextBox ID="txtAddress" TextMode="MultiLine" runat="server"></asp:TextBox>
        </td>
        <td align="left">
            <asp:RequiredFieldValidator ID="RfvAddress" runat="server" ErrorMessage= "*Requied" ForeColor="Red"
            ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right">
            <asp:Label ID="lblCity" runat="server" Text="city:"></asp:Label>
        </td> 
        <td align="left">
            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
        </td>
        <td align="left">
            <asp:RequiredFieldValidator ID="RfvCity" runat="server" ErrorMessage= "*Required" ForeColor="#FF3300"
            ControlToValidate="txtCity"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RevCity" runat="server"
            ControlToValidate="txtCity" ErrorMessage="Invaild Name" ForeColor="#FF3300"
            ValidationExpression="[A-z]*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td align="right">
            <asp:Label ID="lblState" runat="server" Text="State :"></asp:Label>
        </td>
        <td align="left">
            <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
        </td>
        <td align="left">
            <asp:RequiredFieldValidator ID="rfvState" runat="server" 
            ControlToValidate="txtState" EnableViewState="False" ErrorMessage="* Required"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="revState" runat="server" 
                ErrorMessage="Invalid " ControlToValidate="txtState" 
                ValidationExpression="[A-z]*"></asp:RegularExpressionValidator>
            
        </td>
    </tr>
    <tr>
        <td align="right">
            <asp:Label ID="lblCountry" runat="server" Text="Country :"></asp:Label>
        </td>
        <td align="left">
            <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
        </td>
        <td align="left">
            <asp:RequiredFieldValidator ID="RfvCountry" runat="server" ErrorMessage="*Required" ForeColor="#FF3300" ControlToValidate="txtCountry"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RevCountry" runat="server" ControlToValidate="txtCountry" ErrorMessage="Invalid Name" ForeColor="#FF3300" ValidationExpression="[A-z]*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td align="right">
            <asp:Label ID="lblMoblie" runat="server" Text="phone No.."></asp:Label>
        </td>
        <td align="left"> 
            <asp:TextBox ID="txtMoblie" runat="server" MaxLength="10"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RevMoblie" runat="server" ErrorMessage="Invalid Moblie Number" ForeColor="#FF3300" ValidationExpression="^([7-9]{1})([0-9]{9})$"
             ControlToValidate="txtMoblie"></asp:RegularExpressionValidator>
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
            <asp:RequiredFieldValidator ID="RfvUserName" runat="server" ErrorMessage=" *Required" ForeColor="#FF3300" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RevEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="lnvalid E-Mail" ForeColor="#FF3300" 
            validationExpression="\w+([-+.']\w+)*@\w+([-.w]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:Button ID="btnSubmit" runat="server" Text="Subk" OnClick="btnSubmit_Click" />
        </td>
        <td>
            <asp:Button ID="btnClear" runat="server" CausesValidation="false" Text="Clear" Width="42px" />
        </td>
        <td align="center">
        </td>
    </tr>
</table>
<div style="height:50px;"></div>
</center>


</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" 
        onrowcommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid" />
            <asp:BoundField DataField="pnm" HeaderText="pnm" SortExpression="pnm" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
            <asp:BoundField DataField="cart_date" HeaderText="cart_date" 
                SortExpression="cart_date" />
            <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
            <asp:BoundField DataField="unm" HeaderText="unm" SortExpression="unm" />
            <asp:TemplateField HeaderText="Edit">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" Font-Size="X-Large" runat="server" Text='<%# Bind("cart_id") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1"  runat="server" 
                        CommandArgument='<%# Eval("pid") %>' CommandName="ed">Edit</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete">
            <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("cart_id") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" 
                        CommandArgument='<%# Eval("pid") %>' CommandName="del">Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MyConnection %>" 
        SelectCommand="SELECT * FROM [Cart]"></asp:SqlDataSource>
    <asp:LinkButton ID="lnkcheckout" runat="server" OnClick="lnkcheckout_Click">Checkout</asp:LinkButton>
    <asp:Panel ID="Panel1" runat="server" Visible="false">
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" Font-Size="X-Large" runat="server" Text="Enter Quantity:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtqty" runat="server"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:LinkButton ID="lnkedit" runat="server" OnClick="lnkedit_Click">Update</asp:LinkButton>
                </td>
            </tr>
        </table>
    </asp:Panel>
   
</asp:Content>


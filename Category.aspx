<%@ Page Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<ul type="none">

    <li>
        <font size="+4">Select An Category:-</font>
    </li>
</ul>
<hr />

<ul type="square">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="cat_id" 
            DataSourceID="SqlDataSource1" onitemcommand="DataList1_ItemCommand" 
            Width="190px" onselectedindexchanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <li><asp:LinkButton ID="LinkButton1" runat="server"  Font-Size="X-Large"
                    CommandArgument='<%# Eval("cat_id") %>' Text='<%# Eval("cat_nm") %>'></asp:LinkButton></li>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MyConnection %>" 
            SelectCommand="SELECT * FROM [Category]" 
            onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
</ul>
    

</asp:Content>


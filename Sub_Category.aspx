<%@ Page Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="Sub_Category.aspx.cs" Inherits="Sub_Category" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<ul type="none">
    <li>Select An Sub-Category:</li>
</ul>
<hr />
<ul type="square">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="sub_cat_id" 
        DataSourceID="SqlDataSource1" onitemcommand="DataList1_ItemCommand">
        <ItemTemplate>
            <li><asp:LinkButton ID="LinkButton1" runat="server"  Font-Size="X-Large"
                CommandArgument='<%# Eval("sub_cat_id") %>' Text='<%# Eval("sub_cat_nm") %>'></asp:LinkButton></li>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MyConnection %>" 
        SelectCommand="SELECT * FROM [Sub_Category] WHERE ([cat_id] = @cat_id2)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="2" Name="cat_id2" QueryStringField="v" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</ul>

<%--<ul type="none">
<li>
<font size="+2">Select An Sub Category:-</font>
</li>
</ul>
<hr />
<br />
<ul type="square">
<asp:DataList ID="DataList1" runat="server" DataKeyField="sub_cat_id"
DataSourcelId="SqlDaraSource1" OnItemCommand="DataList1_ItemCommand">
<ItemTemplate>
<li><asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("Sub_cat_id") %>'></asp:LinkButton> 
</li>
</ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server"
ConnectionString="<%$ ConnectionString:MyConnection % %>"
SelectCommand="SELECT * FROM[Sub_Category]WHERE([cat_id]=@cat_id)">
<SelectParameters>
<asp:QueryStringParameter DefaultValue="1" Name="Cat_id" QueryStringField="v" 
Type="Int32" />


</SelectParameters>
</asp:SqlDataSource>


</ul>  --%>  
</asp:Content>


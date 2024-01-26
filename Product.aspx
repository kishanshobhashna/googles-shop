<%@ Page Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table align="center" style="border:1pt solid #ffffff; width:60%; height:424px; font-family: Verdana;
    border-collapse:collapse; background-color:gray;">>
    <tr>
        <td>
            <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server"  Font-Size="X-Large" Text='<%# Eval("sub_cat_nm") %>'></asp:Label>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"  
                ConnectionString="<%$ ConnectionStrings:MyConnection %>" 
                SelectCommand="SELECT * FROM [Sub_Category] WHERE ([sub_cat_id] = @sub_cat_id)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="1" Name="sub_cat_id" 
                        QueryStringField="v" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
        <table cellpadding="15px" cellspacing="15px">
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="pid" RepeatColumns="3"
                        DataSourceID="SqlDataSource1" onitemcommand="DataList1_ItemCommand">
                        <ItemTemplate>
                            <table style="width:100%;">
                                <tr>
                                    <td>
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="150px" Width="150px"
                                            CommandArgument='<%# Eval("pid") %>' ImageUrl='<%# Eval("img") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="LinkButton1" runat="server" 
                                            CommandArgument='<%# Eval("pid") %>' Text='<%# Eval("pnm") %>'></asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:MyConnection %>" 
                        
                        SelectCommand="SELECT * FROM [Product] WHERE (([sub_cat_id] = @sub_cat_id) AND ([sub_cat_id] = @sub_cat_id2))">
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="1" Name="sub_cat_id" 
                                QueryStringField="v" Type="Int32" />
                            <asp:QueryStringParameter DefaultValue="1" Name="sub_cat_id2" 
                                QueryStringField="v" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>        
                </td>
            </tr>
        </table>
        
        </td>
    </tr>
</table>
    
<%--<table>
    <tr align="center">
        <td>
            <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Font-Bold="true" Font-Size="XX-Large" ForeColor="#734633" Text='<%#Eval("sub_cat_nm")%>'></asp:Label>
                <br />
                <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionString:MyConnection%>" SelectCommand="SELECT * FROM[Sub_Category] WHERE ([sub_cat_id]=@sub_cat_id)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="1" Name="sub_cat_id" QueryStringField="v" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <table style="width:100%;">
                        <tr>
                            <td colspan="2">
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="150px" Width="150px" CommandArgument='<%#Eval("pid")%>' PostBackUrl='<%#"~/View.aspx?id="+Eval("pid")%>' ImageUrl='<%#Eval("pnm")%>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("pnm")%>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionString:MyConnection %>" SelectCommand="SELECT * FROM[Product]WHERE([sub_cat_id]=@cat_id)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="1" Name="cat_id" QueryStringField="v" Type="Int32" />    
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
Response.Redirect("View.aspx?id="+e.CommandArgument);--%>



</asp:Content>


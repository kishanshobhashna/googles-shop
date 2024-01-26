<%@ Page Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:TextBox ID="txtpnm" runat="server" Visible="false"></asp:TextBox>
<asp:TextBox ID="txtPrice" runat="server" Visible="false"></asp:TextBox>
<asp:TextBox ID="txtimg" runat="server" Visible="false"></asp:TextBox>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="pid" 
    DataSourceID="SqlDataSource1" onitemcommand="DataList1_ItemCommand" 
        onselectedindexchanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td colspan="2">
                        <asp:Image ID="Image1"  Font-Size="X-Large" runat="server" ImageUrl='<%# Eval("img") %>' Height="300px" Width="300px"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Name : "></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server"  Text='<%# Eval("pnm") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Price :"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            CommandArgument='<%# Eval("pid") %>'>Add To Cart</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:MyConnection %>" 
    SelectCommand="SELECT * FROM [Product] WHERE ([pid] = @pid)">
    <SelectParameters>
        <asp:QueryStringParameter DefaultValue="1" Name="pid" QueryStringField="v" 
            Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
<%--
<asp:DataList ID="DataList1" runat="server" DataSourceID="sqlDataSource1" OnItemCommand="DataList1_ItemCommand">
<ItemTemplate>
     <table style="Width:100%;">
     <tr>
    <td colspan="2">
<asp:Image ID="image1" runat="server" Height="200px"
      ImageUrl='<%#Eval("img") %>'Width="200px" />
  </td>
  </tr>
  <tr>
    <td>
        <asp:Label ID="Label1" runat="server" Text="Name :"></asp:Label>
              
   </td>
   <td>
         <asp:Label ID="Label2" runat="server" Text='<%#Eval("pnm")% %>'></asp:Label>
    </td>
    </tr>
    <td>
          <asp:Label ID="Label3" runat="server" Text="price :"></asp:Label>
    </td>
    <td>
          <asp:Label ID="Label4" runat="server" Text='<%#Eval("price") %>'></asp:Label>
     </td>
     </tr>
     <tr>
     <td colspan="2">
           <asp:LinkButton ID="LinkButton2" runat="server"
               CommandArgument='<%#Eval("pid" %>'>Add To Cart</asp:LinkButton>
     </td>     
     </tr>
     </table>
     </ItemTemplate>
     </asp:DataList>
         
          <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ConnectionString:MyConnection %>"
            SelectCommand="SELECT * FROM[product] WHERE([pid]="pid" QueryStringField="id"  Type="Int32" />
            </SelectParameters>
            </asp:SqlDataSource>--%>

</asp:Content>


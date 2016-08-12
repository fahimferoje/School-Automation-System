<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:GridView ID="GridView4" AutoGenerateColumns = "False"  runat="server" AllowPaging="True" BackColor="White" BorderColor="White" BorderWidth="2px" CellPadding="3" PageSize="6"  BorderStyle="Ridge" CssClass="grid" CellSpacing="1" GridLines="None"  >
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="FileCheckBox"  runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Name" ItemStyle-Width = "200px"  HeaderText="Name" HtmlEncodeFormatString="False" >
                    <ItemStyle Width="150px"></ItemStyle>
                </asp:BoundField>
                 
                <asp:BoundField DataField="ID" ItemStyle-Width = "200px"  HeaderText="ID" HtmlEncodeFormatString="False" >
                    <ItemStyle Width="150px"></ItemStyle>
                </asp:BoundField>
            </Columns>
            
    <HeaderStyle BackColor="#336699" ForeColor="White" Height="20" />
           
</asp:GridView>
        
         
        </div>
        <asp:Button ID="chk" runat="server" Height="35px" Text="Accept" Width="102px" OnClick="acceptproblem_Click" />
    </form>
</body>
</html>

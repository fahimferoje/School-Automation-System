<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pendingproblems.aspx.cs" Inherits="pendingproblems" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="homestyle.css" rel="stylesheet" />
    <script src="JavaScript.js"></script>
    <script src="Scripts/jquery-2.1.0.intellisense.js"></script>
    <script src="Scripts/jquery-2.1.0.js"></script>
    <script src="Scripts/jquery-2.1.0.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        
       <div id="problemfirstdiv">
           <div id="problemnamediv" style="width:300px;">Pending Problems List</div>
        <asp:GridView ID="GridView4" AutoGenerateColumns = "False"  runat="server" onpageindexchanging = "GridView1_PageIndexChanging" AllowPaging="True" BackColor="White" BorderColor="White" BorderWidth="2px" CellPadding="3" PageSize="6"  BorderStyle="Ridge" CssClass="grid" CellSpacing="1" GridLines="None"  >
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="FileCheckBox"  runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Author" ItemStyle-Width = "200px"  HeaderText="Author" HtmlEncodeFormatString="False" >
                    <ItemStyle Width="150px"></ItemStyle>
                </asp:BoundField>
                 <asp:TemplateField HeaderText="Problem Name">   
                <ItemTemplate>
                    <asp:LinkButton Text='<%#Eval("Problem Name")%>' PostBackUrl='<%# String.Format("Dynamic.aspx?ID=2&filepath={0}",  Eval("Problem Name")   ) %>' runat="server"  />
                </ItemTemplate>
                <ItemStyle Width="250px" CssClass="itemstyle"></ItemStyle>
            </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
           <asp:Button ID="accept" runat="server" Text="Accept" OnClick="acceptproblem_Click" />
    </div>
    
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageUsers.aspx.cs" Inherits="Administrator_ManageUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="UserAccounts" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="UserName" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:CheckBoxField DataField="IsApproved" Text="Approved?" />
                <asp:CheckBoxField DataField="IsLockedOut" Text="Locked Out" />
                <asp:CheckBoxField DataField="IsOnline" />
                <asp:BoundField DataField="Comment" HeaderText="Comment" />
            </Columns>
        </asp:GridView>
    <div>
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" EnableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Check Username availability Using Ajax</title>
    <style type="text/css">
    .waitingdiv {
    background-color: #F5F8FA;
    border: 1px solid #5A768E;
    color: #333333;
    font-size: 93%;
    margin-bottom: 1em;
    margin-top: 0.2em;
    padding: 8px 12px;
    width: 8.4em;
}
</style>
    
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="scriptmanager1" runat="server">
    </asp:ScriptManager>
    <script type="text/javascript">
Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);
function BeginRequestHandler(sender, args) {
var state = document.getElementById('loadingdiv').style.display;
			if (state == 'block') {
				document.getElementById('loadingdiv').style.display = 'none';
			} else {
				document.getElementById('loadingdiv').style.display = 'block';
			}
args.get_postBackElement().disabled = true;
}
</script>
     <div>
    
     <asp:UpdatePanel ID="PnlUsrDetails" runat="server">
    <ContentTemplate>
    <table>
    <tr>
    <td>
    UserName:
    </td>
    <td>
       <asp:TextBox ID="txtUsername" runat="server" AutoPostBack="true" ontextchanged="txtUsername_TextChanged"/>
    </td>
    <td>
      <div id="checkusername" runat="server"  Visible="false">
        <asp:Image ID="imgstatus" runat="server" Width="17px" Height="17px"/>
        <asp:Label ID="lblStatus" runat="server"></asp:Label>
    </div>
    </td>
    </tr>
    </table>
    <div class="waitingdiv" id="loadingdiv" style="display:none; margin-left:5.3em">
    <img src="LoadingImage.gif" alt="Loading" />Please wait...
    </div>
    </ContentTemplate>
    </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>

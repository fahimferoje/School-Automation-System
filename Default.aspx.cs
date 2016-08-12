using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }
protected void txtUsername_TextChanged(object sender, EventArgs e)
{
if(!string.IsNullOrEmpty(txtUsername.Text))
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString());
con.Open();
SqlCommand cmd = new SqlCommand("select * from UserTable where id=@id", con);
cmd.Parameters.AddWithValue("@id", txtUsername.Text);
SqlDataReader dr = cmd.ExecuteReader();
if (dr.HasRows)
{
checkusername.Visible = true;
imgstatus.ImageUrl = "NotAvailable.jpg";
lblStatus.Text = "UserName Already Taken";
System.Threading.Thread.Sleep(2000);
}
else
{
checkusername.Visible = true;
imgstatus.ImageUrl = "Icon_Available.gif"; 
lblStatus.Text = "UserName Available";
System.Threading.Thread.Sleep(2000);
}
}
else
{
checkusername.Visible = false;
}
}
}

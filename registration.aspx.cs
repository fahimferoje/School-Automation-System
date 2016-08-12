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

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_to_database(object sender, EventArgs e)
    {
        /*SqlConnection cnn = new SqlConnection();
        cnn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlconnection "].ConnectionString;
        cnn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from  Table";
        cmd.Connection = cnn;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
       DataSet ds = new DataSet();
        da.Fill(ds, " Table ");
        SqlCommandBuilder cb = new SqlCommandBuilder(da);
        DataRow drow = ds.Tables["Table"].NewRow();
        drow["name"] = TextBox1.Text;
        drow["phone"] = TextBox2.Text;
        drow["id"] = TextBox3.Text;
        drow["password"] = TextBox4.Text;

        ds.Tables["Table"].Rows.Add(drow);
        da.Update(ds, " Table");
        string script = @"<script language=""javascript"">
        alert('Information have been Saved Successfully.......!!!!!.');
       </script>;";
        Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);*/
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString()))
        {
            cn.Open();


            SqlCommand cmd1 = new SqlCommand("INSERT INTO [UserTable] ([name],[phone],[id],[password],[status]) VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + 1 + "') ", cn);
            // SqlCommand cmd1 = new SqlCommand("INSERT INTO Table values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", cn);
            SqlDataReader rdr = cmd1.ExecuteReader(CommandBehavior.CloseConnection);
            //if(rdr[""])
            //Response.Redirect("Registered.aspx");

            cn.Close();
        }
    }
    protected void txtUsername_TextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(TextBox3.Text))
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from UserTable where id=@id", con);
            cmd.Parameters.AddWithValue("@id", TextBox3.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                checkusername.Visible = true;
                //imgstatus.ImageUrl = "NotAvailable.jpg";
                lblStatus.Text = "UserID Already Taken";
                System.Threading.Thread.Sleep(2000);
            }
            else
            {
                checkusername.Visible = true;
                //imgstatus.ImageUrl = "Icon_Available.gif";
                lblStatus.Text = "UserID Available";
                System.Threading.Thread.Sleep(2000);
            }
        }
        else
        {
            checkusername.Visible = false;
        }
    }
}

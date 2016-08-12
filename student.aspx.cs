using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
public partial class student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["chat"];
        if (cookie != null && Session["user"] == null)
        {
            Session["user"] = cookie["name"];
        }
        if (Session["user"] != null)
            Response.Redirect("user.aspx");
    }
    protected void submitButton_Click(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString()))
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("SELECT id,password,status FROM [UserTable]",cn);
            SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            while(drd.Read())
            {
                string n = Convert.ToString(drd["id"]);
                string m = Convert.ToString(usernameTextBox.Text);
                int a = Convert.ToInt32(drd["status"]);

                string p = Convert.ToString(drd["password"]);
                string q = Convert.ToString(passwordTextBox.Text);
                if((m==n)&& (p==q) && a==0)
                {
                     if(CheckBox1.Checked==true)
                        {
                            HttpCookie cooki;
                            cooki = new HttpCookie("chat");
                            cooki["username"] = usernameTextBox.Text;
                            cooki["password"] = passwordTextBox.Text;
                            cooki.Expires = DateTime.Now.AddDays(7);
                            Response.Cookies.Add(cooki);
                        }
                    Session["user"]=usernameTextBox.Text;
                    Response.Redirect("User.aspx");
                }
            }

        }
    }
   
    
}
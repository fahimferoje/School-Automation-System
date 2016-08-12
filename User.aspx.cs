
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

public partial class User : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["chat"];
        if (cookie != null && Session["user"] == null)
        {
            Session["user"] = cookie["name"];
        }
        if (Session["user"] == null)
        {
            Response.Redirect("student.aspx");

        }
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString()))
        {
            cn.Open();
            string s = Session["user"].ToString();
           
            SqlCommand cmd = new SqlCommand("SELECT * FROM [UserTable]", cn);
            SqlDataReader drd = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            while (drd.Read())
            {
                if (drd["id"].ToString() == s)
                {
                    Label5.Text = drd["name"].ToString();
                    Label1.Text = drd["name"].ToString();
                    Label2.Text = drd["id"].ToString();
                    Label4.Text = drd["phone"].ToString();


                }
            }
            cn.Close();
        }
    }
    protected void sign_out_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        HttpCookie cooki = new HttpCookie("chat");
        cooki.Expires = DateTime.Now.AddMilliseconds(-100);
        Response.Cookies.Add(cooki);
        Response.Redirect("student.aspx");

    }
}
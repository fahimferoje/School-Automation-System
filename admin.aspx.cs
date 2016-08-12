using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GridView4.DataSource = GetDataTable();
            GridView4.DataBind();
        }
    }
    public System.Data.DataTable GetDataTable()
    {
        ArrayList myArrayList = ConvertDataSetToArrayList();

        // Display each item of ArrayList
        DataTable dt = new DataTable();
        dt.Columns.Add("Name");
        dt.Columns.Add("ID");
        foreach (Object row in myArrayList)
        {
            dt.Rows.Add();
            dt.Rows[dt.Rows.Count - 1]["Name"] = ((DataRow)row)["name"].ToString();
            dt.Rows[dt.Rows.Count - 1]["ID"] = ((DataRow)row)["id"].ToString();

        }

        return dt;
    }
    public ArrayList ConvertDataSetToArrayList()
    {
        string con = " ";
        con = ConfigurationManager.ConnectionStrings["Con"].ToString();
        SqlConnection objsqlconn = new SqlConnection(con);
        objsqlconn.Open();
        SqlCommand cmd = new SqlCommand("SELECT id,name FROM UserTable where status='1'", objsqlconn);
        cmd.ExecuteNonQuery();
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter myAdapter = new SqlDataAdapter();
        myAdapter.SelectCommand = cmd;

        DataSet myDataSet = new DataSet();
        myAdapter.Fill(myDataSet);

        ArrayList myArrayList = new ArrayList();
        foreach (DataRow dtRow in myDataSet.Tables[0].Rows)
        {
            myArrayList.Add(dtRow);
        }
        objsqlconn.Close();
        return myArrayList;
    }
    protected void acceptproblem_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView4.Rows.Count; i++)
        {
            CheckBox chk = (CheckBox)GridView4.Rows[i].FindControl("FileCheckBox");
            if (chk.Checked == true)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["Con"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();
                string probname=GridView4.Rows[i].Cells[1].Text;
                

                SqlCommand problemid = new SqlCommand("SELECT id  FROM UserTable WHERE name='"+ probname +"'", conn);
                SqlDataReader grpIDreader = problemid.ExecuteReader();
                grpIDreader.Read();
                string tuid = grpIDreader["id"].ToString();
                grpIDreader.Close();

               // string acc = "0";
                SqlCommand objcm = new SqlCommand("Update UserTable set status='" + 0 + "'  where id=" + "'" + tuid + "'", conn);
                objcm.ExecuteNonQuery();

                conn.Close();


            }
        }
        Response.Redirect("admin.aspx");
    }
}


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

public partial class pendingproblems : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
            //Response.Redirect("home.aspx");
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
        dt.Columns.Add("Author");
        dt.Columns.Add("Problem Name");
        foreach (Object row in myArrayList)
        {
            dt.Rows.Add();
            dt.Rows[dt.Rows.Count - 1]["Author"] = ((DataRow)row)["userid"].ToString();
            dt.Rows[dt.Rows.Count - 1]["Problem Name"] = ((DataRow)row)["problemname"].ToString();

        }

        return dt;
    }


    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView4.PageIndex = e.NewPageIndex;
        GridView4.DataSource = GetDataTable();
        GridView4.DataBind();
    }

    public ArrayList ConvertDataSetToArrayList()
    {

        string con = " ";
        con = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        SqlConnection objsqlconn = new SqlConnection(con);
        objsqlconn.Open();
        SqlCommand cmd = new SqlCommand("SELECT userid,problemname FROM problemtable where status='pending'", objsqlconn);
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
                string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();
                string probname = "";
                foreach (Control ctl in GridView4.Rows[i].Cells[2].Controls)
                {
                    if (ctl is LinkButton)
                    {
                        probname = ((LinkButton)ctl).Text;
                    }
                }
                

                SqlCommand problemid = new SqlCommand("SELECT problemid FROM problemtable WHERE problemname =" + "'" + probname + "'", conn);
                SqlDataReader grpIDreader = problemid.ExecuteReader();
                grpIDreader.Read();
                string tuid = grpIDreader["problemid"].ToString();
                int tid = Convert.ToInt32(tuid);
                grpIDreader.Close();

                string acc = "accepted";
                SqlCommand objcm = new SqlCommand("Update problemtable set status='" + acc + "'  where problemid=" + "'" + tid + "'", conn);
                objcm.ExecuteNonQuery();

                conn.Close();

               
            }
        }
        Response.Redirect("pendingproblems.aspx");
    }
}
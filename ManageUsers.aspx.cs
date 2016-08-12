﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Administrator_ManageUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            BindUserAccounts();
    }
    private void BindUserAccounts()
    {
        UserAccounts.DataSource = Membership.GetAllUsers();
        UserAccounts.DataBind();
    }
}
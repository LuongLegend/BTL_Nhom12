﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 
            if (Session["fullname"] == null) Response.Redirect("/Login.aspx");
            if (HttpContext.Current.Session["role"].ToString() != "admin" && HttpContext.Current.Session["role"].ToString() != "purchaser")
            {
                Response.Redirect("/Home.aspx");
            }
        }
    }
}
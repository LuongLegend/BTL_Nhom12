using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;
namespace GUI
{
    public partial class MyAccount : System.Web.UI.Page
    {
        Admin ad = new Admin();
        BUS_MyAccount acc = new BUS_MyAccount();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fullname"] == null) Response.Redirect("/Login.aspx");
        }

    }
}
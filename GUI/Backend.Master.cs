using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI
{
    public partial class Backend : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["fullname"] != null)
            {
                lablAdminName.Text = HttpContext.Current.Session["fullname"].ToString();
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["fullname"] = null;
            Session["role"] = null;
            Response.Redirect("/Login.aspx");
        }
    }
}
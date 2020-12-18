using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace GUI
{
    public partial class Contact : System.Web.UI.Page
    {
        BUS_Contact bus_contact = new BUS_Contact();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fullname"] == null) Response.Redirect("/Login.aspx");
            if (!HttpContext.Current.Session["role"].ToString().Equals("admin") && !HttpContext.Current.Session["role"].ToString().Equals("marketer"))
            {
                Response.Redirect("/Home.aspx");
            }

            gvContact.DataSource = bus_contact.getAllContact();
            gvContact.DataBind();
        }

        protected void gvContact_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvContact_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}
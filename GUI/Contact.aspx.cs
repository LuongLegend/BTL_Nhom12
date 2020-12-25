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

            GV_Contact.DataSource = bus_contact.getAllContact();
            GV_Contact.DataBind();
        }

        protected void GV_Contact_RowEditing(object sender, GridViewEditEventArgs e)
        {
            string contact_ID = GV_Contact.DataKeys[e.NewEditIndex].Value.ToString();
            Response.Redirect("UpdateContact.aspx?contact_ID=" + contact_ID);
        }

        protected void GV_Contact_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GV_Contact.PageIndex = e.NewPageIndex;
            GV_Contact.DataSource = bus_contact.getAllContact();
            GV_Contact.DataBind();
        }
        protected void btnSearch_Click1(object sender, EventArgs e)
        {
            string timeStart = txtDateStart.Text != "" ? txtDateStart.Text : "none";
            string timeEnd = txtDateEnd.Text != "" ? txtDateEnd.Text : "none";
            GV_Contact.DataSource = bus_contact.findContact(txtKeyword.Text, DropDownList1.SelectedValue, timeStart, timeEnd);
            GV_Contact.DataBind();
        }
    }
}
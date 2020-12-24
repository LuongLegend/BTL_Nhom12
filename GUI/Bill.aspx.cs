using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using System.Windows;

namespace GUI
{
    public partial class Bill : System.Web.UI.Page
    {
        BUS_Bill bus_bill = new BUS_Bill();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fullname"] == null) Response.Redirect("/Login.aspx");
            if (!HttpContext.Current.Session["role"].ToString().Equals("admin") && !HttpContext.Current.Session["role"].ToString().Equals("approver"))
            {
                Response.Redirect("/Home.aspx");
            }

            dislayBills();
        }

        public void dislayBills()
        {
            GV_Bill.DataSource = bus_bill.getAllBill();
            GV_Bill.DataBind();
        }


        protected void GV_Bill_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GV_Bill_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string bill_ID = GV_Bill.DataKeys[e.RowIndex].Value.ToString();

            bus_bill.deleteBill(bill_ID);
            Response.Redirect("/Bill.aspx");
        }
    }
}
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


        

        protected void GV_Bill_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string bill_ID = GV_Bill.DataKeys[e.RowIndex].Value.ToString();

            bus_bill.deleteBill(bill_ID);
            Response.Redirect("/Bill.aspx");
        }


        protected void GV_Bill_RowEditing(object sender, GridViewEditEventArgs e)
        {
            string bill_ID = GV_Bill.DataKeys[e.NewEditIndex].Value.ToString();
            Response.Redirect("UpdateBill.aspx?bill_ID=" + bill_ID);
        }

        protected void GV_Bill_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GV_Bill.PageIndex = e.NewPageIndex;
            dislayBills();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string timeStart = txtDateStart.Text != "" ? txtDateStart.Text : "none";
            string timeEnd = txtDateEnd.Text != "" ? txtDateEnd.Text : "none";
            GV_Bill.DataSource = bus_bill.findBill(txtKeyword.Text, DropDownList1.SelectedValue, timeStart, timeEnd);
            GV_Bill.DataBind();

        }
    }
}
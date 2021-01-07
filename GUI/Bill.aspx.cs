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
            if (!IsPostBack)
            {
            dislayBills();
            }
        }

        public void dislayBills()
        {
  
            GridView1.DataSource = bus_bill.getAllBill();
            GridView1.DataBind();
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string timeStart = txtDateStart.Text != "" ? txtDateStart.Text : "none";
            string timeEnd = txtDateEnd.Text != "" ? txtDateEnd.Text : "none";
            GridView1.DataSource = bus_bill.findBill(txtKeyword.Text, DropDownList1.SelectedValue, timeStart, timeEnd);
            GridView1.DataBind();

        }

        protected void GV_Bill_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            dislayBills();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "editBill")
            {
                string id = GridView1.Rows[int.Parse(e.CommandArgument.ToString())].Cells[0].Text;
                Response.Redirect("UpdateBill.aspx?bill_ID=" + id);
            }
        }
    }
}
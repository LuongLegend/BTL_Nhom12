using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace GUI
{
    public partial class Sale : System.Web.UI.Page
    {
        BUS_Sale bs = new BUS_Sale();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fullname"] == null) Response.Redirect("/Login.aspx");
            if (HttpContext.Current.Session["role"].ToString() != "admin" && HttpContext.Current.Session["role"].ToString() != "purchaser"
                 && HttpContext.Current.Session["role"].ToString() != "marketer"
                 )
            {
                Response.Redirect("/Home.aspx");
            }
            hienthi();
        }
        public void hienthi()
        {
            dt = bs.getAllSale();
            grsale.DataSource = dt;
            grsale.DataBind();
        }
        protected void grsale_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            bs.delSale(grsale.DataKeys[e.RowIndex].Value.ToString());
            Response.Redirect("/Sale.aspx");
            //hienthi();
        }

        protected void grsale_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grsale.PageIndex = e.NewPageIndex;
            hienthi();
        }

        protected void grsale_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "editSale")
            {
                string id = grsale.Rows[int.Parse(e.CommandArgument.ToString())].Cells[0].Text;
                Response.Redirect("UpdateSale.aspx?id=" + id);
            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsertSale.aspx");
        }
    }
}
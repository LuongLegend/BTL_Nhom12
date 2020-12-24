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
    public partial class Categories : System.Web.UI.Page
    {
        BUS_Categories bc = new BUS_Categories();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fullname"] == null) Response.Redirect("/Login.aspx");
            if (HttpContext.Current.Session["role"].ToString() != "admin"
               && HttpContext.Current.Session["role"].ToString() != "purchaser"
               && HttpContext.Current.Session["role"].ToString() != "marketer"
               )
            {
                Response.Redirect("/Home.aspx");
            }
            hienthi();
        }
        public void hienthi()
        {
            dt = bc.getAllCategories();
            grcate.DataSource = dt;
            grcate.DataBind();
        }

        protected void grcate_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            bc.delCategories(grcate.DataKeys[e.RowIndex].Value.ToString());
            Response.Redirect("/Categories.aspx");
        }
        protected void grcate_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grcate.PageIndex = e.NewPageIndex;
            hienthi();
        }

        protected void grcate_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "editCate")
            {
                string id = grcate.Rows[int.Parse(e.CommandArgument.ToString())].Cells[0].Text;
                Response.Redirect("UpdateCate.aspx?id=" + id);
            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsertCate.aspx");
        }
    }
}
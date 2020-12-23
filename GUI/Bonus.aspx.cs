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
    public partial class Bonus : System.Web.UI.Page
    {
        BUS_Bonus bb = new BUS_Bonus();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fullname"] == null) Response.Redirect("/Login.aspx");
            if (!HttpContext.Current.Session["role"].ToString().Equals("admin") && !HttpContext.Current.Session["role"].ToString().Equals("purchaser"))
            {
                Response.Redirect("/Home.aspx");
            }
            hienthi();
        }
        public void hienthi()
        {
            dt = bb.getAllBonus();
            grbonus.DataSource = dt;
            grbonus.DataBind();
        }

        protected void grbonus_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            bb.delBonus(grbonus.DataKeys[e.RowIndex].Value.ToString());
            Response.Redirect("/Bonus.aspx");
            //hienthi();
        }

        protected void grbonus_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grbonus.PageIndex = e.NewPageIndex;
            hienthi();
        }

        protected void grbonus_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "editBonus")
            {
                string id = grbonus.Rows[int.Parse(e.CommandArgument.ToString())].Cells[0].Text;
                Response.Redirect("UpdateBonus.aspx?id=" + id);
            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsertBonus.aspx");
        }
    }
}
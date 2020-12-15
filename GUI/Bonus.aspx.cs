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

        protected void grbonus_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grbonus.EditIndex = e.NewEditIndex;
            Response.Redirect("/Bonus.aspx");
        }
    }
}
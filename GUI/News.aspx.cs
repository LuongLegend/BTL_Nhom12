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
    public partial class News : System.Web.UI.Page
    {
        BUS_News bn = new BUS_News();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fullname"] == null) Response.Redirect("/Login.aspx");
            if (!HttpContext.Current.Session["role"].ToString().Equals("admin") && !HttpContext.Current.Session["role"].ToString().Equals("writer"))
            {
                Response.Redirect("/Home.aspx");
            }
            Show();
        }
        public void Show()
        {
            grdNews.DataSource = bn.getNews();
            grdNews.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsertNew.aspx");
        }

        protected void grdNews_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "editNew")
            {
                string id = grdNews.Rows[int.Parse(e.CommandArgument.ToString())].Cells[0].Text;
                Response.Redirect("UpdateNew.aspx?id=" + id);
            }
        }

        protected void grdNews_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdNews.PageIndex = e.NewPageIndex;
        }

        protected void grdNews_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            bn.deleteNew(grdNews.DataKeys[e.RowIndex].Value.ToString());
            Response.Redirect("/News.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            grdNews.DataSource = bn.findNews(txtKeyword.Text, activeList.SelectedValue);
            grdNews.DataBind();
        }
    }
}
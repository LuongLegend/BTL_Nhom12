using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace GUI
{
    public partial class Account : System.Web.UI.Page
    {
        BUS_AccountManagement acc = new BUS_AccountManagement();
        private void bindData()
        {
            GridView1.DataSource = acc.getAllAdmin();
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fullname"] == null) Response.Redirect("/Login.aspx");
            if (!HttpContext.Current.Session["role"].ToString().Equals("admin"))
            {
                Response.Redirect("/Home.aspx");
            }
            if(!IsPostBack)
                bindData();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
                GridView1.PageIndex = e.NewPageIndex;
                bindData(); 
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
                if (e.CommandName == "editAcc")
                {
                    string id = GridView1.Rows[int.Parse(e.CommandArgument.ToString())].Cells[0].Text;
                    Response.Redirect("UpdateAccount.aspx?id=" + id);
                }
            if (e.CommandName == "resetPass")
            {
                string id = GridView1.Rows[int.Parse(e.CommandArgument.ToString())].Cells[0].Text;
                Response.Redirect("ResetPassword.aspx?id=" + id);
            }

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = acc.findAccount(txtKeyword.Text, listRole.SelectedValue);
            GridView1.DataBind();
        }
    }
}
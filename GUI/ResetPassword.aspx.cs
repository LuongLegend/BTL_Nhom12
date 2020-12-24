using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DTO;
using BUS;
namespace GUI
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        BUS_AccountManagement a = new BUS_AccountManagement();
        BUS_MyAccount acc = new BUS_MyAccount();
        Admin ad = new Admin();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fullname"] == null) Response.Redirect("/Login.aspx");
            if (!HttpContext.Current.Session["role"].ToString().Equals("admin"))
            {
                Response.Redirect("/Home.aspx");
            }
            if (!IsPostBack)
            {
                string id = Request["id"];
                DataRow dr = a.getOneAdmin(id).Rows[0];
                Label1.Text = dr["admin_name"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ad.Admin_ID_ = Request["id"];
            ad.Password_ = TextBox1.Text;
            acc.changePassword(ad.Admin_ID_, ad.Password_);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Change password successfully')", true);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Account.aspx");
        }
    }
}
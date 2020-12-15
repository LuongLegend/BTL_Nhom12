using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;
namespace GUI
{
    public partial class Login : System.Web.UI.Page
    {
        Admin ad = new Admin();
        BUS_Login login = new BUS_Login();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
            ad.Admin_name_ = txtAdminName.Text;
            ad.Password_ = txtPassword.Text;
            if (IsPostBack)
            {
                if (login.checkLogin(ad.Admin_name_, ad.Password_))
                {
                    Session["fullname"] = login.getFullName(ad.Admin_name_, ad.Password_);
                    Session["role"] = login.getRole(ad.Admin_name_, ad.Password_);
                    Response.Redirect("/Home.aspx");
                }
                else
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid user name or password!')", true);
            }

        }
    }
}
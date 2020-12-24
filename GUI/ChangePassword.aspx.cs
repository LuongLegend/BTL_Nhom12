using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;
namespace GUI
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        BUS_MyAccount acc = new BUS_MyAccount();
        Admin ad = new Admin();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fullname"] == null) Response.Redirect("/Login.aspx");
        }
        private void clearText()
        {
            txtPass.Text = "";
            txtNewPass.Text = "";
            txtConfPass.Text = "";
            txtPass.Focus();
        }
        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            ad.Admin_ID_ = HttpContext.Current.Session["id"].ToString();
            ad.Password_ = txtNewPass.Text;
            if (!acc.checkPassword(ad.Admin_ID_, txtPass.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "fallpass", "alert('Mật khẩu không đúng!')", true);
                clearText();
            }
            else
            if (txtNewPass.Text != txtConfPass.Text)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Mật khẩu không khớp!')", true);
                clearText();
            }
            else
                if (IsPostBack)
            {

                acc.changePassword(ad.Admin_ID_, ad.Password_);

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "success", "alert('Thay đổi mật khẩu thành công!')", true);
                //Response.Redirect("MyAccount.aspx");
            }

        }
    }
}
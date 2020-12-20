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
    public partial class InsertAccount : System.Web.UI.Page
    {
        BUS_AccountManagement acc = new BUS_AccountManagement();
        Admin ad = new Admin();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fullname"] == null) Response.Redirect("/Login.aspx");
            if (!HttpContext.Current.Session["role"].ToString().Equals("admin"))
            {
                Response.Redirect("/Home.aspx");
            }
            txtAdminID.Focus(); 
        }
        

        protected void validateAdminId(object sender, ServerValidateEventArgs e)
        {
            if(acc.checkAdminID(e.Value))
                e.IsValid = false;
            else
                e.IsValid = true;
        }
        protected void validateAdminName(object sender, ServerValidateEventArgs e)
        {
            if (acc.checkAdminName(e.Value))
                e.IsValid = false;
            else
                e.IsValid = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ad.Admin_ID_ = txtAdminID.Text;
            ad.Admin_name_ = txtAdminName.Text;
            ad.Password_ = txtPass.Text;
            ad.Full_name_ = txtFullname.Text;
            ad.Phone_ = txtPhone.Text;
            ad.Address_ = txtAddress.Text;
            ad.Password_ = txtPass.Text;
            ad.Note_ = txtNote.Text + "";
            ad.Role_ = roleList.SelectedValue.ToString();
            
            if (Page.IsValid)
            {
                acc.insertAdmin(ad.Admin_ID_, ad.Admin_name_, ad.Full_name_,ad.Phone_, ad.Address_, ad.Password_, ad.Note_,ad.Role_, 1);
                Response.Redirect("Account.aspx");
            }
        }
    }
}
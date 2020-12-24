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
    public partial class UpdateAccount : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                string id = Request["id"];
                DataRow dr = acc.getOneAdmin(id).Rows[0];
                txtAdminID.Text = dr["admin_ID"].ToString();
                txtAdminName.Text = dr["admin_name"].ToString();
                txtFullname.Text = dr["full_name"].ToString();
                txtNote.Text = dr["note"].ToString();
                txtPhone.Text = dr["phone"].ToString();
                txtAddress.Text = dr["address"].ToString();
                roleList.SelectedValue = dr["role"].ToString();
                activeL.SelectedValue = dr["active"].ToString() == "False" ? "0" : "1";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                ad.Admin_ID_ = txtAdminID.Text;
                ad.Admin_name_ = txtAdminName.Text;
                ad.Full_name_ = txtFullname.Text;
                ad.Phone_ = txtPhone.Text;
                ad.Address_ = txtAddress.Text;
                ad.Note_ = txtNote.Text + "";
                ad.Role_ = roleList.SelectedValue.ToString();
                ad.Active_ = Int32.Parse(activeL.SelectedValue.ToString());
                acc.updateAdmin(ad.Admin_ID_, ad.Full_name_, ad.Phone_, ad.Address_, ad.Note_, ad.Role_, ad.Active_);
                Response.Redirect("Account.aspx");
        }
    }
}
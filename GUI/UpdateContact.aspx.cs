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
    public partial class UpdateContact : System.Web.UI.Page
    {
        BUS_Contact bus_contact = new BUS_Contact();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fullname"] == null) Response.Redirect("/Login.aspx");
            if (!HttpContext.Current.Session["role"].ToString().Equals("admin") && !HttpContext.Current.Session["role"].ToString().Equals("marketer"))
            {
                Response.Redirect("/Home.aspx");
            }

            if (!IsPostBack)
            {
                string contact_ID = Request["contact_ID"];
                DataRow dataRow = bus_contact.getSpecContact(contact_ID).Rows[0];
                txtID.Text = dataRow["contact_ID"].ToString();
                txtTen.Text = dataRow["username"].ToString();
                txtDiaChi.Text = dataRow["address"].ToString();
                txtSoDienThoai.Text = dataRow["phone"].ToString();
                txtNote.Text = dataRow["note"].ToString();
                txtThoiGianTao.Text = dataRow["create_date"].ToString();
                txtSanPham.Text = dataRow["product_name"].ToString();
                DropDownList_Status.SelectedValue = dataRow["status_contact"].ToString() == "pending" ? "pending" : "resolve";
            }

        }

        protected void btnCapNhap_Click(object sender, EventArgs e)
        {
            string contact_ID = Request["contact_ID"];
            string status = DropDownList_Status.SelectedValue.ToString();

            bus_contact.editContact(contact_ID, status);
            Response.Redirect("/Contact.aspx");
        }
    }
}
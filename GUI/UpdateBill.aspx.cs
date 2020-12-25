using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using System.Data;

namespace GUI
{
    public partial class UpdateBill : System.Web.UI.Page
    {
        BUS_Bill bus_bill = new BUS_Bill();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fullname"] == null) Response.Redirect("/Login.aspx");
            if (!HttpContext.Current.Session["role"].ToString().Equals("admin") && !HttpContext.Current.Session["role"].ToString().Equals("approver"))
            {
                Response.Redirect("/Home.aspx");
            }

            if (!IsPostBack)
            {
                string bill_ID = Request["bill_ID"];
                DataRow dataRow = bus_bill.getSpecBill(bill_ID).Rows[0];
                txtID.Text = dataRow["bill_ID"].ToString();
                txtTen.Text = dataRow["username"].ToString();
                txtSoDienThoai.Text = dataRow["phone"].ToString();
                txtDiaChi.Text = dataRow["address"].ToString();
                txtNote.Text = dataRow["note"].ToString();
                txtPhuongThucThanhToan.Text = dataRow["payment_method"].ToString();
                DropDownList1.SelectedValue = dataRow["status_bill"].ToString();

            }
        }

        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
            string bill_ID = Request["bill_ID"];
            string name = txtTen.Text;
            string phone = txtSoDienThoai.Text;
            string address = txtDiaChi.Text;
            string note = txtNote.Text;
            string payment_method = txtPhuongThucThanhToan.Text;
            string status_bill = DropDownList1.SelectedValue;

            bus_bill.updateSpecBill(HttpContext.Current.Session["id"].ToString(), bill_ID,name, phone, address, note, payment_method, status_bill);
            Response.Redirect("/Bill.aspx");
        }
    }
}
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
    public partial class Products : System.Web.UI.Page
    {

        BUS_Product pro = new BUS_Product();
        DTO_Products p = new DTO_Products();
        private void dataBind()
        {
            DataList1.DataSource = pro.getAllProduct();
            DataList1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        { 
            if (Session["fullname"] == null) Response.Redirect("/Login.aspx");
            if (HttpContext.Current.Session["role"].ToString() != "admin" 
                && HttpContext.Current.Session["role"].ToString() != "purchaser" 
                && HttpContext.Current.Session["role"].ToString() != "writter" 
                && HttpContext.Current.Session["role"].ToString() != "marketer"
                )
            {
                Response.Redirect("/Home.aspx");
            }
            if (!IsPostBack)
            {
                dataBind();
            }
        }

    
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string keyword = txtKeyword.Text;
                string check = CheckBox1.Checked.ToString();//True || False
                string cata = check == "True" ? "none" : listRole.SelectedValue;
                string minP = String.IsNullOrEmpty(txtMin.Text) ? "none" : txtMin.Text;
                string maxP = String.IsNullOrEmpty(txtMax.Text) ? "none" : txtMax.Text;
                string active = DropDownList1.SelectedValue;
                DataList1.DataSource = pro.findProduct(keyword, cata, minP, maxP, active);
                DataList1.DataBind();

            }

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsertProduct.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;

namespace GUI
{
    public partial class UpdateSale : System.Web.UI.Page
    {
        BUS_Sale bs = new BUS_Sale();
        DTO_Sale ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fullname"] == null) Response.Redirect("/Login.aspx");
            if (HttpContext.Current.Session["role"].ToString() != "admin" && HttpContext.Current.Session["role"].ToString() != "purchaser"
                 && HttpContext.Current.Session["role"].ToString() != "marketer"
                 )
            {
                Response.Redirect("/Home.aspx");
            }
            if (!IsPostBack)
            {
                string id = Request["id"];
                DataRow dr = bs.getSaleID(id).Rows[0];
                txtsaleid.Text = dr["sale_ID"].ToString();
                txtminproduct.Text = dr["min_product"].ToString();
                txtsaleprice.Text = dr["sale_price"].ToString();
            }
        }

        protected void updatesale(object sender, EventArgs e)
        {
            string id = Request["id"];
            ds = new DTO_Sale();
            ds.Sale_id_ = id;
            ds.Min_product_ = Convert.ToInt32(txtminproduct.Text);
            ds.Sale_price_ = Convert.ToInt32(txtsaleprice.Text);
            bs.updateSale(ds);
            Response.Redirect("Sale.aspx");
        }
    }
}
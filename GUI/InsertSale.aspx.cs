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
    public partial class InsertSale : System.Web.UI.Page
    {
        BUS_Sale bs = new BUS_Sale();
        DTO_Sale ds;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void addNewSale(object sender, EventArgs e)
        {
            ds = new DTO_Sale();
            ds.Sale_id_ = txtsaleid.Text;
            ds.Min_product_ = Convert.ToInt32(txtminproduct.Text);
            ds.Sale_price_ = Convert.ToInt32(txtsaleprice.Text);
            bs.insertSale(ds);
            Response.Redirect("Sale.aspx");
        }
    }
}
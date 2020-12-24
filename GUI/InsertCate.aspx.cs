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
    public partial class InsertCate : System.Web.UI.Page
    {
        BUS_Categories bc = new BUS_Categories();
        DTO_Categories dc;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fullname"] == null) Response.Redirect("/Login.aspx");
            if (HttpContext.Current.Session["role"].ToString() != "admin"
               && HttpContext.Current.Session["role"].ToString() != "purchaser"
               && HttpContext.Current.Session["role"].ToString() != "marketer"
               )
            {
                Response.Redirect("/Home.aspx");
            }
        }

        
        protected void validateCatID(object sender, ServerValidateEventArgs e)
        {
            if (bc.getCategoriesID(e.Value).Rows.Count > 0)
                e.IsValid = false;
            else
                e.IsValid = true;
        }
        protected void insertcate(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                dc = new DTO_Categories();
                dc.Category_ID_ = txtcateid.Text;
                dc.Category_name_ = txtcatename.Text;
                dc.Description_ = txtdescription.Text;
                dc.Group_ID_ = txtgroupid.Text;
                bc.insertCategories(dc);
                Response.Redirect("Categories.aspx");
            }
        }
    }
}
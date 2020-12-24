using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;
using System.Data;
namespace GUI
{
    public partial class UpdateCate : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                string id = Request["id"];
                DataRow dr = bc.getCategoriesID(id).Rows[0];
                txtcateid.Text = dr["category_ID"].ToString();
                txtcatename.Text = dr["category_name"].ToString();
                txtdescription.Text = dr["description"].ToString();
                txtgroupid.Text = dr["group_ID"].ToString();
            }
        }
        protected void updatecate(object sender, EventArgs e)
        {
            string id = Request["id"];
            dc = new DTO_Categories();
            dc.Category_ID_ = txtcateid.Text;
            dc.Category_name_ = txtcatename.Text;
            dc.Description_ = txtdescription.Text;
            dc.Group_ID_ = txtgroupid.Text;
            bc.updateCategories(dc);
            Response.Redirect("Categories.aspx");
        }
    }
}
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

        }

        protected void insertcate(object sender, EventArgs e)
        {
            dc = new DTO_Categories();
            dc.Category_ID_ = txtcateid.Text;
            dc.Category_name_ = txtcatename.Text;
            dc.Description_ = txtdescription.Text;
            dc.Group_ID_ = txtgroupid.Text;
            bc.insertCategories(dc);
        }
    }
}
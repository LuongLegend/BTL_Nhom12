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
    public partial class InsertNew : System.Web.UI.Page
    {
        BUS_News newB = new BUS_News();
        DTO_News newD;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fullname"] == null) Response.Redirect("/Login.aspx");
            if (HttpContext.Current.Session["role"].ToString() != "admin" && HttpContext.Current.Session["role"].ToString() != "purchaser")
            {
                Response.Redirect("/Home.aspx");
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }
        void saveUpLoadFile()
        {
            string strPath;
            if (FileUpload1.FileName != "")
            {
                strPath = Server.MapPath("./Image/news/" + FileUpload1.FileName);
                FileUpload1.PostedFile.SaveAs(strPath);
            }

        }
        protected void validateNewsID(object sender, ServerValidateEventArgs e)
        {
            if (newB.checkNews(e.Value))
                e.IsValid = false;
            else
                e.IsValid = true;
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                var z = ckcontent.InnerText;
                var z2 = HttpUtility.HtmlEncode(z);
                newD = new DTO_News();
                string pt = "";
                if (FileUpload1.FileName != "") pt = "~/Image/news/" + FileUpload1.FileName;
                newD.newID = txtNewID.Text;
                newD.title = txtTitle.Text;
                newD.summary =txtSummary.Text;
                newD.statusNews = Convert.ToInt32(DropDownStatusAdd.SelectedValue.ToString());
                newD.photo= pt;
                newB.insertNew(newD.newID, newD.title, newD.photo, z2, Int32.Parse(DropDownStatusAdd.SelectedValue), newD.summary);
                saveUpLoadFile();
                Response.Redirect("/News.aspx");
            }
        }
    }
}
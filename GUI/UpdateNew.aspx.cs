using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;
using System.Data;
namespace GUI
{
    public partial class UpdateNew : System.Web.UI.Page
    {
        BUS_News news = new BUS_News();
        DTO_News n_DTO;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fullname"] == null) Response.Redirect("/Login.aspx");
            if (HttpContext.Current.Session["role"].ToString() != "admin" && HttpContext.Current.Session["role"].ToString() != "writer")
            {
                Response.Redirect("/Home.aspx");
            }
            if (!IsPostBack)
            {
                string id = Request["id"];
                DataRow n = news.getNewId(id).Rows[0];
                txtNewID.Text = n["new_ID"].ToString();
                txtTitle.Text = n["title"].ToString();
                txtPhoto.ImageUrl = n["photo"].ToString();
                DropDownStatus.SelectedValue = n["status_News"].ToString() == "0" ? "0" : "1";
                txtSummary.Text = n["summary"].ToString();
                ckcontent.InnerText = HttpUtility.HtmlDecode(n["detail"].ToString());
            }
        }
        void saveUpLoadFile()
        {
            string strPath;
            if (FileUpload1.FileName != "")
            {
                strPath = Server.MapPath("./Image/news/" + FileUpload1.FileName);//lưu file vào folder
                FileUpload1.PostedFile.SaveAs(strPath);
            }

        }
        protected void btnLuu_Click(object sender, EventArgs e)
        {
            var z = ckcontent.InnerText;
            var z2 = HttpUtility.HtmlEncode(z);// Encode va Decode
            string id = Request["id"];
            //get value
            string pt = txtPhoto.ImageUrl;
            if (FileUpload1.FileName != "")
            {
                pt = "~/Image/news/" + FileUpload1.FileName;
            }
            n_DTO = new DTO_News();
            n_DTO.newID = id;
            n_DTO.title = txtTitle.Text;
            n_DTO.summary = txtSummary.Text;
            n_DTO.photo = pt;
            n_DTO.statusNews = Int32.Parse(DropDownStatus.SelectedValue.ToString());
            news.updateNew(n_DTO.newID, n_DTO.title, n_DTO.photo, z2, n_DTO.statusNews, n_DTO.summary);
            saveUpLoadFile();
            Response.Redirect("/News.aspx");
        }
    }
}
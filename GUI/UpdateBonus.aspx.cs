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
    public partial class UpdateBonus : System.Web.UI.Page
    {
        BUS_Bonus bb = new BUS_Bonus();
        DTO_Bonus bn;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fullname"] == null) Response.Redirect("/Login.aspx");
            if (!HttpContext.Current.Session["role"].ToString().Equals("admin") && !HttpContext.Current.Session["role"].ToString().Equals("purchaser"))
            {
                Response.Redirect("/Home.aspx");
            }
            if (!IsPostBack)
            {
                string id = Request["id"];
                DataRow dr = bb.getBonusID(id).Rows[0];
                txtbonusid.Text = dr["bonus_ID"].ToString();
                txtbonusname.Text = dr["name_bonus"].ToString();
                txtbonusphoto.ImageUrl= dr["photo"].ToString();
                txtbonusprice.Text = dr["price"].ToString();
            }
        }
        void saveUpLoadFile()
        {
            string strPath;
            if (bonusphoto.FileName != "")
            {
                strPath = Server.MapPath("./Image/bonus/" + bonusphoto.FileName);
                bonusphoto.PostedFile.SaveAs(strPath);
            }

        }
        protected void updatebonus(object sender, EventArgs e)
        {
            string id = Request["id"];
            string pt = txtbonusphoto.ImageUrl;
            if (bonusphoto.FileName != "") pt = "~/Image/bonus/" + bonusphoto.FileName;
            bn = new DTO_Bonus();
            bn.Bonus_id_ = id;
            bn.Name_bonus_ = txtbonusname.Text;
            bn.Photo_ = pt;
            bn.Price_ = Convert.ToInt32(txtbonusprice.Text);
            bb.updateBonus(bn);
            saveUpLoadFile();
            Response.Redirect("Bonus.aspx");
        }
    }
}
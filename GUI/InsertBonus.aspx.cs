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
    public partial class InsertBonus : System.Web.UI.Page
    {
        BUS_Bonus bb = new BUS_Bonus();
        DTO_Bonus bn;
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void addNewBonus(object sender, EventArgs e)
        {
            string pt = txtbonusphoto.ImageUrl;
            if (bonusphoto.FileName != "") pt = "~/Image/bonus/" + bonusphoto.FileName;
            bn = new DTO_Bonus();
            bn.Bonus_id_ = txtbonusid.Text;
            bn.Name_bonus_ = txtbonusname.Text;
            bn.Photo_ = pt;
            bn.Price_ = Convert.ToInt32(txtbonusprice.Text);
            bb.insertBonus(bn);
            saveUpLoadFile();
            Response.Redirect("Bonus.aspx");
        }
    }
}
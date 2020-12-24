using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI
{
    public partial class Backend : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["fullname"] != null)
            {
                lablAdminName.Text = HttpContext.Current.Session["fullname"].ToString();
            }
            string role = HttpContext.Current.Session["role"].ToString();
            //String csname1 = "hideContent";
            Type cstype = this.GetType();
            ClientScriptManager cs = Page.ClientScript;
          /*  if (!cs.IsStartupScriptRegistered(cstype, csname1))
            {*/
               string hideBill = "<script> document.getElementById(\"bill\").style.display = \"none\" </script>";
               string hideAcc = "<script> document.getElementById(\"acc\").style.display = \"none\" </script>";
               string hidePro = "<script> document.getElementById(\"pro\").style.display = \"none\" </script>";
               string hideCat = "<script> document.getElementById(\"cat\").style.display = \"none\" </script>";
               string hideBon = "<script> document.getElementById(\"bon\").style.display = \"none\" </script>";
               string hideNews= "<script> document.getElementById(\"news\").style.display = \"none\" </script>";
               string hideCont = "<script> document.getElementById(\"cont\").style.display = \"none\" </script>";
               string hideSal = "<script> document.getElementById(\"sal\").style.display = \"none\" </script>";
            switch (role)
                {
                    case "purchaser":
                        cs.RegisterStartupScript(cstype, "1", hideBill);
                        cs.RegisterStartupScript(cstype, "2", hideAcc);
                        cs.RegisterStartupScript(cstype, "3", hideNews);
                        cs.RegisterStartupScript(cstype, "4", hideCont);
                        break;
                    case "writer":
                        cs.RegisterStartupScript(cstype, "5", hideBill);
                        cs.RegisterStartupScript(cstype, "6", hideAcc);
                        cs.RegisterStartupScript(cstype, "7", hideCont);
                        cs.RegisterStartupScript(cstype, "8", hideBon);
                        cs.RegisterStartupScript(cstype, "18", hideSal);
                    // cs.RegisterStartupScript(cstype, "9", hidePro);
                    break;
                    case "marketer":
                        cs.RegisterStartupScript(cstype, "10", hideBill);
                        cs.RegisterStartupScript(cstype, "11", hideAcc);
                        cs.RegisterStartupScript(cstype, "12", hideNews);
                        cs.RegisterStartupScript(cstype, "8", hideBon);
                        cs.RegisterStartupScript(cstype, "19", hideCat);
                    // cs.RegisterStartupScript(cstype, "9", hidePro);
                    break;
                    case "approver":
                        cs.RegisterStartupScript(cstype, "13", hideBill);
                        cs.RegisterStartupScript(cstype, "14", hideBon);
                        cs.RegisterStartupScript(cstype, "15", hidePro);
                        cs.RegisterStartupScript(cstype, "16", hideSal);
                        cs.RegisterStartupScript(cstype, "17", hideCat);
                        break;

                }
            //}
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["fullname"] = null;
            Session["role"] = null;
            ScriptManager.RegisterStartupScript(this, GetType(), "myFunction", "myFunction();", true);
            Response.Redirect("/Login.aspx");
        }
    }
}
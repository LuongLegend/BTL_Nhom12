using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Globalization;
using DTO;
using BUS;
using System.Text;
using System.IO;
using EO.WebBrowser.DOM;

namespace GUI
{
    public partial class DetailsProducts : System.Web.UI.Page
    {
        BUS_Product pro = new BUS_Product();
        DTO_Products p;
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fullname"] == null) Response.Redirect("/Login.aspx");
            if (HttpContext.Current.Session["role"].ToString() != "admin" && HttpContext.Current.Session["role"].ToString() != "purchaser")
            {
                Response.Redirect("/Home.aspx");
            }
            if (!IsPostBack)
            {
                string id = Request["id"];
                DataRow dr = pro.getOneProduct(id).Rows[0];
                txt_ProductID.Text = dr["product_ID"].ToString();
                txt_ProductName.Text = dr["product_name"].ToString();
                txt_Photo.ImageUrl = dr["photo"].ToString();
                txt_Brand.Text = dr["product_brand"].ToString();
                txt_Origin.Text = dr["origin"].ToString();
                txt_Quantity.Text = dr["quantity"].ToString();
                txt_Sumary.Text = dr["summary"].ToString();
                txt_Price.Text = dr["price"].ToString();
                ckcontent.InnerText = HttpUtility.HtmlDecode(dr["detail"].ToString());
                DropDownList2.SelectedValue = dr["active"].ToString() == "False" ? "0" : "1";
                DataTable allCat = pro.getAllCat();
                DataTable listCat = pro.getCatProduct(id);
                int count = 0;
                foreach (DataRow r in allCat.Rows)
                {
                    string catId = r["category_ID"].ToString();
                    string catName = r["category_name"].ToString();
                    bool check = false;

                    foreach (DataRow row in listCat.Rows)
                    {
                        if (catId == row["category_ID"].ToString())
                        {
                            check = true;
                            break;
                        }
                    }
                    ListItem it = new ListItem(catName, catId);
                    CheckBoxList2.Items.Add(it);
                    CheckBoxList2.Items[count].Selected = check;
                    count++;
                }
            }
        }
        void saveUpLoadFile()
        {
            string strPath;
            if (FileUpload1.FileName != "")
            {
                strPath = Server.MapPath("./Image/product/" + FileUpload1.FileName);
                FileUpload1.PostedFile.SaveAs(strPath);
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            var z = ckcontent.InnerText;
            var z2 = HttpUtility.HtmlEncode(z);
            string id = Request["id"];
            pro.deleteProductCatagory(id);
            foreach (ListItem item in CheckBoxList2.Items)
            {
                if (item.Selected)
                {
                    pro.insertProductCatagory(id, item.Value);
                }
            }
            //get value
            string pt = txt_Photo.ImageUrl;
            if (FileUpload1.FileName != "") pt = "~/Image/product/" + FileUpload1.FileName;
            p = new DTO_Products();
            p.Product_id_ = id;
            p.Product_name_ = txt_ProductName.Text;
            p.Product_brand_ = txt_Brand.Text;
            p.Origin_ = txt_Origin.Text;
            p.Summary_ = txt_Sumary.Text;
            p.Price_ = Int32.Parse(txt_Price.Text);
            p.Quantity_ = Int32.Parse(txt_Quantity.Text);
            p.Photo_ = pt;
            p.Active_ = Int32.Parse(DropDownList2.SelectedValue.ToString());
            pro.updateProduct(p.Product_id_, p.Product_name_, p.Product_brand_, p.Origin_, p.Summary_, p.Price_, p.Quantity_, p.Photo_, z2, DropDownList2.SelectedValue.ToString());
            saveUpLoadFile();
        }
    }
}
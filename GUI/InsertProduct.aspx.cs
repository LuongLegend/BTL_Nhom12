using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using System.Data;
using DTO;
namespace GUI
{
    public partial class InsertProduct : System.Web.UI.Page
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
            //list catagories
            DataTable allCat = pro.getAllCat();
            int count = 0;
            foreach (DataRow r in allCat.Rows)
            {
                string catId = r["category_ID"].ToString();
                string catName = r["category_name"].ToString();
                ListItem it = new ListItem(catName, catId);
                CheckBoxList2.Items.Add(it);                
                count++;
            }
            //list bonus
            count = 0;
            DataTable allBonus = pro.getAllBonus();
            foreach (DataRow r in allBonus.Rows)
            {
                string bonusId = r["bonus_ID"].ToString();
                string bonusName = r["name_bonus"].ToString();
                ListItem it = new ListItem(bonusName, bonusId);
                bonusCheckBox.Items.Add(it);
                count++;
            }
            //list sale
            count = 0;
            DataTable allSale = pro.getAllSale();
            foreach (DataRow r in allSale.Rows)
            {
                string saleId = r["sale_ID"].ToString();
                string saleName = "Giảm " + r["sale_price"].ToString() + " khi mua " + r["min_product"].ToString() + " sản phẩm";
                ListItem it = new ListItem(saleName, saleId);
                dropDownListSale.Items.Add(it);
                count++;
            }

        }

        protected void validateProductID(object sender, ServerValidateEventArgs e)
        {
            if (pro.checkProductID(e.Value))
                e.IsValid = false;
            else
                e.IsValid = true;
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

            if (Page.IsValid)
            {
                var z = ckcontent.InnerText;
                var z2 = HttpUtility.HtmlEncode(z);
                p = new DTO_Products();
                string pt = "";
                if (FileUpload1.FileName != "") pt = "~/Image/product/" + FileUpload1.FileName;
                p.Product_id_ = txt_ProductID.Text;
                p.Product_name_ = txt_ProductName.Text;
                p.Product_brand_ = txt_Brand.Text;
                p.Origin_ = txt_Origin.Text;
                p.Summary_ = txt_Sumary.Text;
                p.Price_ = Int32.Parse(txt_Price.Text);
                p.Quantity_ = txt_Quantity.Text == "" ? 0 : Int32.Parse(txt_Quantity.Text);
                p.Photo_ = pt;
               
              
                pro.insertProduct(p.Product_id_, p.Product_name_, p.Product_brand_, p.Origin_, p.Summary_, p.Price_, p.Quantity_, p.Photo_, z2);
                saveUpLoadFile();
                //insert into product_catagory
                foreach (ListItem item in CheckBoxList2.Items)
                {
                    if (item.Selected)
                    {
                        pro.insertProductCatagory(p.Product_id_, item.Value);
                    }
                }
                //insert into product_bonus
                foreach (ListItem item in bonusCheckBox.Items)
                {
                    if (item.Selected)
                    {
                        pro.insertProductBonus(p.Product_id_, item.Value);
                    }
                }
                //insert into product_sale
                pro.insertProductSale(p.Product_id_, dropDownListSale.SelectedValue);
                Response.Redirect("Products.aspx");
            }
        }
    }
}
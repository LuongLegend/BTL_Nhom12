using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DTO;
using BUS;
namespace GUI
{
    public partial class DetailsProducts : System.Web.UI.Page
    {
        BUS_Product pro = new BUS_Product();
        DTO_Products p = new DTO_Products();
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
                txt_Price.Text = dr["price"].ToString();
                txt_Quantity.Text = dr["quantity"].ToString();
                txt_Sumary.Text = dr["summary"].ToString();
                txt_Price.Text = dr["price"].ToString();
                editor.InnerHtml =  HttpUtility.HtmlDecode( dr["detail"].ToString());
               // roleList.SelectedValue = dr["role"].ToString();
                DropDownList2.SelectedValue = dr["active"].ToString() == "False" ? "0" : "1";
                DataTable allCat = pro.getAllCat();
                DataTable listCat = pro.getCatProduct(id);
                //List<ListItem> selected = CheckBoxList2.Items.Cast<ListItem>()
                //            .Where(li => li.Selected)
                //            .ToList();
                int count = 0;
                foreach (DataRow r in allCat.Rows)
                {
                    string catId = r["category_ID"].ToString();
                    string catName = r["category_name"].ToString();
                    bool check = false;
                  
                    foreach (DataRow row in listCat.Rows)
                    {
                        if(catId== row["category_ID"].ToString())
                        {
                            check = true;
                            break;
                        }
                    }
                    ListItem it = new ListItem(catName, catId);
                    CheckBoxList2.Items.Add(it);
                    CheckBoxList2.Items[count].Selected = check ;
                    count++;

                }
                //foreach (DataRow row in listCat.Rows)
                //{
                //    string catID = row["category_ID"].ToString();
                //    foreach (ListItem item in CheckBoxList2.Items)
                //    {
                //        if (item.Value == catID)
                //        {
                //            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + listCat.Rows.Count + "')", true);
                //            item.Selected = true;
                //            break;

                //        }
                //    }
                //}
                //foreach (ListItem item in MyCheckBoxList.Items)

                //{

                //    if (item.Selected)

                //        list += "," + item.Text;
                //}
            }
        }

        protected void validateProductId(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;
namespace BUS
{

    public class BUS_Product
    {
        DAL_layer da = new DAL_layer();

        public DataTable getAllProduct()
        {
            string sql = "select * from products";
            return da.GetTable(sql);
        }
        public DataTable findProduct(string keyword, string cat, string priceMin, string priceMax, string active)
        {
            string sql = "select distinct * from products left join Product_Category on products.product_ID=Product_Category.product_ID where (product_name like N'%" + keyword+
                "%' or product_brand like N'%"+keyword+"%'"+
                   " or products.product_ID like N'%" + keyword + "%'" +
                   " or origin like N'%" + keyword + "%') ";
            if (cat != "none") sql += "and Product_Category.category_ID='"+cat+"' ";
            if (priceMin != "none") sql += "and price >=" + Int32.Parse(priceMin) + " ";
            if (priceMax != "none") sql += "and price <=" + Int32.Parse(priceMax) + " ";
            if (active != "none") sql += "and active ='" + active + "'";
            return da.GetTable(sql);
        }

        public void insertProduct(string id, string name, string brand, string origin, string sumary, int price, int quantity, string photo, string detail)
        {
            string sql = "insert into products values(N'"+id+"',N'"+name+ "',N'"+brand+ "',N'"+origin+ "',N'"+sumary+ "',"+1+ "',"+price+ ","+quantity+ ",N'"+photo+ "',N'"+detail+"',"+1+")";
            da.ExcuteNonQuery(sql);
        }

        public void updateProduct(string id, string name, string brand, string origin, string sumary, int price, int quantity, string photo, string detail, string active)
        {
            string sql = "update Products set product_name=N'" + name + "', product_brand='" + brand + "', origin=N'" + origin + "', summary=N'" + sumary + "', price=" + price + ", quantity=" + quantity + ",photo=N'"+photo+"',active="+active+"  where product_ID='" + id + "'";
            da.ExcuteNonQuery(sql);
        }
        public void insertProductCatagory(string product_id, string cat_id)
        {
            string sql = "insert into Product_Category values('" + product_id + "','" + cat_id + "')";
            da.ExcuteNonQuery(sql);
        }

        public void deleteProductCatagory(string product_id)
        {
            string sql = "delete from Product_Category where product_ID='" + product_id + "'";
            da.ExcuteNonQuery(sql);
        }

    }
}

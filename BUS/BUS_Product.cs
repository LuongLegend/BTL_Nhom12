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
        public DataTable getCatProduct(string id)
        {
            string sql = "select * from products inner join Product_Category on products.product_ID=Product_Category.product_ID "+
              "where products.product_ID='"+id+"'";
            return da.GetTable(sql);
        }

        public DataTable getBonusProduct(string id)
        {
            string sql = "select * from products inner join Product_Bonus on products.product_ID=Product_Bonus.product_ID " +
              "where products.product_ID='" + id + "'";
            return da.GetTable(sql);

        }

        public DataTable getSaleProduct(string id)
        {
            string sql = "select * from products inner join Product_Sale on products.product_ID=Product_Sale.product_ID " +
              "where products.product_ID='" + id + "'";
            return da.GetTable(sql);
        }

        public bool checkProductID(string id)
        {
            string sql = "select * from products " +
             "where products.product_ID='" + id + "'";
            return da.check(sql);
        }
        public DataTable getAllCat()
        {
            string sql = "select * from Categories";
            return da.GetTable(sql);
        }

        public DataTable getAllBonus()
        {
            string sql = "select * from Bonus";
            return da.GetTable(sql);
        }

        public DataTable getAllSale()
        {
            string sql = "select * from Sale";
            return da.GetTable(sql);
        }
        public DataTable getSaleWithProductId(string id)
        {
            string sql = "select * from Product_Sale where product_ID='" + id + "'";
            return da.GetTable(sql);
        }

        public bool checkSale(string id)
        {
            string sql = "select * from Product_Sale where product_ID='" + id + "'";
            return da.check(sql);
        }

        public DataTable getOneProduct(string id)
        {
            string sql = "select * from products where product_id='"+id+"'";
            return da.GetTable(sql);
        }
        public DataTable findProduct(string keyword, string cat, string priceMin, string priceMax, string active)
        {
            string sql = "select distinct products.product_ID,product_name,product_brand,origin,summary,price,quantity,photo,active from products left join Product_Category on products.product_ID=Product_Category.product_ID where (product_name like N'%" + keyword+
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
            string sql = "insert into products values(N'"+id+"',N'"+name+ "',N'"+brand+ "',N'"+origin+ "',N'"+sumary+ "',1,"+price+ ","+quantity+ ",N'"+photo+ "',N'"+detail+"',1)";
            da.ExcuteNonQuery(sql);
        }

        public void updateProduct(string id, string name, string brand, string origin, string sumary, int price, int quantity, string photo, string detail, string active)
        {
            string sql = "update Products set product_name=N'" + name + "', product_brand='" + brand + "', origin=N'" + origin + "', summary=N'" + sumary + "', price=" + price + ", detail=N'" + detail + "', quantity=" + quantity + ",photo=N'"+photo+"',active="+active+"  where product_ID='" + id + "'";
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

        public void insertProductBonus(string product_id, string bonus_id)
        {
            string sql = "insert into Product_Bonus values('" + product_id + "','" + bonus_id + "')";
            da.ExcuteNonQuery(sql);
        }

        public void deleteProductBonus(string product_id)
        {
            string sql = "delete from Product_Bonus where product_ID='" + product_id + "'";
            da.ExcuteNonQuery(sql);
        }

        public void insertProductSale(string product_id, string sale_id)
        {
            string sql = "insert into Product_Sale values('" + product_id + "','" + sale_id + "')";
            da.ExcuteNonQuery(sql);
        }

        public void deleteProductSale(string product_id)
        {
            string sql = "delete from Product_Sale where product_ID='" + product_id + "'";
            da.ExcuteNonQuery(sql);
        }

    }
}

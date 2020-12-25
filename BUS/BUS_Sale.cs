using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DTO;

namespace BUS
{
    public class BUS_Sale
    {
        DAL_layer da = new DAL_layer();
        public DataTable getAllSale()
        {
            string sql = "SELECT * FROM Sale";
            return da.GetTable(sql);
        }
        public DataTable getSaleID(string sale_id)
        {
            string sql = "select * from sale where sale_id='" + sale_id + "'";
            return da.GetTable(sql);
        }

        public bool checkSaleID(string id)
        {
            string sql = "select * from sale where sale_id='" + id + "'";
            return da.check(sql);
        }
        public void delSale(string sale_id)
        {
            string sql = "DELETE FROM PRODUCT_Sale WHERE sale_id = '" + sale_id + "'";
            sql += " ";
            sql += "DELETE FROM Sale WHERE sale_id = '" + sale_id + "'";
            da.ExcuteNonQuery(sql);
        }
        public void updateSale(DTO_Sale ds)
        {
            string sql = "update Sale set min_product=" + ds.Min_product_ + ", sale_price=" + ds.Sale_price_ + " where sale_id='" + ds.Sale_id_ + "'";
            da.ExcuteNonQuery(sql);
        }
        public void insertSale(DTO_Sale ds)
        {
            string sql = "insert into Sale values('" + ds.Sale_id_ + "'," + ds.Min_product_ + "," + ds.Sale_price_ + ")";
            da.ExcuteNonQuery(sql);
        }
    }
}

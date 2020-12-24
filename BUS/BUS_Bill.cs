using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;

namespace BUS
{
   public class BUS_Bill
    {
        DAL_layer da = new DAL_layer();
        public DataTable getAllBill()
        {
            string sql = "SELECT * FROM Bill";
            return da.GetTable(sql);
        }

        public void deleteBill(string id)
        {
            string sql_product_bill = "delete from Product_Bill where bill_ID = '"+id+"'";
            string sql_bill = "delete from bill where bill_ID = '"+id+"'";
            da.ExcuteNonQuery(sql_product_bill);
            da.ExcuteNonQuery(sql_bill);
        }
    }
}

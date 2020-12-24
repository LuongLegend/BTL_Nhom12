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
    public class BUS_Categories
    {
        DAL_layer da = new DAL_layer();
        public DataTable getAllCategories()
        {
            string sql = "SELECT * FROM Categories";
            return da.GetTable(sql);
        }
        public DataTable getCategoriesID(string category_id)
        {
            string sql = "select * from Categories where category_ID='" + category_id + "'";
            return da.GetTable(sql);
        }
        public void delCategories(string category_id)
        {
            string sql = "DELETE FROM Product_Category WHERE category_id = '" + category_id + "'";
            sql += " ";
            sql += "DELETE FROM Categories WHERE category_ID = '" + category_id + "'";
            da.ExcuteNonQuery(sql);
        }
        public void updateCategories(DTO_Categories dc)
        {
            string sql = "update Categories set category_name=N'" + dc.Category_name_ + "', description=N'" + dc.Description_ + "', group_ID=N'" + dc.Group_ID_ + "' where category_id='" + dc.Category_ID_ + "'";
            da.ExcuteNonQuery(sql);
        }
        public void insertCategories(DTO_Categories dc)
        {
            string sql = "insert into Categories values('" + dc.Category_ID_ + "',N'" + dc.Category_name_ + "',N'" + dc.Description_ + "',N'" + dc.Group_ID_ + "')";
            da.ExcuteNonQuery(sql);
        }
    }
}

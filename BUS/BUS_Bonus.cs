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
    public class BUS_Bonus
    {
        DAL_layer da = new DAL_layer();
        public DataTable getAllBonus()
        {
            string sql = "SELECT * FROM BONUS";
            return da.GetTable(sql);
        }
        public DataTable getBonusID(string bonusid)
        {
            string sql = "select * from bonus where bonus_ID='" + bonusid + "'";
            return da.GetTable(sql);
        }
        public void delBonus(string bonusid)
        {
            string sql = "DELETE FROM PRODUCT_BONUS WHERE bonus_id = '" + bonusid + "'";
            sql += " ";
            sql += "DELETE FROM BONUS WHERE bonus_id = '"+bonusid+"'";
            da.ExcuteNonQuery(sql);
        }
        public void updateBonus(DTO_Bonus db)
        {
            string sql = "update BONUS set name_bonus=N'" + db.Name_bonus_ + "', photo='" + db.Photo_ + "', price=" + db.Price_ + " where bonus_ID='" + db.Bonus_id_ + "'";
            da.ExcuteNonQuery(sql);
        }
        public void insertBonus(DTO_Bonus db)
        {
            string sql = "insert into Bonus values('" + db.Bonus_id_ + "',N'" + db.Name_bonus_ + "','" + db.Photo_ + "'," + db.Price_ +")";
            da.ExcuteNonQuery(sql);
        }
    }
}

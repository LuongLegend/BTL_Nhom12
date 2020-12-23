using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
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
            string sql = "DELETE FROM BONUS WHERE bonus_id = '"+bonusid+"'";
            da.ExcuteNonQuery(sql);
        }
        public void updateBonus(string bonusid, string bonusname, string photo, int price)
        {
            string sql = "update BONUS set name_bonus=N'" + bonusname + "', photo='" + photo + "', price=" + price + " where bonus_ID='" + bonusid + "'";
            da.ExcuteNonQuery(sql);
        }
        public void insertBonus(string bonusid, string bonusname, string photo, int price)
        {
            string sql = "insert into Bonus values('" + bonusid + "',N'" + bonusname + "','" + photo + "'," + price +")";
            da.ExcuteNonQuery(sql);
        }
    }
}

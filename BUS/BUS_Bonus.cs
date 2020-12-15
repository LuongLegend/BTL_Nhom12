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

        public void delBonus(string bonusid)
        {
            string sql = "DELETE FROM BONUS WHERE bonus_id = '"+bonusid+"'";
            da.ExcuteNonQuery(sql);
        }
        public void editBonus(string bonusid)
        {
            string sql = "UPDATE BONUS SET ";
        }
    }
}

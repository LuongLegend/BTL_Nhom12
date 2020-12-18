using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;
namespace BUS
{
    public class BUS_News
    {
        DAL_layer da = new DAL_layer();
        public DataTable getNews()
        {
            string sql = "SELECT * FROM NEWS";
            return da.GetTable(sql);
        }
        public void themSP(DTO.DTO_News tt)
        {
            string sql = "insert News values(N'" + tt.newID + "',N'" + tt.title + "',N'../images/news/" + tt.photo + "',N'" + tt.detail + "'," + tt.statusNews + ",N'" + tt.summary + "') ";
            da.ExcuteNonQuery(sql);
        }
    }
}

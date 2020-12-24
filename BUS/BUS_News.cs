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
        public DataTable getNewId(string id)
        {
            string sql = "select * from News where new_ID='" + id + "'";
            return da.GetTable(sql);
        }
        public bool checkNews(string id)
        {
            string sql = "select * from News where new_ID='" + id + "'";
            return da.check(sql);
        }
        public void insertNew(string id, string title, string photo, string detail, int statusNew, string summary)
        {
            string sql = "insert into News values(N'" + id + "',N'" + title + "',N'" + photo + "',N'" + detail + "'," + statusNew + ",N'" + summary + "')";
            da.ExcuteNonQuery(sql);
        }
        public void updateNew(string id, string title, string photo, string detail, string status_News, string sumary)
        {
            string sql = "update News set title=N'" + title +"', photo=N'" + photo + "', detail=N'" + detail + "',status_News='" + status_News + "', summary=N'" + sumary + "' where new_ID='" + id + "'";
            da.ExcuteNonQuery(sql);
        }
        public void deleteNew(string newID)
        {
            string sql = "DELETE FROM NEWS WHERE new_ID = '" + newID + "'";
            da.ExcuteNonQuery(sql);
        }
    }
}

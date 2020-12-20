using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;
namespace BUS
{
    public class BUS_MyAccount
    {
        DAL_layer da = new DAL_layer();
        public DataTable getMyAccount(string id)
        {
            string sql = "select * from Admin where admin_id='" + id + "'";
            return da.GetTable(sql);
        }
        public string getFullnameWithID(string id)
        {
            string sql = "select * from Admin where admin_ID='" + id + "'";
            DataTable dt = new DataTable();
            dt = da.GetTable(sql);
            DataRow dr = dt.Rows[0];
            return dr["full_name"].ToString();
        }

        public bool checkPassword(string id, string pass)
        {
            string sql = "select * from Admin where admin_ID='" + id + "' and password='"+pass+"'";
            return da.check(sql);
        }
        public void changePassword(string id, string pass)
        {
            string sql = "update Admin set password='" + pass + "' where admin_ID='"+id+"'";
            da.ExcuteNonQuery(sql);
        }
    }
}

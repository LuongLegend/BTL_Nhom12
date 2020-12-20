using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DAL;
namespace BUS
{
    public class BUS_Login
    {
        DAL_layer da = new DAL_layer();
        public bool checkLogin(string uname, string pass)
        {
            string sql = "select * from Admin where admin_name='" + uname + "' and password = '" + pass + "'";
            return da.check(sql);
        }
        DataRow getAdminInfor(string uname, string pass)
        {
            string sql = "select * from Admin where admin_name='" + uname + "' and password = '" + pass + "'";
            DataTable dt = new DataTable();
            dt = da.GetTable(sql);
            return dt.Rows[0];
        }
        public string getFullName(string uname, string pass)
        {
            DataRow dr = getAdminInfor(uname, pass);
            return dr["full_name"].ToString();
        }
        public string getRole(string uname, string pass)
        {
            DataRow dr = getAdminInfor(uname, pass);
            return dr["role"].ToString();
        }
        public string getID(string uname, string pass)
        {
            DataRow dr = getAdminInfor(uname, pass);
            return dr["admin_id"].ToString();
        }
    }
}

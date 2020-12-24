using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;
namespace BUS
{
    public class BUS_AccountManagement
    {
        DAL_layer da = new DAL_layer();

        public DataTable getAllAdmin()
        {
            string sql = "select * from admin";
            return da.GetTable(sql);
        }
        public DataTable getOneAdmin(string id )
        {
            string sql = "select * from admin where admin_ID='"+id+"'";
            return da.GetTable(sql);
        }
        public void deleteAdmin(string id)
        {
            string sql = "update admin set active=0 where admin_ID='" + id + "'";
            da.ExcuteNonQuery(sql);
        }
        public void insertAdmin(string id, string name, string fullname,string phone, string address, string password,string note, string role, int active = 1)
        {
            string sql = "insert into Admin values('" + id + "','" + name + "',N'" + fullname + "','" + phone +"',N'"+address+"','"+ password + "',N'"+note+"','" + role + "','" + active + "')";
            da.ExcuteNonQuery(sql);
        }
        public void updateAdmin(string id, string fullname, string phone, string address, string note, string role, int active)
        {
            string sql = "update Admin set full_name=N'" + fullname + "', phone='" + phone + "', address=N'" + address + "', note=N'" + note + "', role='" + role + "', active='" + active + "' where admin_ID='"+id+"'";
            da.ExcuteNonQuery(sql);
        }

        public DataTable findAccount(string keyword, string role)
        {
            string sql = "select * from Admin where (admin_name like N'%" + keyword + "%' or full_name like N'%" + keyword + "%' " +
                "or phone like '%" + keyword + "%' " +
                "or admin_ID like '%" + keyword + "%' " +
                "or address like '%" + keyword + "%') ";
            if (role != "none") sql += "and role='" + role + "'";
            return da.GetTable(sql);
        }
        public bool checkAdminID(string id)
        {
            string sql = "select * from admin where admin_ID='" + id + "'";
            return da.check(sql);
        }
        public bool checkAdminName(string name)
        {
            string sql = "select * from admin where admin_name='" + name + "'";
            return da.check(sql);
        }
    }
}

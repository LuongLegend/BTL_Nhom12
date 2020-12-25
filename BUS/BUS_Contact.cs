using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS
{
    public class BUS_Contact
    {
        DAL_layer da = new DAL_layer();
        
        public DataTable getSpecContact(string contact_ID)
        {
            string sql = "SELECT * FROM CONTACT WHERE contact_ID = '" + contact_ID + "'";
            return da.GetTable(sql);
        }
        public DataTable getAllContact()
        {
            string sql = "SELECT * FROM CONTACT";
            return da.GetTable(sql);
        }

        public void editContact(string id, string status)
        {
            string sql = "UPDATE CONTACT SET status_Contact = '" + status + "' where contact_ID = '" + id + "' ";
            da.ExcuteNonQuery(sql);

        }
        public DataTable findContact(string keyword, string status, string timeStart, string timeEnd)
        {
            string sql = "select * from Contact where (contact_ID like N'%" + keyword + "%' or username like N'%" + keyword + "%' " +
                "or phone like N'%" + keyword + "%' " +
                "or address like N'%" + keyword + "%') ";
            if (status != "none") sql += " and status_Contact='" + status + "'";
            if (timeStart != "none") sql += " and create_date>='" + timeStart + "'";
            if (timeEnd != "none") sql += " and create_date<='" + timeEnd + "'";
            return da.GetTable(sql);
        }
    }
}

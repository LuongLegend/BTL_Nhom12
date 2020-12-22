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

        public DataTable getAllContact()
        {
            string sql = "SELECT * FROM CONTACT";
            return da.GetTable(sql);
        }

        //public void editContact(string id,string status)
        //{
        //    string sql = "UPDATE CONTACT SET status_Contact = '"+ status +"' where contact_ID = '" + id +"' ";
        //    da.ExcuteNonQuery(sql);

        //}
    }
}

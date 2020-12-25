using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_Bill
    {
        string bill_ID;
        string admin_ID;
        string username;
        string phone;
        string address;
        string note;
        string payment_method;
        string status_bill;
        string bill_data;

        public string Bill_ID { get => bill_ID; set => bill_ID = value; }
        public string Admin_ID { get => admin_ID; set => admin_ID = value; }
        public string Username { get => username; set => username = value; }
        public string Phone { get => phone; set => phone = value; }
        public string Address { get => address; set => address = value; }
        public string Note { get => note; set => note = value; }
        public string Payment_method { get => payment_method; set => payment_method = value; }
        public string Status_bill { get => status_bill; set => status_bill = value; }
        public string Bill_data { get => bill_data; set => bill_data = value; }

        public DTO_Bill()
        {

        }
    }
}

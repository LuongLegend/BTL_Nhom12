using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Contact
    {
        private string contact_ID_;
        private string username_;
        private string phone_;
        private string address_;
        private string note_;
        private DateTime create_date_;
        private string status_Contact_;
        private string product_Name_;

        public string Contact_ID_ { get => contact_ID_; set => contact_ID_ = value; }
        public string Username_ { get => username_; set => username_ = value; }
        public string Phone_ { get => phone_; set => phone_ = value; }
        public string Address_ { get => address_; set => address_ = value; }
        public string Note_ { get => note_; set => note_ = value; }
        public DateTime Create_date_ { get => create_date_; set => create_date_ = value; }
        public string Status_Contact_ { get => status_Contact_; set => status_Contact_ = value; }
        public string Product_Name_ { get => product_Name_; set => product_Name_ = value; }

        public Contact()
        {

        }
    }

}

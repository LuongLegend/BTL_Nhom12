using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    class Contact
    {
        public string contact_ID { get; set; }
        public string username { get; set; }
        public string phone { get; set; }
        public string address { get; set; }
        public string note { get; set; }
        public DateTime create_date {get;set;}
        public string status_Contact { get; set; }
        public string product_Name { get; set; }

        public Contact()
        {

        }
    }

}

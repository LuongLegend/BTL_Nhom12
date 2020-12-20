using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Admin
    {
        string admin_ID_, admin_name_, full_name_, password_, note_, role_, phone_, address_;
        int active_;
        public string Admin_ID_ { get => admin_ID_; set => admin_ID_ = value; }
        public string Admin_name_ { get => admin_name_; set => admin_name_ = value; }
        public string Full_name_ { get => full_name_; set => full_name_ = value; }
        public string Password_ { get => password_; set => password_ = value; }
        public string Note_ { get => note_; set => note_ = value; }
        public string Role_ { get => role_; set => role_ = value; }
        public string Phone_ { get => phone_; set => phone_ = value; }
        public string Address_ { get => address_; set => address_ = value; }
        public int Active_ { get => active_; set => active_ = value; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_Categories
    {
        string category_ID_, category_name_, description_, group_ID_;

        public string Category_ID_ { get => category_ID_; set => category_ID_ = value; }
        public string Category_name_ { get => category_name_; set => category_name_ = value; }
        public string Description_ { get => description_; set => description_ = value; }
        public string Group_ID_ { get => group_ID_; set => group_ID_ = value; }

        public DTO_Categories()
        {

        }
    }
}

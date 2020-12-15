using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Product_Bonus
    {
        string product_id_, bonus_id;

        public string Product_id_ { get => product_id_; set => product_id_ = value; }
        public string Bonus_id { get => bonus_id; set => bonus_id = value; }
        public Product_Bonus()
        {

        }
    }
}

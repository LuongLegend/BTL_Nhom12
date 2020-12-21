using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_Products
    {
        string product_id_, product_name_, product_brand_, origin_, sumary_, photo_, deatail_;
        bool status_product_;
        int price_, quantity_;
        int active_;
        public DTO_Products()
        {

        }
        public int Price_ { get => price_; set => price_ = value; }
        public int Quantity_ { get => quantity_; set => quantity_ = value; }
        public string Product_id_ { get => product_id_; set => product_id_ = value; }
        public string Product_name_ { get => product_name_; set => product_name_ = value; }
        public string Product_brand_ { get => product_brand_; set => product_brand_ = value; }
        public string Origin_ { get => origin_; set => origin_ = value; }
        public string Sumary_ { get => sumary_; set => sumary_ = value; }
        public string Photo_ { get => photo_; set => photo_ = value; }
        public string Deatail_ { get => deatail_; set => deatail_ = value; }
        public bool Status_product_ { get => status_product_; set => status_product_ = value; }
        public int Active_ { get => active_; set => active_ = value; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_Sale
    {
        string sale_id_;
        int min_product_, sale_price_;

        public string Sale_id_ { get => sale_id_; set => sale_id_ = value; }
        public int Min_product_ { get => min_product_; set => min_product_ = value; }
        public int Sale_price_ { get => sale_price_; set => sale_price_ = value; }
        public DTO_Sale()
        {

        }
    }
}

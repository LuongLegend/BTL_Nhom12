using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
   public class DTO_Bonus
    {
        string bonus_id_, name_bonus_, photo_;
        int price_;

        public string Bonus_id_ { get => bonus_id_; set => bonus_id_ = value; }
        public string Name_bonus_ { get => name_bonus_; set => name_bonus_ = value; }
        public string Photo_ { get => photo_; set => photo_ = value; }
        public int Price_ { get => price_; set => price_ = value; }

        public DTO_Bonus() { }
    }
}

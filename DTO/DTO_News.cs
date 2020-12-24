using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_News
    {
        private string _newID; 
        public string newID { get => _newID; set => _newID = value; }

        private string _title;
        public string title { get => _title; set => _title = value; }

        private string _photo;
        public string photo { get => _photo; set => _photo = value; }

        private string _detail;
        public string detail { get => _detail; set => _detail = value; }

        private int _statusNews;
        public int statusNews { get => _statusNews; set => _statusNews = value; }

        private string _summary;
        public string summary { get => _summary; set => _summary = value; }

        public DTO_News()
        {

        }
    }
}

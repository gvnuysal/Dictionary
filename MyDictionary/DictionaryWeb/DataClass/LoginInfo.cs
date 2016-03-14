using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DictionaryWeb.DataClass
{
    public class LoginInfo
    {
        public int Id { get; set; }
        public int GroupId { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string Gender { get; set; }
        public int Score { get; set; }
        public int Stop { get; set; }
    }
}
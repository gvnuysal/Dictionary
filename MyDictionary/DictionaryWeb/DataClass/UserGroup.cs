using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace DictionaryWeb.DataClass
{
    public class UserGroup
    {
        [Key]
        public int GroupId { get; set; }
        public string UserGroupName { get; set; }
    }
}
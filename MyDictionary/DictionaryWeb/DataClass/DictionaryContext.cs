using System.Data.Entity;

namespace DictionaryWeb.DataClass
{
    public class DictionaryContext:DbContext
    {
        public DbSet<LoginInfo> LoginInfos { get; set; }
        public DbSet<SaveWord> Savewords { get; set; }
        public DbSet<UserGroup> UserGroups { get; set; }
    }
}
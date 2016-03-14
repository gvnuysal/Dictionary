using System.Collections.Generic;
using System.Linq;

namespace DictionaryWeb.DataClass
{
    public class WordRepository
    {
        public List<SaveWord>GetWords(int id)
        {
            DictionaryContext context=new DictionaryContext();

            var query = from g in context.Savewords
                        where g.UserId == id
                        select g;
            
            
            return query.ToList();
        }
    }
}
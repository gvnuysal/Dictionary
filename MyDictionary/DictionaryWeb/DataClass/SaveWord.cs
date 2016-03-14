
namespace DictionaryWeb.DataClass
{
    public class SaveWord
    {
        public int Id { get; set; }
        public string EngWord { get; set; }
        public string TurkishWord { get; set; }
        public string WordKind { get; set; }
        public int UserId { get; set; }
    }
}
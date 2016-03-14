using DictionaryWeb.DataClass;
using System;
using System.Linq;
using System.Web;
namespace DictionaryWeb.UserPages
{
    public partial class WordExam : System.Web.UI.Page
    {
        DictionaryContext context = new DictionaryContext();
        int selectNumber;
        Warnings warnings = new Warnings();
        string[] userWordEng;
        string[] userWordTR;
        string[] wordKind;
        
        int userId;
        int counter = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(IsPostBack))
            {
                TextBox2.Text = counter.ToString();
                HttpCookie cookie = Request.Cookies["UserInformation"];
                userId = int.Parse(cookie["Id"]);
                Button1.Enabled = false;
            }
        }
        protected void GetWordBtn_Click(object sender, EventArgs e)
        {          
            if (RadioButton1.Checked)
            {
                GetMyWord();
            }  

            else if(RadioButton2.Checked)
            {
                GetAnotherWord();
                
            }
            GetWordBtn.Enabled = false;
            Button1.Enabled = true;
        }      
     
        public void GetMyWord()
        {
            try
            {
                HttpCookie cookie = Request.Cookies["UserInformation"];
                userId = int.Parse(cookie["Id"]);
                Random number = new Random();
                turkishMeanTxt.Text = "";
                DictionaryContext context = new DictionaryContext();
                int i = 0;
                var query = from g in context.Savewords
                            where g.UserId == userId
                            select g;

                selectNumber = number.Next(0, query.Count());
                userWordEng = new string[query.Count()];
                userWordTR = new string[query.Count()];
                wordKind = new string[query.Count()];

                foreach (var item in query)
                {
                    userWordEng[i] = item.EngWord;
                    wordKind[i] = item.WordKind;
                    userWordTR[i] = item.TurkishWord;
                    i++;
                }

                engWordLabel.Text = userWordEng[selectNumber];
                wordKindLabel.Text = wordKind[selectNumber];
                TextBox1.Text = userWordTR[selectNumber];
            }
            catch ( Exception ex)
            {
                warningLabel.Text = "Mevcut Kelime Yok.";
            }
        }
        public void GetAnotherWord()
        {
            HttpCookie cookie = Request.Cookies["UserInformation"];
            userId = int.Parse(cookie["Id"]);
            Random number = new Random();
            turkishMeanTxt.Text = "";
            DictionaryContext context = new DictionaryContext();

            var query = from g in context.Savewords

                        select g;
            int i = 0;
            selectNumber = number.Next(0, query.Count());
            userWordEng = new string[query.Count()];
            userWordTR = new string[query.Count()];
            wordKind = new string[query.Count()];

            foreach (var item in query)
            {
                userWordEng[i] = item.EngWord;
                wordKind[i] = item.WordKind;
                userWordTR[i] = item.TurkishWord;
                i++;
            }

            engWordLabel.Text = userWordEng[selectNumber];
            wordKindLabel.Text = wordKind[selectNumber];
            TextBox1.Text = userWordTR[selectNumber];
        }
    
        public class Warnings
        {
            public string ErrorSpace()
            {
                return "Lütfen Boş Alan Bırakmayınız.";
            }
            public string False()
            {
                return "Girilen Kelime Yanlıştır.";
            }
            public string True()
            {
                return "Girilen Kelime Doğrudur.";
            }
        }
        void ErrorColor()
        {
            warningLabel.ForeColor = System.Drawing.Color.Red;
        }
        void SuccessColor()
        {
            warningLabel.ForeColor = System.Drawing.Color.DarkGreen;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {           
            if (turkishMeanTxt.Text.ToUpper() ==TextBox1.Text)
            {
                
                SuccessColor();
                counter =int.Parse(TextBox2.Text)+ 10;
                TextBox2.Text = counter.ToString();
                score.Text = counter.ToString();
                SuccessColor();
                warningLabel.Text = warnings.True();
                Button1.Enabled = false;
                GetWordBtn.Enabled = true;               
            }
            else
            {
                counter = int.Parse(TextBox2.Text) -5;
                TextBox2.Text = counter.ToString();
                score.Text = counter.ToString();
                ErrorColor();
                warningLabel.Text = warnings.False();
                Button1.Enabled = true;
                GetWordBtn.Enabled = false;
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
          
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
        

        }     
    }
}
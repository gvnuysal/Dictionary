using DictionaryWeb.DataClass;
using System;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
namespace DictionaryWeb.Pages
{
    public partial class SaveWorInformation : System.Web.UI.Page
    {
        Warnings warnings = new Warnings();
        DictionaryContext context = new DictionaryContext();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                HttpCookie cookie = Request.Cookies["UserInformation"];
                ObjectDataSource1.SelectParameters["Id"].DefaultValue = cookie["Id"];
            }
            catch(Exception ex)
            {
                warningLabel.Text = ex.Message;
            }
        }
        protected void SaveButton_Click(object sender, EventArgs e)
        {
            SpaceControl();
            
        }

        public class Warnings
        {
            public string SpaceError()
            {
                return "Lütfen Tüm Alanları Doldurunuz.";
            }
            public string Success()
            {
                return "Kelime Kayıt Edildi";
            }
            public string AllReadySystem()
            {
                return "Kelime Sistemde Mevcut.";
            }
        }

        void SpaceControl()
        {
            if(wordEngTxt.Text==""||wordTurkishTxt.Text=="")
            {
                ErrorColor();
                warningLabel.Text = warnings.SpaceError();
            }
            else
            {
                int value = IsNumber(wordEngTxt.Text, wordTurkishTxt.Text);
                 if(value==1)
                 {
                     ErrorColor();
                     warningLabel.Text="Rakam Kullanılamaz.";
                 }
                 else
                 {                     
                     WordAllReady();//Kayıt sistemde mevcut mu diye bakılacak
                 }
            }
        }
        public int IsNumber(string name, string surname)
        {
            string value = name + " " + surname;
            for (int i = 0; i < value.Length; i++)
            {
                if (value[i] == '0' ||
                    value[i] == '1' ||
                    value[i] == '2' ||
                    value[i] == '3' ||
                    value[i] == '4' ||
                    value[i] == '5' ||
                    value[i] == '6' ||
                    value[i] == '7' ||
                    value[i] == '8' ||
                    value[i] == '9')
                {
                    return 1;
                }
            }
            return 0;
        }
        void WordAllReady()
        {
            HttpCookie cookie = Request.Cookies["UserInformation"];
            int id = int.Parse(cookie["Id"]);
            int wordCount = (from w in context.Savewords
                       where w.EngWord == wordEngTxt.Text && w.WordKind==wordKind.Text &&w.UserId==id
                       select w).Count();

            if(wordCount==1)
            {
                ErrorColor();
                warningLabel.Text = warnings.AllReadySystem();
            }
            else
            {
                SuccessColor();
                warningLabel.Text = warnings.Success();
                SaveWordInfo();
            }
        }
        void SaveWordInfo()
        {
            HttpCookie cookie = Request.Cookies["UserInformation"];

            var wordInfo = new SaveWord
            {
                EngWord=wordEngTxt.Text.ToUpper(),
                TurkishWord=wordTurkishTxt.Text.ToUpper(),
                WordKind=wordKind.SelectedItem.Value,
                UserId=int.Parse(cookie["Id"])
            };
            context.Savewords.Add(wordInfo);
            context.SaveChanges();


            SuccessColor();
            warningLabel.Text = warnings.Success();
            ObjectDataSource1.SelectParameters["Id"].DefaultValue = cookie["Id"];
            Response.Redirect("~/UserPages/SaveWordInfo.aspx");
        }
        void ErrorColor()
        {
            warningLabel.ForeColor = System.Drawing.Color.Red;
        }
        void SuccessColor()
        {
            warningLabel.ForeColor = System.Drawing.Color.Green;
        }

        protected void myWordList_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void myWordList_RowEditing(object sender, GridViewEditEventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserInformation"];
            myWordList.EditIndex = e.NewEditIndex;//Tıkladığımız satır güncelleme modunda gözükecek
            ObjectDataSource1.SelectParameters["Id"].DefaultValue = cookie["Id"];   
        }       
    }
}
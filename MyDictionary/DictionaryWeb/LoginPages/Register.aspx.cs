using DictionaryWeb.DataClass;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
namespace DictionaryWeb.LoginPages
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*nameTxt.Text = "";
            surnameTxt.Text = "";
            userNameTxt.Text = "";
            passwordTxt.Text = "";*/
        }

        ShowWarnings warnings = new ShowWarnings();
        protected void SaveButton_Click(object sender, EventArgs e)
        {          
            SpaceControl();       
                    
        }
        void SpaceControl()
        {
            if(userNameTxt.Text=="" || nameTxt.Text==""||surnameTxt.Text==""||passwordTxt.Text=="")
            {
                ErrorColor();
                warningLabel.Text = warnings.SpaceErrors();
            }
            else
            {
                int value = IsNumber(nameTxt.Text, surnameTxt.Text);     
                if(value==1)
                {
                    ErrorColor();
                    warningLabel.Text = "İsim ya da soyisimde rakam yeralamaz.";
                }
                else
                {
                    SuccessColor();
                    SaveInformation();
                }
            }
        }
        void SaveInformation()
        {
            using(DictionaryContext context=new DictionaryContext())
            {
                try
                {
                    int userCount = (from uC in context.LoginInfos
                                    where uC.UserName == userNameTxt.Text
                                    select uC).Count();

                   //.........Kayıt mevcut mu diye Kontrol Ediliyor..............//
                    if (userCount == 1)
                    {
                        ErrorColor();
                        warningLabel.Text = warnings.AllreadyInfo();
                    }
                    else
                    {
                        var info = new LoginInfo
                        {
                            UserName = userNameTxt.Text,
                            Name = nameTxt.Text.ToUpper(),
                            Surname = surnameTxt.Text.ToUpper(),
                            Password = passwordTxt.Text,
                            Gender = gender.SelectedItem.Value
                        };
                        context.LoginInfos.Add(info);
                        context.SaveChanges();
                        SuccessColor();
                       warningLabel.Text= warnings.Success();
                    }
                    //..........................................................//

                }
                catch(Exception error)
                {
                    warningLabel.Text = error.Message;
                }
            }
        }
        public int IsNumber(string name,string surname)
        {
            string value=name+" "+surname;
            for (int i = 0; i < value.Length;i++)
            {
                if(value[i]=='0'||
                    value[i]=='1'||
                    value[i]=='2'||
                    value[i]=='3'||
                    value[i]=='4'||
                    value[i]=='5'||
                    value[i]=='6'||
                    value[i]=='7'||
                    value[i]=='8'||
                    value[i]=='9')
                {
                    return 1;
                }
            }
                return 0;
        }
        
        public class ShowWarnings
        {
            public string SpaceErrors()
            {                
                return "Lütfen Bütün Bilgileri Eksiksiz Giriniz";
            }
            public string Success()
            {
                return "Bilgiler Kayıt Edildi";
            }
            public string AllreadyInfo()
            {
                return "Kayıt Sistemde Mevcut.";
            }
        }
        void ErrorColor()
        {
            warningLabel.ForeColor = System.Drawing.Color.Red;
        }
        void SuccessColor()
        {
            warningLabel.ForeColor = System.Drawing.Color.Green;
        }
    }
}
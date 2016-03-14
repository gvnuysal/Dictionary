using DictionaryWeb.DataClass;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DictionaryWeb.LoginPages
{
    public partial class SendPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Warnings warnings = new Warnings();
        protected void GetPasswordButton_Click(object sender, EventArgs e)
        {
            SpaceControl();   
        }
        void SpaceControl()
        {
            if(userNameTxt.Text=="" || nameTxt.Text=="")
            {
                ErrorColor();
                passwordLabel.Text = warnings.SpaceError();
            }
            else
            {
                GetPassword();
            }
        }

        void GetPassword()
        {
            using(DictionaryContext context=new DictionaryContext())
            {
                var userPassword = (from uP in context.LoginInfos
                                   where uP.UserName == userNameTxt.Text.ToUpper()
                                   && uP.Name==nameTxt.Text
                                   select uP.Password).ToList();
                if (userPassword.Count()==1)
                {
                    passwordLabel.ForeColor = System.Drawing.Color.Black;
                    foreach (var item in userPassword)
                    {
                        passwordLabel.Text = item.ToString();
                    }
                }
                else
                {
                    ErrorColor();
                    passwordLabel.Text = warnings.NotAllReady();
                }
                
            }
        }

        public class Warnings
        {
            public string SpaceError()
            {
                return "Lütfen Boş Alan Bırakmayınız.";
            }
            public string NotAllReady()
            {
                return "Kullanıcı Sistemde Mevcut Değil";
            }
        }
        void ErrorColor()
        {
            passwordLabel.ForeColor = System.Drawing.Color.Red;
        }
    }
}
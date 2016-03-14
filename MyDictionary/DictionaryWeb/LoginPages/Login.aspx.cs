using DictionaryWeb.DataClass;
using System;
using System.Linq;
using System.Web;

namespace DictionaryWeb.LoginPages
{
    public partial class Login : System.Web.UI.Page
    {
        Warnings warnings = new Warnings();
        protected void EnterSystem_Click(object sender, EventArgs e)
        {
            SpaceControl();
        }

        void SpaceControl()
        {
            if(passwordTxt.Text==""|| userNameTxt.Text=="")
            {
                ErrorColor();
                ErrorMessageSpace();
            }
            else
            {
                EnterSystems();
            }
        }
        void EnterSystems()
        {
            using(var context=new DictionaryContext())
            {
                int userCount = (from userInfo in context.LoginInfos
                           where userInfo.UserName == userNameTxt.Text && userInfo.Password == passwordTxt.Text
                           select userInfo).Count();
               
                var user = from u in context.LoginInfos
                           where u.UserName == userNameTxt.Text &&
                           u.Password == passwordTxt.Text &&
                           u.Stop==1
                           select u;



                if(userCount==1)
                {
                    HttpCookie userCookie = new HttpCookie("UserInformation");

                    foreach (var item in user)
                    {
                        userCookie["Name"] = item.Name;
                        userCookie["Surname"] = item.Surname;
                        userCookie["Id"] = item.Id.ToString();                       
                        userCookie.Expires = DateTime.Now.AddHours(1);
                        Response.Cookies.Add(userCookie);


                        Response.Redirect("~/UserPages/Admin");
                    }
                    
                }
                else
                {
                    ErrorColor();
                    warningLabel.Text = warnings.NotAllreadyInfo();
                }
            }
        }

        public class Warnings
        {
            public string NotAllreadyInfo()
            {
                return "Kullanıcı Sistemde Mevcut Değildir.<br>Lütfen Kayıt Olunuz.";
            }
        }
        void ErrorColor()
        {
            warningLabel.ForeColor = System.Drawing.Color.Red;            
        }
        void ErrorMessageSpace()
        {
            warningLabel.Text = "Lütfen Boş Alan Bırakmayınız.";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cookies["UserInformation"].Expires = DateTime.Now.AddHours(-1);
        }
    }
}
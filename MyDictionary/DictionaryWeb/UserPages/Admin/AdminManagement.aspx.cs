using DictionaryWeb.DataClass;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DictionaryWeb.UserPages.Admin
{
    public partial class AdminManagement : System.Web.UI.Page
    {
        DictionaryContext context = new DictionaryContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
   
        protected void btnFindAdmin_Click(object sender, EventArgs e)
        {

           
                 var query = from uG in context.UserGroups
                            join getAdmin in context.LoginInfos on
                          uG.GroupId equals getAdmin.GroupId 
                           where uG.UserGroupName=="YÖNETİCİ"
                            select new
                            {
                                getAdmin.UserName,
                                getAdmin.Name,
                                getAdmin.Surname,
                                uG.UserGroupName,
                                getAdmin.Gender
                            };
                 if (query.Count() > 0)
                 {
                     GridView1.DataSource = query.ToList();
                     GridView1.DataBind();
                     Label1.Text = "";
                     GridView1.Visible = true;
                 }
                 else
                 {
                     Label1.Text = "KAYITLI ADMİN YOKTUR";

                     GridView1.Visible = false;
                 }
           
             
        }

        protected void btnFindUser_Click(object sender, EventArgs e)
        {
            var query = from uG in context.UserGroups
                        join getAdmin in context.LoginInfos on
                        uG.GroupId equals getAdmin.GroupId
                        where uG.UserGroupName=="KULLANICI"
                        select new
                        {
                            getAdmin.UserName,
                            getAdmin.Name,
                            getAdmin.Surname,
                            uG.UserGroupName,
                            getAdmin.Gender
                        };

            if (query.Count() > 0)
            {
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
                Label1.Text = "";
                GridView1.Visible = true;
            }
            else
            {
                Label1.Text = "KAYITLI KULLANICI YOKTUR";

                GridView1.Visible = false;
            }
                
        }

        protected void btnFindLast20_Click(object sender, EventArgs e)
        {
            var query = from uG in context.UserGroups
                        join getAdmin in context.LoginInfos on
                        uG.GroupId equals getAdmin.GroupId                       
                        select new
                        {
                            getAdmin.UserName,
                            getAdmin.Name,
                            getAdmin.Surname,
                            uG.UserGroupName,
                            getAdmin.Gender
                        };

            if (query.Count() > 0)
            {
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
                Label1.Text = "";
                GridView1.Visible = true;
            }
            else
            {
                Label1.Text = "KAYITLI KULLANICI YOKTUR";

                GridView1.Visible = false;
            }
        }
    }
}
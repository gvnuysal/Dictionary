using System;
using DictionaryWeb.DataClass;
using System.Linq;
using System.Collections.Generic;
namespace DictionaryWeb.UserPages.Admin
{
    public partial class UserManagement : System.Web.UI.Page
    {
        DictionaryContext context = new DictionaryContext();
        string groupId = ""; string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            groupId = Request.QueryString["GroupIdId"];
            TextBox2.Text = groupId;
            islem = Request.QueryString["islem"];

            if(islem=="sil")
            {
                DeleteGroup();
                Response.Redirect("GroupManagement.aspx");
            }


            repeaterGroup.DataSource = GetData();
            repeaterGroup.DataBind();
        }

        public List<UserGroup>GetData()
        {
            var query = from g in context.UserGroups
                        select g;

            return query.ToList();
        }

        public void DeleteGroup()
        {
            var gid = int.Parse(groupId);
            UserGroup delGroup = context.UserGroups.Where(d => d.GroupId == gid).FirstOrDefault();

            context.UserGroups.Remove(delGroup);
            context.SaveChanges();
        }

        protected void btn_ekle_Click(object sender, EventArgs e)
        {
            SaveGroup(TextBox1.Text);
            Response.Redirect("GroupManagement.aspx");
        }

        void SaveGroup(string groupName)
        {
            var group=new UserGroup
            {
                UserGroupName=groupName.ToUpper()
            };
            context.UserGroups.Add(group);
            context.SaveChanges();
        }
    }
}
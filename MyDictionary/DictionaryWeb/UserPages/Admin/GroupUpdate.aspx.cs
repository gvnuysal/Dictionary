using DictionaryWeb.DataClass;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DictionaryWeb.UserPages.Admin
{
    public partial class GroupUpdate : System.Web.UI.Page
    {
        string groupId = "",groupName;
        int gId = 0;
        DictionaryContext context = new DictionaryContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            groupId = Request.QueryString["GroupId"];
            gId =int.Parse(groupId);

            if (Page.IsPostBack == false)
            {
                var query = from g in context.UserGroups
                            where g.GroupId == gId
                            select g.UserGroupName;
                foreach (var item in query)
                {
                    groupNameTxt.Text = item.ToString();
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            groupName = groupNameTxt.Text.ToUpper();
            UpdateGroupName(gId, groupName);
        }

        void UpdateGroupName(int id,string groupName)
        {
            Response.Write(groupName);
            UserGroup userGroup;
            using(var ctx=new DictionaryContext())
            {
                userGroup = ctx.UserGroups.Where(g => g.GroupId == id).SingleOrDefault();
            }
            if(userGroup!=null)
            {
                userGroup.UserGroupName = groupName;
            }

            context.Entry(userGroup).State = System.Data.Entity.EntityState.Modified;
            context.SaveChanges();

            Response.Redirect("GroupManagement.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void link1_Click(object sender, EventArgs e)
        {
            Response.Redirect("authm.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("alogin.aspx");
        }

        protected void link4_Click(object sender, EventArgs e)
        {
            Response.Redirect("member.aspx");
        }

        protected void link2_Click(object sender, EventArgs e)
        {
            Response.Redirect("pubm.aspx");
        }

        protected void link3_Click(object sender, EventArgs e)
        {
            Response.Redirect("biv.aspx");
        }

        protected void ur_Click(object sender, EventArgs e)
        {
            Response.Redirect("ur.aspx");
        }

        protected void link5_Click(object sender, EventArgs e)
        {
            Response.Redirect("comic.aspx");
        }

        
    }
}
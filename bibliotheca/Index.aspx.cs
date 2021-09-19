using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bibliotheca
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                hlSignin.Visible = false;
                hlSignup.Visible = false;
                hlUser.Visible = true;
                lblUser.Text = Session["user"].ToString();
                string utype = Session["type"].ToString();

                if (utype == "2")
                {
                    hlAdd.Visible = true;
                    hlProfileB.Visible = false;
                    hlProfileS.Visible = true;
                }
            }
        }

        protected void lbtnSignout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Cookies.Clear();
            Response.Redirect("Index.aspx");
        }
    }
}
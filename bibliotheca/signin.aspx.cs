using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bibliotheca
{
    public partial class signin : System.Web.UI.Page
    {
        ConnectionLayer con = new ConnectionLayer();

        protected void btnSignin_Click(object sender, EventArgs e)
        {
            Hash hash = new Hash();

            SqlCommand cmd = new SqlCommand("select user_id, name, type_id from tbl_users where email= @email and password = @password", con.Setconnection());
            cmd.Parameters.AddWithValue("email", txtEmail.Text);
            cmd.Parameters.AddWithValue("password", hash.CalculateSHA256(txtPswd.Text));
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["uid"] = dr[0];
                Session["user"] = dr[1];
                Session["type"] = dr[2];
                Response.Redirect("Index.aspx");
                Session.RemoveAll();
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Script", "alert('Incorrect email or password!');", true);
            }
        }
    }
}
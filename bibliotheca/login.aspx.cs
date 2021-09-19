using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bibliotheca.forms
{
    public partial class login : System.Web.UI.Page
    {
        ConnectionLayer con = new ConnectionLayer();

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select email from tbl_users where email = @email", con.Setconnection());
            cmd.Parameters.AddWithValue("email", txtEmail.Text);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Script", "alert('This email already exists');", true);

            }
            else
            {
                Hash hash = new Hash();
                SqlCommand cmd1 = new SqlCommand("insert into tbl_users output INSERTED.user_id values(@name, @email, @password, @type_id)", con.Setconnection());

                cmd1.Parameters.AddWithValue("name", txtName.Text);
                cmd1.Parameters.AddWithValue("email", txtEmail.Text);
                cmd1.Parameters.AddWithValue("password", hash.CalculateSHA256(txtPswd.Text));
                cmd1.Parameters.AddWithValue("type_id", rbtnUser.SelectedValue);
                int uid = (int)cmd1.ExecuteScalar();

                if (rbtnUser.SelectedValue == "2")
                {
                    SqlCommand cmd2 = new SqlCommand("insert into tbl_sellers(user_id) values(@user_id)", con.Setconnection());
                    cmd2.Parameters.AddWithValue("user_id", uid);
                    cmd2.ExecuteNonQuery();
                }

                txtName.Text = "";
                txtEmail.Text = "";

                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Script", "alert('Succesfully registered. Signin to continue');", true);
            }
        }
    }
}
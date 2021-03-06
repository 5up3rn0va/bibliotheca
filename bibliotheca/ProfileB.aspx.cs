using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bibliotheca
{
    public partial class Profile : System.Web.UI.Page
    {
        ConnectionLayer con = new ConnectionLayer();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] != null)
            {
                string type = Session["type"].ToString();

                if (type != "3")
                {
                    Response.Redirect("Index.aspx");
                }

                if (!IsPostBack)
                {
                    string user_id = Session["uid"].ToString();

                    SqlCommand cmd = new SqlCommand("select name, email from tbl_users where user_id = @user_id", con.Setconnection());
                    cmd.Parameters.AddWithValue("user_id", user_id);
                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        txtName.Text = dr[0].ToString();
                        txtEmail.Text = dr[1].ToString();
                    }
                }
            }
            else
            {
                Response.Redirect("signin.aspx");
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string user_id = Session["uid"].ToString();
            SqlCommand cmd1 = new SqlCommand("update tbl_users set name = @name, email = @email where (user_id = @user_id)", con.Setconnection());

            cmd1.Parameters.AddWithValue("name", txtName.Text);
            cmd1.Parameters.AddWithValue("email", txtEmail.Text);
            cmd1.Parameters.AddWithValue("user_id", user_id);

            cmd1.ExecuteNonQuery();
        }
    }
}
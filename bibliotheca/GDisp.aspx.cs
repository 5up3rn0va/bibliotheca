using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bibliotheca
{
    public partial class GDisp : System.Web.UI.Page
    {
        ConnectionLayer con = new ConnectionLayer();

        protected void Page_Load(object sender, EventArgs e)
        {
            string Id = Request.QueryString["id"].ToString();

            SqlCommand cmd = new SqlCommand("select * from tbl_books where book_id = @book_id", con.Setconnection());
            cmd.Parameters.AddWithValue("book_id", Id);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Label1.Text = dr[1].ToString();
                Label14.Text = dr[2].ToString();
                Label14.Text = dr[2].ToString();
                Label16.Text = dr[4].ToString();
                Label17.Text = dr[5].ToString();

            }
        }
    }
}
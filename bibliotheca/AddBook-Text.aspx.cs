using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bibliotheca
{
    public partial class AddBook_Text : System.Web.UI.Page
    {
        ConnectionLayer con = new ConnectionLayer();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                string type = Session["type"].ToString();

                if (type != "2")
                {
                    Response.Redirect("Index.aspx");
                }

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
            else
            {
                Response.Redirect("signin.aspx");
            }
        }

        protected void lbtnSignout_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Cookies.Clear();
            Response.Redirect("Index.aspx");
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            TextInfo textInfo = new CultureInfo("en-US", false).TextInfo;
            SqlCommand cmd = new SqlCommand("select publisher_id from tbl_publishers where publisher_name = @publisher_name", con.Setconnection());
            cmd.Parameters.AddWithValue("publisher_name", textInfo.ToTitleCase(txtPub.Text));
            SqlDataReader dr = cmd.ExecuteReader();
            int pid;

            if (dr.Read())
            {
                pid = (int)dr[0];

            }
            else
            {
                cmd = new SqlCommand("insert into tbl_publishers output INSERTED.publisher_id values(@publisher_name)", con.Setconnection());
                cmd.Parameters.AddWithValue("publisher_name", textInfo.ToTitleCase(txtPub.Text));
                pid = (int)cmd.ExecuteScalar();
            }

            cmd = new SqlCommand("select author_id from tbl_authors where author_name = @author_name", con.Setconnection());
            cmd.Parameters.AddWithValue("author_name", textInfo.ToTitleCase(txtAuthor.Text));
            dr = cmd.ExecuteReader();
            int aid;

            if (dr.Read())
            {
                aid = (int)dr[0];

            }
            else
            {
                cmd = new SqlCommand("insert into tbl_authors output INSERTED.author_id values(@author_name)", con.Setconnection());
                cmd.Parameters.AddWithValue("author_name", textInfo.ToTitleCase(txtAuthor.Text));
                aid = (int)cmd.ExecuteScalar();
            }

            string uid = Session["uid"].ToString();
            SqlCommand cmd1 = new SqlCommand("insert into tbl_books output INSERTED.book_id values(@title, @isbn, @publisher_id, @pages, @year, @format_id, @book_cover, @og_price, @price, @condition_id, @author_id, @added_by)", con.Setconnection());
            cmd1.Parameters.AddWithValue("title", textInfo.ToTitleCase(txtTitle.Text));
            cmd1.Parameters.AddWithValue("isbn", txtIsbn.Text);
            cmd1.Parameters.AddWithValue("publisher_id", pid);
            cmd1.Parameters.AddWithValue("pages", txtPages.Text);
            cmd1.Parameters.AddWithValue("year", txtYear.Text);
            cmd1.Parameters.AddWithValue("format_id", ddlFormat.SelectedValue);
            if (fuCover.HasFile)
            {
                int imagefilelenth = fuCover.PostedFile.ContentLength;
                byte[] imgarray = new byte[imagefilelenth];
                HttpPostedFile image = fuCover.PostedFile;
                image.InputStream.Read(imgarray, 0, imagefilelenth);
                cmd1.Parameters.AddWithValue("@book_cover", SqlDbType.Image).Value = imgarray;
            }
            cmd1.Parameters.AddWithValue("og_price", txtOgPrice.Text);
            cmd1.Parameters.AddWithValue("price", txtPrice.Text);
            cmd1.Parameters.AddWithValue("condition_id", ddlCondition.SelectedValue);
            cmd1.Parameters.AddWithValue("author_id", aid);
            cmd1.Parameters.AddWithValue("added_by", uid);

            int bid = (int)cmd1.ExecuteScalar();

            SqlCommand cmd2 = new SqlCommand("insert into tbl_dept_books values(@book_id, @dept_id)", con.Setconnection());
            cmd2.Parameters.AddWithValue("book_id", bid);
            cmd2.Parameters.AddWithValue("dept_id", ddlDept.SelectedValue);
            cmd2.ExecuteNonQuery();

            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Script", "alert('Book Added!');", true);
        }
    }
}
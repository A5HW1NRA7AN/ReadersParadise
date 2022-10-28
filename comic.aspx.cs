﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        static string global_filepath;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillAuthorPublisherValues();
            }
            GridView2.DataBind();
        }

        //update
        protected void Button3_Click(object sender, EventArgs e)
        {
            updateBookById();
        }

        //delete
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteBookByID();
        }

        //go
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getBookById();
        }


        //user defined


        void deleteBookByID()
        {
            if (checkIfBookExists())
            {


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from comic_master_table  WHERE book_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Book DELETED Successfully.');</script>");

                GridView2.DataBind();


                // catch (Exception ex)
                // {
                //   Response.Write("<script>alert('" + ex.Message + "');</script>");
                // }

            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID.');</script>");
            }
        }

        void updateBookById()
        {
            if (checkIfBookExists())
            {
                try
                {
                    string genres = "";
                    foreach (int i in ListBox1.GetSelectedIndices())
                    {
                        genres = genres + ListBox1.Items[i] + ",";
                    }
                    genres = genres.Remove(genres.Length - 1);

                    string filepath = "~/bookinventory/books1";
                    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    if (filename == "" || filename == null)
                    {
                        filepath = global_filepath;

                    }
                    else
                    {
                        FileUpload1.SaveAs(Server.MapPath("bookinventory/" + filename));
                        filepath = "~/bookinventory/" + filename;
                    }


                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }
                    SqlCommand cmd = new SqlCommand("UPDATE comic_master_table set book_name=@book_name, genre=@genre, author_name=@author_name, publisher_name=@publisher_name, publish_date=@publish_date, language=@language, edition=@edition, no_of_pages=@no_of_pages, book_description=@book_description,book_img_link=@book_img_link where book_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.Parameters.AddWithValue("@book_name", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@genre", genres);
                    cmd.Parameters.AddWithValue("@author_name", DropDownList3.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@publisher_name", DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@publish_date", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@language", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@edition", TextBox9.Text.Trim());
                    //cmd.Parameters.AddWithValue("@book_cost", TextBox10.Text.Trim());
                    cmd.Parameters.AddWithValue("@no_of_pages", TextBox11.Text.Trim());
                    cmd.Parameters.AddWithValue("@book_description", TextBox6.Text.Trim());
                    // cmd.Parameters.AddWithValue("@actual_stock", actual_stock.ToString());
                    // cmd.Parameters.AddWithValue("@current_stock", current_stock.ToString());
                    cmd.Parameters.AddWithValue("@book_img_link", filepath);


                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView2.DataBind();
                    Response.Write("<script>alert('Book Updated Successfully.');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }


            }
            else
            {
                Response.Write("<script>alert('Invalid Book ID.');</script>");
            }
        }



        bool checkIfBookExists()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from comic_master_table where book_id='" + TextBox1.Text.Trim() + "' OR book_name='" + TextBox2.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }


        void fillAuthorPublisherValues()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT author_name from author_master_tbl; ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList3.DataSource = dt;
            DropDownList3.DataValueField = "author_name";
            DropDownList3.DataBind();

            cmd = new SqlCommand("SELECT publisher_name from publisher_master_tbl; ", con);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            DropDownList2.DataSource = dt;
            DropDownList2.DataValueField = "publisher_name";
            DropDownList2.DataBind();
            //try
            //{
            //    SqlConnection con = new SqlConnection(strcon);
            //    if (con.State == ConnectionState.Closed)
            //    {
            //        con.Open();
            //    }
            //    SqlCommand cmd = new SqlCommand("SELECT author_name from author_master_tbl; ", con);
            //    SqlDataAdapter da = new SqlDataAdapter(cmd);
            //    DataTable dt = new DataTable();
            //    da.Fill(dt);
            //    DropDownList3.DataSource = dt;
            //    DropDownList3.DataValueField = "author_name";
            //    DropDownList3.DataBind();

            //    cmd = new SqlCommand("SELECT publisher_name from publisher_master_tbl; ", con);
            //    da = new SqlDataAdapter(cmd);
            //    dt = new DataTable();
            //    da.Fill(dt);
            //    DropDownList2.DataSource = dt;
            //    DropDownList2.DataValueField = "publisher_name";
            //    DropDownList2.DataBind();

            //}

            //catch (Exception ex)
            //{

            //}
        }

        void addNewBook()
        {
            try
            {
                string genres = "";
                foreach (int i in ListBox1.GetSelectedIndices())
                {
                    genres = genres + ListBox1.Items[i] + ",";
                }
                // genres = Adventure,Self Help,
                genres = genres.Remove(genres.Length - 1);

                string filepath = "~/bookinventory/books1.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("bookinventory/" + filename));
                filepath = "~/bookinventory/" + filename;


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO comic_master_table(book_id,book_name,genre,author_name,publisher_name,publish_date,language,edition,no_of_pages,book_description,book_img_link) values(@book_id,@book_name,@genre,@author_name,@publisher_name,@publish_date,@language,@edition,@no_of_pages,@book_description,@book_img_link)", con);

                cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@genre", genres);
                cmd.Parameters.AddWithValue("@author_name", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publisher_name", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publish_date", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@language", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@edition", TextBox9.Text.Trim());
                //cmd.Parameters.AddWithValue("@book_cost", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@no_of_pages", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@book_description", TextBox6.Text.Trim());
                //cmd.Parameters.AddWithValue("@actual_stock", TextBox4.Text.Trim());
                //cmd.Parameters.AddWithValue("@current_stock", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@book_img_link", filepath);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Book added successfully.');</script>");
                GridView2.DataBind();
                clearForm();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void getBookById()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * from comic_master_table WHERE book_id='" + TextBox1.Text.Trim() + "'; ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                TextBox2.Text = dt.Rows[0]["book_name"].ToString();
                TextBox3.Text = dt.Rows[0]["publish_date"].ToString();
                TextBox9.Text = dt.Rows[0]["edition"].ToString();
                TextBox10.Text = dt.Rows[0]["book_description"].ToString();
                TextBox11.Text = dt.Rows[0]["no_of_pages"].ToString();

                //DropDownList2.SelectedValue = dt.Rows[0]["language"].ToString().Trim();
                DropDownList3.SelectedValue = dt.Rows[0]["author_name"].ToString().Trim();
                DropDownList2.SelectedValue = dt.Rows[0]["publisher_name"].ToString().Trim();

                ListBox1.ClearSelection();
                string[] genre = dt.Rows[0]["genre"].ToString().Trim().Split(',');
                for (int i = 0; i < genre.Length; i++)
                {
                    for (int j = 0; j < ListBox1.Items.Count; j++)
                    {
                        if (ListBox1.Items[j].ToString() == genre[i])
                        {
                            ListBox1.Items[j].Selected = true;

                        }

                    }
                }
                global_filepath = dt.Rows[0]["book_img_link"].ToString();
            }
            else
            {
                Response.Write("<script>alert('Ínvalid Book ID');</script>");
            }
        }

        //add
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfBookExists())
            {
                Response.Write("<script>alert('Book Already Exists, try some other Book ID');</script>");
            }
            else
            {
                addNewBook();
            }
            //SqlConnection con = new SqlConnection(strcon);

            //con.Open();

            //SqlCommand cmd = new SqlCommand("INSERT INTO book_master_tbl(book_id,book_name,author_name,publisher_name,publish_date,language,edition,book_cost,no_of_pages,book_description,actual_stcok,current_stock) values(@book_id,@book_name,@author_name,@publisher_name,@publish_date,@language,@edition,@book_cost,@no_of_pages,@book_description,@actual_stock,@current_stock)", con);

            //cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());
            //cmd.Parameters.AddWithValue("@book_name", TextBox2.Text.Trim());
            ////cmd.Parameters.AddWithValue("@genre", genres);
            //cmd.Parameters.AddWithValue("@author_name", DropDownList3.SelectedItem.Value);
            //cmd.Parameters.AddWithValue("@publisher_name", DropDownList2.SelectedItem.Value);
            //cmd.Parameters.AddWithValue("@publish_date", TextBox3.Text.Trim());
            //cmd.Parameters.AddWithValue("@language", DropDownList1.SelectedItem.Value);
            //cmd.Parameters.AddWithValue("@edition", TextBox9.Text.Trim());
            //cmd.Parameters.AddWithValue("@book_cost", TextBox10.Text.Trim());
            //cmd.Parameters.AddWithValue("@no_of_pages", TextBox11.Text.Trim());
            //cmd.Parameters.AddWithValue("@book_description", TextBox6.Text.Trim());
            //cmd.Parameters.AddWithValue("@actual_stock", TextBox4.Text.Trim());
            //cmd.Parameters.AddWithValue("@current_stock", TextBox4.Text.Trim());
            ////cmd.Parameters.AddWithValue("@book_img_link", filepath);

            //cmd.ExecuteNonQuery();
            //con.Close();
            //Response.Write("<script>alert('Book added successfully.');</script>");
            //GridView1.DataBind();
        }

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}
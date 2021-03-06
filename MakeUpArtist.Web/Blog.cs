﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MakeUpArtist.Web
{
    public class Blog
    {
        //dodanie posta
        public static bool addPost(string title, string body, int category, string image)
        {
            bool result = false;

            try
            {
                string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    string query = "INSERT INTO dbo.Post (PostTitle, PostDate, PostDeleted, PostOwner, PostBody, PostCategory, PostImage) values (@title, @date, @deleted, @owner, @body, @category, @image)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@title", title);
                        cmd.Parameters.AddWithValue("@date", System.DateTime.Now);
                        cmd.Parameters.AddWithValue("@deleted", "false");
                        cmd.Parameters.AddWithValue("@owner", "Admin");
                        cmd.Parameters.AddWithValue("@body", body);
                        cmd.Parameters.AddWithValue("@category", category.ToString());
                        cmd.Parameters.AddWithValue("@image", image);
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        result = true;
                    }
                }
            }
            catch (Exception)
            {
                result = false;
            }

            return result;
        }

        //pobranie posta
        public static DataTable getPost(int postID)
        {
            
            DataTable dt = new DataTable();
            try
            {
                string connString = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connString))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = conn;
                    cmd.CommandText =
                    cmd.CommandText =
                                        "SELECT PostID, PostTitle, PostDate, CategoryName, PostBody, PostImage FROM dbo.Post " +
                                        "INNER JOIN dbo.Category ON dbo.Post.PostCategory = dbo.Category.CategoryID " +
                                        "WHERE PostDeleted = 0 AND PostID = " + postID.ToString();
                    conn.Open();
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        dt.Load(rdr);
                    }
                }

            }
            catch (Exception)
            {

            }
            return dt;
        }

        //naglowki dla kategorii
        public static Tuple<DataTable, bool> getPosts()
        {
            DataTable dt = new DataTable();
            bool result = false;
            try
            {
                string connString = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connString))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = conn;
                    cmd.CommandText =
                    cmd.CommandText =
                                        "SELECT PostID, PostTitle, PostDate, CategoryName, PostImage, PostBody FROM dbo.Post " +
                                        "INNER JOIN dbo.Category ON dbo.Post.PostCategory = dbo.Category.CategoryID " +
                                        "WHERE PostDeleted = 0 "+
                                        "ORDER BY PostDate";
                    conn.Open();
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        dt.Load(rdr);
                        result = true;
                    }
                }
            }
            catch (Exception)
            {
                result = false;
            }
            Tuple<DataTable, bool> tplHeaders = new Tuple<DataTable, bool>(dt, result);
            return tplHeaders;
        }

        //naglowki dla news
        public static Tuple<DataTable, bool> getHeadersNews()
        {
            DataTable dt = new DataTable();
            bool result = false;
            try
            {
                string connString = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connString))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = conn;
                    cmd.CommandText =
                    cmd.CommandText =
                                        "SELECT TOP 3 PostID, PostTitle, PostDate, CategoryName, PostImage FROM dbo.Post " +
                                        "INNER JOIN dbo.Category ON dbo.Post.PostCategory = dbo.Category.CategoryID "+
                                        "ORDER BY PostDate";
                    conn.Open();
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        dt.Load(rdr);
                        result = true;
                    }
                }
            }
            catch (Exception)
            {
                result = false;
            }
            Tuple<DataTable, bool> tplHeaders = new Tuple<DataTable, bool>(dt, result);
            return tplHeaders;
        }

        //komentarze
        public static bool addComment(int postID, string owner, string body)
        {
            bool result = false;

            try
            {
                string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    string query = "INSERT INTO dbo.Comment (CommentDate, CommentDeleted, CommentOwner, CommentBody, CommentPostID) values (@date, @deleted, @owner, @body, @postID)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@date", System.DateTime.Now);
                        cmd.Parameters.AddWithValue("@deleted", "false");
                        cmd.Parameters.AddWithValue("@owner", owner);
                        cmd.Parameters.AddWithValue("@body", body);
                        cmd.Parameters.AddWithValue("@postID", postID.ToString());
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        result = true;
                    }
                }
            }
            catch (Exception)
            {
                result = false;
            }

            return result;
        }

        public static Tuple<DataTable, bool> getComments(int PostID)
        {
            DataTable dt = new DataTable();
            bool result = false;
            try
            {
                string connString = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connString))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = conn;
                    cmd.CommandText =
                    cmd.CommandText =
                                        "SELECT CommentOwner, CommentBody FROM dbo.Comment " +
                                        "WHERE CommentDeleted = 0 AND CommentPostID = " + PostID.ToString() +
                                        "ORDER BY CommentDate DESC";
                    conn.Open();
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        dt.Load(rdr);
                        result = true;
                    }
                }
            }
            catch (Exception)
            {
                result = false;
            }
            Tuple<DataTable, bool> tplComments = new Tuple<DataTable, bool>(dt, result);
            return tplComments;
        }

        //edit post
        public static bool editPost(string postID, string title, string body, string img)
        {
            bool result = false;

            try
            {
                string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    string query = "UPDATE dbo.Post SET PostTitle = @title, PostBody = @body, PostImage = @img WHERE PostID = @postID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@postID", postID);
                        cmd.Parameters.AddWithValue("@title", title);
                        cmd.Parameters.AddWithValue("@body", body);
                        cmd.Parameters.AddWithValue("@img", img);
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        result = true;
                    }
                }
            }
            catch (Exception)
            {
                result = false;
            }

            return result;
        }

        //delete post
        public static bool deletePost(string PostID)
        {
            bool result = false;

            try
            {
                string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    string query = "UPDATE dbo.Post SET PostDeleted = 1 WHERE PostID = @postID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@postID", PostID);
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        result = true;
                    }
                }
            }
            catch (Exception)
            {
                result = false;
            }

            return result;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.Services;

namespace MakeUpArtist.Web
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        Dictionary<string, int> categDict = new Dictionary<string, int>();

        protected void Page_Load(object sender, EventArgs e)
        {
            categDict.Add("Inspiracje", 1);
            categDict.Add("Pielęgnacje", 2);
            categDict.Add("Metamorfozy", 3);
            categDict.Add("Edukacja", 4);
            categDict.Add("Recenzje", 5);

            List<string> lstPostID = new List<string>();
            List<string> lstTitles = new List<string>();
            List<string> lstBodies = new List<string>();
            List<string> lstDates = new List<string>();
            List<string> lstCategories = new List<string>();
            DataTable dt = getLastPosts();
            foreach (DataRow item in dt.Rows)
            {
                lstPostID.Add(item[0].ToString());
                lstTitles.Add(item[1].ToString());
                lstDates.Add(item[2].ToString());
                lstCategories.Add(item[3].ToString());
            }
            blogTitle.InnerText = lstCategories[0].ToString();
            string bodyToDisplay = "";
            for (int i = 0; i < lstTitles.Count; i++)
            {
                bodyToDisplay +=
                "<div class=\"col-xs-12 col-sm-6 col-md-4\">" +
                    "<div class=\"panel panel-blog-preview-single\">" +
                        "<div class=\"panel-body\">  " +
                            "<div class=\"row\">" +
                                "<div class=\"col-xs-10 col-xs-offset-1\" id=\"divImg1\" runat=\"server\">" +
                                    "<img class=\"img-responsive\" src=\"img/candice.jpg\" />  " +
                                "</div>" +
                            "</div>" +
                            "<div class=\"row\">" +
                                "<h4 id = \"h4Title1\" runat=\"server\"><a href=\"#\">" + lstTitles[i].ToString() + "</a></h4>" +
                                "<p style=\"display: none;\">" + lstPostID[i].ToString() + "</p>" +
                                "<hr />" +
                            "</div>" +
                            "<div class=\"row\">" +
                                "<a href=\"#\" onclick=\"\">" +
                                "<h4><span class=\"label label-success\" runat=\"server\">" + lstCategories[i].ToString() + "</span></h4>" +
                                "</a>" +
                             "</div>" +
                          "</div>" +
                      "</div>" +
                 "</div>";
            }
            blogContent.InnerHtml = bodyToDisplay;





            displayPost(1);
        }

        protected void aRecenzjeProd_ServerClick(object sender, EventArgs e)
        {

            string singleElement = @"<h2>Oto blog</h2>Treść bloga nie jest zbyt obszerna.";



            blogContent.InnerHtml = singleElement;

        }
        protected void aInspiracje_ServerClick(object sender, EventArgs e)
        {

            string singleElement = @"<h2>Oto blog</h2>Treść bloga nie jest zbyt obszerna.";



            blogContent.InnerHtml = singleElement;

        }
        protected void aPielegnacje_ServerClick(object sender, EventArgs e)
        {

            string singleElement = @"<h2>Oto blog</h2>Treść bloga nie jest zbyt obszerna.";



            blogContent.InnerHtml = singleElement;

        }
        protected void aMetamorfozy_ServerClick(object sender, EventArgs e)
        {

            string singleElement = @"<h2>Oto blog</h2>Treść bloga nie jest zbyt obszerna.";



            blogContent.InnerHtml = singleElement;

        }
        protected void aEdukacja_ServerClick(object sender, EventArgs e)
        {

            string singleElement = @"<h2>Oto blog</h2>Treść bloga nie jest zbyt obszerna.";



            blogContent.InnerHtml = singleElement;

        }



        public DataTable getLastPosts()
        {
            DataTable dt = new DataTable();

            string connString = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText =
                cmd.CommandText =
                                    "SELECT TOP 3 PostID, PostTitle, PostDate, CategoryName FROM dbo.Post " +
                                    "INNER JOIN dbo.Category ON dbo.Post.PostCategory = dbo.Category.CategoryID " +
                                    "WHERE PostDeleted = 0 " +
                                    "ORDER BY PostDate";
                conn.Open();
                using (SqlDataReader rdr = cmd.ExecuteReader())
                {
                    dt.Load(rdr);
                }
            }
            return dt;
        }

        public DataTable getPostsFromCategory(int category)
        {
            DataTable dt = new DataTable();

            string connString = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText =
                cmd.CommandText =
                                    "SELECT PostID, PostTitle, PostDate, CategoryName FROM dbo.Post " +
                                    "INNER JOIN dbo.Category ON dbo.Post.PostCategory = dbo.Category.CategoryID " +
                                    "WHERE PostDeleted = 0 AND PostCategory = " + category.ToString() +
                                    "ORDER BY PostDate";
                conn.Open();
                using (SqlDataReader rdr = cmd.ExecuteReader())
                {
                    dt.Load(rdr);
                }
            }
            return dt;
        }

        public int getCategory(string category)
        {
            int categoryID = 0;

            foreach (var item in categDict)
            {
                if (category == item.Key)
                {
                    categoryID = item.Value;
                }
            }

            return categoryID;

        }

        public void insertPostFromCategory(int category)
        {
            List<string> lstTitles = new List<string>();
            List<string> lstBodies = new List<string>();
            List<string> lstDates = new List<string>();
            List<string> lstCategories = new List<string>();
            DataTable dt = getPostsFromCategory(category);
            foreach (DataRow item in dt.Rows)
            {
                lstTitles.Add(item[0].ToString());
                lstDates.Add(item[1].ToString());
                lstCategories.Add(item[2].ToString());
            }
            blogTitle.InnerText = lstCategories[0].ToString();
            string bodyToDisplay = "";
            for (int i = 0; i < lstTitles.Count; i++)
            {
                bodyToDisplay +=
                "<div class=\"col-xs-12 col-sm-6 col-md-4\">" +
                    "<div class=\"panel panel-blog-preview-single\">" +
                        "<div class=\"panel-body\">  " +
                            "<div class=\"row\">" +
                                "<div class=\"col-xs-10 col-xs-offset-1\" id=\"divImg1\" runat=\"server\">" +
                                    "<img class=\"img-responsive\" src=\"img/candice.jpg\" />  " +
                                "</div>" +
                            "</div>" +
                            "<div class=\"row\">" +
                                "<h4 id = \"h4Title1\" runat=\"server\"><a href=\"#\">" + lstTitles[i].ToString() + "</a></h4>" +
                                "<hr />" +
                            "</div>" +
                            "<div class=\"row\">" +
                                "<a href=\"#\" runat=\"server\" onServerClick=\"\">" +
                                "<h4><span class=\"label label-success\" id=\"spanCateg1\" runat=\"server\">" + lstCategories[i].ToString() + "</span></h4>" +
                                "</a>" +
                             "</div>" +
                          "</div>" +
                      "</div>" +
                 "</div>";
            }
            blogContent.InnerHtml = bodyToDisplay;
        }

        protected void lbInspiracje_Click(object sender, EventArgs e)
        {
            insertPostFromCategory(1);
        }
        protected void lbPelegnacja_Click(object sender, EventArgs e)
        {
            insertPostFromCategory(2);
        }

        protected void lbMetamorfozy_Click(object sender, EventArgs e)
        {
            insertPostFromCategory(3);
        }

        protected void lbEdukacja_Click(object sender, EventArgs e)
        {
            insertPostFromCategory(4);
        }

        protected void lbRecenzje_Click(object sender, EventArgs e)
        {
            insertPostFromCategory(5);
        }

        public string getMethodForCategory(int category)
        {
            string method;

            switch (category)
            {
                case 1:
                    method = "lbInspiracje_Click";
                    break;
                case 2:
                    method = "lbPelegnacja_Click";
                    break;
                case 3:
                    method = "lbMetamorfozy_Click";
                    break;
                case 4:
                    method = "lbEdukacja_Click";
                    break;
                case 5:
                    method = "lbRecenzje_Click";
                    break;
                default:
                    method = "";
                    break;
            }

            return method;
        }

        public DataTable getPosts(int postID)
        {
            DataTable dt = new DataTable();

            string connString = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText =
                cmd.CommandText =
                                    "SELECT PostID, PostTitle, PostDate, CategoryName, PostBody FROM dbo.Post " +
                                    "INNER JOIN dbo.Category ON dbo.Post.PostCategory = dbo.Category.CategoryID " +
                                    "WHERE PostDeleted = 0 AND PostID = " + postID.ToString();
                conn.Open();
                using (SqlDataReader rdr = cmd.ExecuteReader())
                {
                    dt.Load(rdr);
                }
            }
            return dt;
        }

        public void displayPost(int postID)
        {
            blogContent.Visible = false;
            blogPost.Visible = true;
            postContent.Visible = true;
            //pobieranie danych postu
            string postTitle = "";
            string postDate = "";
            string postCateg = "";
            string postBody = "";

            DataTable dt = getPosts(postID);

            postTitle = dt.Rows[0][1].ToString();
            postDate = dt.Rows[0][2].ToString();
            postCateg = dt.Rows[0][3].ToString();
            postBody = dt.Rows[0][4].ToString();

            //wyswietlanie posta
            blogTitle.InnerHtml = postTitle;
            postContent.InnerHtml = postBody;
        
        }
    }
}
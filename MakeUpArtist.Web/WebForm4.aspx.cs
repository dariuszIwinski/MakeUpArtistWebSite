using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace MakeUpArtist.Web
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> lstTitles = new List<string>();
            List<string> lstBodies = new List<string>();
            List<string> lstDates = new List<string>();
            List<string> lstCategories = new List<string>();
            DataTable dt = getLastPosts();
            foreach (DataRow item in dt.Rows)
            {
                lstTitles.Add(item[1].ToString());
                lstBodies.Add(item[5].ToString());
                lstDates.Add(item[2].ToString());
                lstCategories.Add(item[6].ToString());
            }
            for (int i = 0; i < lstTitles.Count; i++)
            {
                //blogTitle.InnerHtml += lstTitles[i].ToString();
               

                blogContent.InnerHtml += "<div class=\"col-md-4  blogPostOnWall\"><div class=\"panel\"><div class=\"row\"><img src=\"img/candice.jpg\" style=\"max-width: 250px;\" /></div><div class=\"row h4 titlePost\">" + lstTitles[i].ToString() + "<hr class=\"col-md-6 col-md-offset-3\"/></div><div class=\"row\"><span class=\"label label-success\">"+lstCategories[i].ToString()+"</span></div></div></div>";



                //    //lstBodies[i].ToString();
            }
           

            


        }

        protected void btnPielegnacje_Click(object sender, EventArgs e)
        {

        }

        protected void btnRecenzjeProd_Click(object sender, EventArgs e)
        {
            
                string singleElement = @"<h2>Oto blog</h2>Treść bloga nie jest zbyt obszerna.";



                blogContent.InnerHtml = singleElement;

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
            //MakeUpDataClassesDataContext datContext = new MakeUpDataClassesDataContext();
            DataTable dt = new DataTable();
            //datContext.Post

            string connString = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText =
                cmd.CommandText = "SELECT TOP(3) * FROM dbo.Post";
                conn.Open();
                using (SqlDataReader rdr = cmd.ExecuteReader())
                {
                    dt.Load(rdr);
                }
            }
            return dt;
        }

    }
}
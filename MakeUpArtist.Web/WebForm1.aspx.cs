using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MakeUpArtist.Web
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtBlogContent.ForeColor = System.Drawing.Color.Black;
            txtTitle.ForeColor = System.Drawing.Color.Black;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string message = HttpUtility.HtmlDecode(txtBlogContent.Text);
            string title = HttpUtility.HtmlDecode(txtTitle.Text);

            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "insert into [dbo].[Post] (PostTitle, PostDate, PostDeleted, PostOwner, PostBody) values (@title, @date, @deleted, @owner, @body)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@title", title);
                    cmd.Parameters.AddWithValue("@date", System.DateTime.Now);
                    cmd.Parameters.AddWithValue("@deleted", "false");
                    cmd.Parameters.AddWithValue("@owner", "Admin");
                    cmd.Parameters.AddWithValue("@body", message);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            txtTitle.Text = "";
            txtBlogContent.Text = "";

        }
    }
}
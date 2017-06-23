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
    public partial class writer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtBlogContent.ForeColor = System.Drawing.Color.Black;
            txtTitle.ForeColor = System.Drawing.Color.Black;
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string msg = txtBlogContent.Text;
            string message = HttpUtility.HtmlDecode(txtBlogContent.Text);
            string title = HttpUtility.HtmlDecode(txtTitle.Text);
            int category = Convert.ToInt32(ddlCategory.SelectedValue);

            string connStr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "insert into [dbo].[Post] (PostTitle, PostDate, PostDeleted, PostOwner, PostBody, PostCategory) values (@title, @date, @deleted, @owner, @body, @category)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@title", title);
                    cmd.Parameters.AddWithValue("@date", System.DateTime.Now);
                    cmd.Parameters.AddWithValue("@deleted", "false");
                    cmd.Parameters.AddWithValue("@owner", "Admin");
                    cmd.Parameters.AddWithValue("@body", message);
                    cmd.Parameters.AddWithValue("@category", category);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            txtTitle.Text = "";
            txtBlogContent.Text = "";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MakeUpArtist.Web
{
    public partial class writer1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtBlogContent.ForeColor = System.Drawing.Color.Black;
            txtTitle.ForeColor = System.Drawing.Color.Black;

            if (IsPostBack)
            {
                if (txtBlogContent.Text != null && !string.IsNullOrWhiteSpace(txtBlogContent.Text))
                {
                    txtBlogContent.Text = HttpUtility.HtmlDecode(txtBlogContent.Text);
                }
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string msg = txtBlogContent.Text;
            string message = HttpUtility.HtmlDecode(txtBlogContent.Text);
            string title = HttpUtility.HtmlDecode(txtTitle.Text);
            int category = Convert.ToInt32(ddlCategory.SelectedValue);

            Blog.addPost(title, message, category);

            txtTitle.Text = "";
            txtBlogContent.Text = "";
        }
    }
}
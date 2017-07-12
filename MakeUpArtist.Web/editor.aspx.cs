using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MakeUpArtist.Web
{
    public partial class editor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = Blog.getPosts().Item1;

                ddlPostToEdit.DataSource = dt;
                ddlPostToEdit.DataTextField = "PostTitle";
                ddlPostToEdit.DataValueField = "PostID";
                ddlPostToEdit.DataBind();
                ddlPostToEdit.ForeColor = System.Drawing.Color.Black;

                ddlPostToEdit.Items.Insert(0, new ListItem("Wybierz post", ""));
            }


        }

        protected void ddlPostToEdit_SelectedIndexChanged(object sender, EventArgs e)
        {
            divDecide.Visible = true;
            imgEdit.Visible = false;
            titleEdit.Visible = false;
            postEdit.Visible = false;
            saveChanges.Visible = false;
            divDeleted.Visible = false;
            divEdited.Visible = false;

            DataTable dt = Blog.getPosts().Item1;
            DropDownList list = (DropDownList)sender;
            int postID = Convert.ToInt32(list.SelectedValue);

            var result = (from selectedRow in dt.AsEnumerable()
                          where selectedRow.Field<int>("PostID") == postID
                          select selectedRow).FirstOrDefault();

            DataRow row = (DataRow)result;
            txtTitleEdit.Text = row[1].ToString();
            txtImg.Text = row[4].ToString();
            txtPostEdit.Text = row[5].ToString();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            divDecide.Visible = false;
            divDeleted.Visible = true;
            string postID = ddlPostToEdit.SelectedValue.ToString();
            Blog.deletePost(postID);
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            divDecide.Visible = false;

            imgEdit.Visible = true;
            titleEdit.Visible = true;
            postEdit.Visible = true;
            saveChanges.Visible = true;
        }

        protected void btnSaveChanges_Click(object sender, EventArgs e)
        {
            string postID = ddlPostToEdit.SelectedValue.ToString();
            string postTitle = HttpUtility.HtmlDecode(txtTitleEdit.Text.Trim());
            string postBody = HttpUtility.HtmlDecode(txtPostEdit.Text);
            string postImg = txtImg.Text.Trim();

            Blog.editPost(postID, postTitle, postBody, postImg);

            imgEdit.Visible = false;
            titleEdit.Visible = false;
            postEdit.Visible = false;
            saveChanges.Visible = false;
            divDeleted.Visible = false;
            divEdited.Visible = true;
            ddlPostToEdit.SelectedIndex = 0;
        }
    }
}
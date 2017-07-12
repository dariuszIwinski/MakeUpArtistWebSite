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

        public int postIDGlobal
        {
            get { return ViewState["postIDGlobal"] != null ? (int)ViewState["postIDGlobal"] : 0; }
            set { ViewState["postIDGlobal"] = value; }
        }


        Dictionary<string, int> categDict = new Dictionary<string, int>();
        List<string> lstPostID;
        List<string> lstCategories;

        protected void Page_Load(object sender, EventArgs e)
        {
            comments.Visible = false;

            categDict.Add("Inspiracje", 1);
            categDict.Add("Pielęgnacje", 2);
            categDict.Add("Metamorfozy", 3);
            categDict.Add("Edukacja", 4);
            categDict.Add("Recenzje", 5);

            //pobranie wszystkich postow
            Tuple<List<string>, List<string>, List<string>, List<string>> PostBox = InitializeControls();
            lstPostID = PostBox.Item1;
            lstCategories = PostBox.Item3;
            //wyswietlanie w news tylko 3 najnowszych
            if (!IsPostBack)
            {
                foreach (Panel panel in blogContent.Controls)
                {
                    foreach (string item in lstPostID.Take(3))
                    {
                        if (panel.ID == ("panelPosition" + item))
                        {
                            panel.CssClass = "panelPosition col-xs-12 col-sm-6 col-md-4";
                        }

                    }
                }
            }
        }

        public Tuple<List<string>, List<string>, List<string>, List<string>> InitializeControls()
        {
            List<string> lstPostID = new List<string>();
            List<string> lstTitles = new List<string>();
            List<string> lstBodies = new List<string>();
            List<string> lstDates = new List<string>();
            List<string> lstCategories = new List<string>();
            List<string> lstImages = new List<string>();

            DataTable dt = Blog.getPosts().Item1;
            foreach (DataRow item in dt.Rows)
            {
                lstPostID.Add(item[0].ToString());
                lstTitles.Add(item[1].ToString());
                lstDates.Add(item[2].ToString());
                lstCategories.Add(item[3].ToString());
                lstImages.Add(item[4].ToString());
                lstBodies.Add(item[5].ToString());
            }

            Tuple<List<string>, List<string>, List<string>, List<string>> PostBox = new Tuple<List<string>, List<string>, List<string>, List<string>>(lstPostID, lstDates, lstCategories, lstBodies);

            for (int i = 0; i < lstTitles.Count; i++)
            {
                Panel panelPosition = new Panel();
                panelPosition.CssClass = "panelPosition col-xs-12 col-sm-6 col-md-4 hidden";
                panelPosition.ID = "panelPosition" + lstPostID[i];

                Panel panelPanel = new Panel();
                panelPanel.CssClass = "panel panel-post";
                panelPanel.ID = "panelPanel" + lstPostID[i];

                Panel panelBody = new Panel();
                panelBody.CssClass = "panel-body panel-postHeader row col-xs-12";
                panelBody.ID = "panelBody" + lstPostID[i];

                Image img = new Image();
                img.ID = "img" + lstPostID[i];
                img.CssClass = "col-xs-12 img-responsive";

                if (String.IsNullOrEmpty(lstImages[i].ToString()))
                {
                    img.ImageUrl = @"img/pedzel.png";
                }
                else
                {
                    img.ImageUrl = lstImages[i].ToString();
                }

                panelBody.Controls.Add(img);

                LinkButton lbtnTitle = new LinkButton();
                lbtnTitle.Text = lstTitles[i].ToString();
                lbtnTitle.CssClass = "btn-title";
                lbtnTitle.Command += new CommandEventHandler(DynamicCommandPost);
                lbtnTitle.CommandArgument = lstPostID[i].ToString();
                lbtnTitle.ID = "lbtnTitle" + lstPostID[i];

                panelBody.Controls.Add(lbtnTitle);

                Literal ltrl = new Literal();
                ltrl.Text = "<hr />";
                ltrl.ID = "ltrl" + lstPostID[i];
                panelBody.Controls.Add(ltrl);

                LinkButton lbtnCategory = new LinkButton();
                lbtnCategory.Text = lstCategories[i].ToString();
                lbtnCategory.CssClass = "label label-success";
                lbtnCategory.Command += new CommandEventHandler(DynamicCommandCategory);
                lbtnCategory.CommandArgument = getCategory(lstCategories[i].ToString()).ToString();
                lbtnCategory.ID = "lbtnCategory" + lstPostID[i];

                panelBody.Controls.Add(lbtnCategory);

                panelPanel.Controls.Add(panelBody);
                panelPosition.Controls.Add(panelPanel);
                blogContent.Controls.Add(panelPosition);
            }

            return PostBox;
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

        public void displayPost(int postID)
        {
            postIDGlobal = postID;
            blogContent.Visible = false;
            blogPost.Visible = true;
            postContent.Visible = true;

            //pobieranie danych postu
            string postTitle = "";
            string postDate = "";
            string postCateg = "";
            string postBody = "";

            DataTable dt = Blog.getPost(postID);

            postTitle = dt.Rows[0][1].ToString();
            postDate = dt.Rows[0][2].ToString();
            postCateg = dt.Rows[0][3].ToString();
            postBody = dt.Rows[0][4].ToString();

            //wyswietlanie posta
            blogTitle.InnerHtml = postTitle;
            postContent.InnerHtml = postBody;

            diplayComments(postID);
        }
        public void diplayComments(int postID)
        {
            comments.Controls.Clear();
            comments.Visible = true;

            List<string> lstCommentOwner = new List<string>();
            List<string> lstCommentBody = new List<string>();

            DataTable dt = Blog.getComments(postID).Item1;
            foreach (DataRow item in dt.Rows)
            {
                lstCommentOwner.Add(item[0].ToString());
                lstCommentBody.Add(item[1].ToString());
            }

            Panel panelCommentsBox = new Panel();
            Panel panelAddComment = new Panel();
            Panel panelShowComments = new Panel();
            panelCommentsBox.Controls.Clear();
            panelAddComment.Controls.Clear();
            panelShowComments.Controls.Clear();

            for (int i = 0; i < lstCommentBody.Count; i++)
            {
                Panel panelComment = new Panel();
                panelComment.Controls.Clear();
                if (i == 0)
                {
                    panelCommentsBox.Controls.Add(panelAddComment);
                }

                Label lblCommentOwner = new Label();
                lblCommentOwner.Text = lstCommentOwner[i].ToString();
                lblCommentOwner.CssClass = "row col-xs-12 text-left comment-owner";
                lblCommentOwner.Visible = true;

                Label lblCommentBody = new Label();
                lblCommentBody.Text = lstCommentBody[i].ToString();
                lblCommentBody.CssClass = "row col-xs-12 panel-body text-justify comment-body";
                lblCommentBody.Visible = true;

                panelComment.Controls.Add(lblCommentOwner);
                panelComment.Controls.Add(lblCommentBody);
                panelComment.CssClass = "row col-xs-12 comment";
                panelComment.Visible = true;

                panelShowComments.Controls.Add(panelComment);
                panelShowComments.Visible = true;

                if (i == (lstCommentBody.Count - 1))
                {
                    panelCommentsBox.Controls.Add(panelShowComments);
                    panelCommentsBox.CssClass = "col-xs-12 col-md-8 col-md-offset-2";
                    comments.Controls.Add(panelCommentsBox);

                }

            }
        }

        public void addComment(int postID)
        {

            string body = txtAddComment.Text;
            string owner = txtAddCommentOwner.Text;

            Blog.addComment(postID, owner, body);
            Response.Redirect(Request.RawUrl);
        }

        public void DynamicCommandPost(Object sender, CommandEventArgs e)
        {
            displayPost((Convert.ToInt32(e.CommandArgument)));
        }
        void DynamicCommandCategory(Object sender, CommandEventArgs e)
        {
            blogContent.Visible = true;
            blogPost.Visible = false;
            postContent.Visible = false;

            string category = "";
            foreach (var item in categDict)
            {
                if (e.CommandArgument.ToString() == item.Value.ToString())
                {
                    blogTitle.InnerHtml = item.Key;
                    category = item.Key;
                }
            }

            foreach (Panel panel in blogContent.Controls)
            {
                panel.CssClass = "panelPosition col-xs-12 col-sm-6 col-md-4 hidden";
            }

            foreach (Panel panel in blogContent.Controls)
            {
                foreach (var categ in lstCategories.Select((value, index) => new { value, index }))
                {
                    if (categ.value.ToString() == category)
                    {
                        string postID = lstPostID.ElementAt(categ.index);

                        if (panel.ID == ("panelPosition" + postID))
                        {
                            panel.CssClass = "panelPosition col-xs-12 col-sm-6 col-md-4";
                        }
                    }

                }
            }
        }

        protected void btnAddComment_Click(object sender, EventArgs e)
        {
            addComment(postIDGlobal);
        }

        protected void lbInspiracje_Click(object sender, EventArgs e)
        {
            blogContent.Visible = true;
            blogPost.Visible = false;
            postContent.Visible = false;

            foreach (Panel panel in blogContent.Controls)
            {
                panel.CssClass = "panelPosition col-xs-12 col-sm-6 col-md-4 hidden";
            }
            blogTitle.InnerHtml = "Inspiracje";

            foreach (Panel panel in blogContent.Controls)
            {
                foreach (var item in lstCategories.Select((value, index) => new { value, index }))
                {
                    if (item.value.ToString() == "Inspiracje")
                    {
                        string postID = lstPostID.ElementAt(item.index);

                        if (panel.ID == ("panelPosition" + postID))
                        {
                            panel.CssClass = "panelPosition col-xs-12 col-sm-6 col-md-4";
                        }
                    }

                }
            }
        }

        protected void lbPelegnacja_Click(object sender, EventArgs e)
        {
            blogContent.Visible = true;
            blogPost.Visible = false;
            postContent.Visible = false;

            foreach (Panel panel in blogContent.Controls)
            {
                panel.CssClass = "panelPosition col-xs-12 col-sm-6 col-md-4 hidden";
            }
            blogTitle.InnerHtml = "Pielęgnacje";

            foreach (Panel panel in blogContent.Controls)
            {
                foreach (var item in lstCategories.Select((value, index) => new { value, index }))
                {
                    if (item.value.ToString() == "Pielęgnacje")
                    {
                        string postID = lstPostID.ElementAt(item.index);

                        if (panel.ID == ("panelPosition" + postID))
                        {
                            panel.CssClass = "panelPosition col-xs-12 col-sm-6 col-md-4";
                        }
                    }

                }
            }
        }

        protected void lbMetamorfozy_Click(object sender, EventArgs e)
        {
            blogContent.Visible = true;
            blogPost.Visible = false;
            postContent.Visible = false;

            foreach (Panel panel in blogContent.Controls)
            {
                panel.CssClass = "panelPosition col-xs-12 col-sm-6 col-md-4 hidden";
            }
            blogTitle.InnerHtml = "Metamorfozy";

            foreach (Panel panel in blogContent.Controls)
            {
                foreach (var item in lstCategories.Select((value, index) => new { value, index }))
                {
                    if (item.value.ToString() == "Metamorfozy")
                    {
                        string postID = lstPostID.ElementAt(item.index);

                        if (panel.ID == ("panelPosition" + postID))
                        {
                            panel.CssClass = "panelPosition col-xs-12 col-sm-6 col-md-4";
                        }
                    }

                }
            }
        }

        protected void lbEdukacja_Click(object sender, EventArgs e)
        {
            blogContent.Visible = true;
            blogPost.Visible = false;
            postContent.Visible = false;

            foreach (Panel panel in blogContent.Controls)
            {
                panel.CssClass = "panelPosition col-xs-12 col-sm-6 col-md-4 hidden";
            }
            blogTitle.InnerHtml = "Edukacja";

            foreach (Panel panel in blogContent.Controls)
            {
                foreach (var item in lstCategories.Select((value, index) => new { value, index }))
                {
                    if (item.value.ToString() == "Edukacja")
                    {
                        string postID = lstPostID.ElementAt(item.index);

                        if (panel.ID == ("panelPosition" + postID))
                        {
                            panel.CssClass = "panelPosition col-xs-12 col-sm-6 col-md-4";
                        }
                    }

                }
            }
        }

        protected void lbRecenzje_Click(object sender, EventArgs e)
        {
            blogContent.Visible = true;
            blogPost.Visible = false;
            postContent.Visible = false;

            foreach (Panel panel in blogContent.Controls)
            {
                panel.CssClass = "panelPosition col-xs-12 col-sm-6 col-md-4 hidden";
            }
            blogTitle.InnerHtml = "Recenzje";

            foreach (Panel panel in blogContent.Controls)
            {
                foreach (var item in lstCategories.Select((value, index) => new { value, index }))
                {
                    if (item.value.ToString() == "Recenzje")
                    {
                        string postID = lstPostID.ElementAt(item.index);

                        if (panel.ID == ("panelPosition" + postID))
                        {
                            panel.CssClass = "panelPosition col-xs-12 col-sm-6 col-md-4";
                        }
                    }

                }
            }
        }
    }
}
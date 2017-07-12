using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace MakeUpArtist.Web
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string email = txtContactEmail.Value.Trim();
            string name = txtContactName.Value.Trim();

            var toAddress = new MailAddress(email, name);
            var fromAddress = new MailAddress("infomakebynancy@gmail.com", "MakeByNancy");
            string fromPassword = "theanimals1234";
            string subject = "Msg from " + name + " on MakeByNancySite";
            string body = name + " ( " + email + " )  pisze: " + txtContactMessage.Value.Trim();
            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
                Timeout = 20000
            };
            using (var message = new MailMessage(fromAddress, fromAddress)
            {
                Subject = subject,
                Body = body,
                IsBodyHtml = true
            })
            {
                try
                {
                    smtp.Send(message);
                }
                catch (Exception)
                {

                }
            }
        }
    }
}
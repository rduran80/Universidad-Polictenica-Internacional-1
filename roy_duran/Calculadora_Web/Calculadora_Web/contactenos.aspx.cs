using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculadora_Web
{
    public partial class contactenos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        [Obsolete]
        protected void Button1_Click(object sender, EventArgs e)
        {
            // codigo para enviar correo desde cliente externo
            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.To.Add(txtPara.Text);
            mail.From = new MailAddress("roy.duran.alpizar@gamil.com", "Email head", System.Text.Encoding.UTF8);
            mail.Subject = "correo electronico de peuba desde mi sitio web";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = txtMensaje.Text;
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
            SmtpClient client = new SmtpClient;
            client.Credentials = new System.Net.NetworkCredential("roy.duran.alpizar@gmail.com", "I7help20");
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            try
            {
                client.Send(mail);
                Page.RegisterStartupScript("UserMsg", "<script>alert('Enviado con exito..');if (alert){window.location='inicio.aspx';}<script>");
            }
            catch (Exception ex)
            {

                Exception ex2 = ex;
                string errorMessage = string.Empty;
                while (ex2 != null)
                {
                    errorMessage += ex2.ToString();
                    ex2 = ex2.InnerException;

                }
                Page.RegisterStartupScript("UserMsg", "<script>alert('Mensaje no fue enviado..');if(alert){window.location='inicio.aspx';}<script>");
            }
        }

    }
}
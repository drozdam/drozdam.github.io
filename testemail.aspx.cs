using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class testemail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        SmtpClient client = new SmtpClient();
        client.Port = 25;
        client.Host = "mail.barknfly.ca";
        client.Timeout = 10000;
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.UseDefaultCredentials = false;
        client.Credentials = new System.Net.NetworkCredential("registration@barknfly.ca", "cowabunga!1242");

        MailMessage mm = new MailMessage("registration@barknfly.ca", "matthew.drozda@gmail.com", "test", "test");

        mm.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
        client.Send(mm);
    }
}
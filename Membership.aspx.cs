using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Membership : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLnkAgree_Click(object sender, EventArgs e)
    {
		Session["memberAccept"] = "1";
        Response.Redirect("MembershipForm.aspx");
    }
}
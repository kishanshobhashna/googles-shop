using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class client : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            lnklogin.Text = "Logout";
            lnkcart.Visible = true;
        }
    }
    protected void lnklogin_Click(object sender, EventArgs e)
    {
        if (lnklogin.Text == "Logout")
        {
            Session.Abandon();
            lnklogin.Text = "Login";
            lnkcart.Visible = false;
            Response.Redirect("Login.aspx");
        }
        if (lnklogin.Text == "Login")
        {
            Response.Redirect("Login.aspx");
        }
    }
}

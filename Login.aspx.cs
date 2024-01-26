using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com, com1;
    SqlDataReader red, red1;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
        com = con.CreateCommand();
    }
    protected void lnklogin_Click(object sender, EventArgs e)
    {
        com.CommandText = "Select * from Register where email=@unm and password=@psw";
        com.Parameters.AddWithValue("@unm", txtunm.Text);
        com.Parameters.AddWithValue("@psw", txtpwd.Text);
        con.Open();
        red = com.ExecuteReader();
        if (red.HasRows)
        {
            Session["username"] = txtunm.Text.ToString();
            if (txtunm.Text == "admin")
            {
                //FormsAuthentication.RedirectFromLoginPage(txtunm.Text.ToString(),true);
                Response.Redirect("~/Admin/Home.aspx");
            }
            else
            {
                //FormsAuthentication.RedirectFromLoginPage(txtunm.Text.ToString(),true);
                Response.Redirect("Home.aspx");
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void lnkregister_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
   
}

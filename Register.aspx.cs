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

public partial class Register : System.Web.UI.Page
{
    SqlConnection con = new
    SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect(Page.Request.Url.ToString(), true);
    }
    protected void btnsubmit_click(object sender, EventArgs e)
    {
        con.Open();
        String query = "INSERT INTO register(fnm,lnm,email,password,gender,dob,mobile,address) values(@fnm,@lnm,@email,@password,@gender,@dob,@mobile,@address)";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@fnm", txtFirstName.Text.ToString());
        cmd.Parameters.AddWithValue("@lnm", txtLastName.Text.ToString());
        cmd.Parameters.AddWithValue("@email", txtEmail.Text.ToString());
        cmd.Parameters.AddWithValue("@password", txtPassword.Text.ToString());
        cmd.Parameters.AddWithValue("@gender", rdoGender.SelectedItem.Text.ToString());
        cmd.Parameters.AddWithValue("@dob", DateTime.Now.ToString());
        cmd.Parameters.AddWithValue("@mobile", txtMobile.Text.ToString());
        cmd.Parameters.AddWithValue("@address", txtAddress.Text.ToString());
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Login.aspx");

    }
}
















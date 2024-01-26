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

public partial class Contact_us : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        con.Open();//opening connection
        string query = "INSERT INTO Contact_us(name,phno,email,subject,message) values(@name,@phno,@email,@subject,@message)";
        SqlCommand cmd = new SqlCommand(query, con);
        //adding parameters with value
        cmd.Parameters.AddWithValue("@name", txtName.Text.ToString());
        cmd.Parameters.AddWithValue("@phno", txtPhno.Text.ToString());
        cmd.Parameters.AddWithValue("@email", txtEmail.Text.ToString());
        cmd.Parameters.AddWithValue("@subject", ddlSubject.SelectedItem.Text.ToString());
        cmd.Parameters.AddWithValue("@message", txtMessage.Text.ToString());
        cmd.ExecuteNonQuery();
        con.Close(); //closing connection
        Response.Redirect("Contact us.aspx");
    }
}


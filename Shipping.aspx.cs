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

public partial class Shipping : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con.Open();
        String query = "INSERT INTO Shipping(name,address,city,state,country,phno,email) values(@name,@address,@city,@state,@country,@phno,@email)";
        SqlCommand cmd = new SqlCommand(query, con);
        //adding Parameters with Value

        cmd.Parameters.AddWithValue("@name", txtName.Text.ToString());
        cmd.Parameters.AddWithValue("@address", txtAddress.Text.ToString());
        cmd.Parameters.AddWithValue("@city", txtCity.Text.ToString());
        cmd.Parameters.AddWithValue("@state", txtState.Text.ToString());
        cmd.Parameters.AddWithValue("@country", txtCountry.Text.ToString());
        cmd.Parameters.AddWithValue("@phno", txtMoblie.Text.ToString());
        cmd.Parameters.AddWithValue("@email", txtEmail.Text.ToString());
        cmd.ExecuteNonQuery();
        con.Close();//closing connection
        Response.Redirect("Bill.aspx");
    }
}

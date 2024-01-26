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

public partial class Bill : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    SqlDataReader red;
    int d, m, y;
    string date;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        d = DateTime.Now.Day;
        m = DateTime.Now.Month;
        y = DateTime.Now.Year;
        date = d.ToString() + "-" + m.ToString() + "-" + y.ToString();
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
        com = con.CreateCommand();
        string unm = Session["username"].ToString();
        com.CommandText = "Select * from Bill_master where bill_id=(select max(bill_id) from bill_master where unm=@unm)";
        com.Parameters.AddWithValue("@unm", unm);
        con.Open();
        red = com.ExecuteReader();
        red.Read();
        lblno.Text = red["bill_id"].ToString();
        lbldate.Text = red["bill_date"].ToString();
        lbltotal.Text = red["total"].ToString();
        red.Close();
        con.Close();

    }
    protected void lnkdone_Click(object sender, EventArgs e)
    {
        com.CommandText = "Delete from cart";
        con.Open();
        int r = com.ExecuteNonQuery();
        con.Close();
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
}

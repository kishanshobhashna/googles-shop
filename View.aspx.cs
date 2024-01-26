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

public partial class View : System.Web.UI.Page
{
    SqlConnection con, con1;
    SqlCommand com;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int pid = int.Parse(e.CommandArgument.ToString());
        con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
        da = new SqlDataAdapter("Select * From product Where pid=" + pid, con1);
        ds = new DataSet();
        da.Fill(ds, "dtcart");
        txtpnm.Text = ds.Tables["dtcart"].Rows[0]["pnm"].ToString();
        txtPrice.Text = ds.Tables["dtCart"].Rows[0]["price"].ToString();
        txtimg.Text = ds.Tables["dtcart"].Rows[0]["img"].ToString();
        con1.Close();
        int d = DateTime.Now.Day;
        int m = DateTime.Now.Month;
        int y = DateTime.Now.Year;
        string date = DateTime.Now.ToString();
        string email = Session["username"].ToString();
        com = con1.CreateCommand();
        com.CommandText = "insert into cart values(@pid,@pnm,@price,@img,@cart_date,@quantity,@unm)";
        com.Parameters.AddWithValue("@pid", @pid);
        com.Parameters.AddWithValue("@pnm", txtpnm.Text.ToString());
        com.Parameters.AddWithValue("@price", txtPrice.Text.ToString());
        com.Parameters.AddWithValue("@img", txtimg.Text.ToString());
        com.Parameters.AddWithValue("@cart_date", date);
        com.Parameters.AddWithValue("quantity", 1);
        com.Parameters.AddWithValue("@unm", email);
        con1.Open();
        int r = com.ExecuteNonQuery();
        con1.Close();
        Response.Redirect("Cart.aspx");
    }


    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

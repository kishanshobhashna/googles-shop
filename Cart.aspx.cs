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

public partial class Cart : System.Web.UI.Page
{
    SqlConnection con, con1;
    SqlCommand com;
    SqlDataReader red;
    SqlDataAdapter da;
    DataSet ds;
    int r, q = 0, price = 0, total = 0, mul = 1;
    string cartdate, unm;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
        com = con.CreateCommand();
        if (Session["username"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        unm = Session["username"].ToString();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            com.CommandText = "Delete from Cart where pid=" + id;
            con.Open();
            r = com.ExecuteNonQuery();
            GridView1.DataBind();
        }
        if (e.CommandName == "ed")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            com.CommandText = "select * from Cart where pid=@id";
            com.Parameters.AddWithValue("@id", id);
            con.Open();
            red = com.ExecuteReader();
            red.Read();
            txtqty.Text = red["qty"].ToString();
            Label2.Text = red["pid"].ToString();
            Label2.Visible = false;
            red.Close();
            con.Close();
            Panel1.Visible = true;
            GridView1.Enabled = false;
            lnkcheckout.Visible = false;
        }
    }
    protected void lnkcheckout_Click(object sender, EventArgs e)
    {
        con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
        da = new SqlDataAdapter("select * from cart", con1);
        ds = new DataSet();
        da.Fill(ds, "dtcart");
        cartdate = ds.Tables["dtcart"].Rows[0]["cart_date"].ToString();
        for (int i = 0; i < ds.Tables["dtcart"].Rows.Count; i++)
        {
            price = Convert.ToInt32(ds.Tables["dtcart"].Rows[i]["price"]);
            q = Convert.ToInt32(ds.Tables["dtcart"].Rows[i]["qty"]);
            mul = price * q;
            total = total + mul;
        }
        con1.Close();
        con.Open();
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
        com.CommandText = "Insert into Bill_master values(@cartid,@billdate,@total,@username)";
        com.Parameters.AddWithValue("@cartid", 1);
        com.Parameters.AddWithValue("@billdate", cartdate);
        com.Parameters.AddWithValue("@total", total);
        com.Parameters.AddWithValue("@username", unm);
        con.Open();
        r = com.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Shipping.aspx");
    }
    protected void lnkedit_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Label2.Text);
        com.CommandText = "update Cart set qty=@qun where pid=@id";
        com.Parameters.AddWithValue("@id", id);
        com.Parameters.AddWithValue("@qun", txtqty.Text.ToString());
        con.Open();
        r = com.ExecuteNonQuery();
        con.Close();
        Panel1.Visible = false;
        GridView1.DataBind();
        lnkcheckout.Visible = true;
        GridView1.Enabled = true;
    }
}

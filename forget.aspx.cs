using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class forget : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        connection conn = new connection("select username,pass,fname,lname,job,email from Register where username='" + TextBox1.Text + "' and fname='" + TextBox2.Text + "' and lname='" + TextBox3.Text + "' and job='" + DropDownList1.Text+ "' and email='" + TextBox5.Text + "'", false);
        if (conn.read.Read())
        {
            if (conn.read.HasRows)
            {
                email email1 = new email(conn.read["email"].ToString(), conn.read["username"].ToString(), conn.read["pass"].ToString());
                Response.Redirect("login.aspx");
            }
        }
        else
        {
            Label6.Text = "«ÿ·«⁄«  Ê«—œ ‘œÂ «⁄ »«— ‰œ«—œ";
        }
        conn.read.Close();
        conn.c1.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}

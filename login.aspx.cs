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

public partial class login1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Add("username", null);
        connection conn = new connection("select Id,username,pass,counter,job from Register where username='" + TextBox1.Text + "'and pass='" + TextBox2.Text + "'", false);       
        if (conn.read.Read())
        {
            if (conn.read.HasRows)
            {
                int i = Convert.ToInt16(conn.read["counter"]);
                i++;
                connection conn1 = new connection("update register set counter=" + i + " , flag=1 where username='" + TextBox1.Text + "'and pass='" + TextBox2.Text + "'", true);
                conn1.c1.Close();
                Session["username"]= TextBox1.Text;                
                switch (conn.read["job"].ToString())
                {
                    case "Manager":
                        Response.Redirect("register.aspx", true);
                        break;
                    case "Editor":
                        Response.Redirect("selectnews.aspx?Id=" + TextBox1.Text + "", true);
                        break;
                    case "journalist":
                        Response.Redirect("jornalcreadenews.aspx?Id=" + TextBox1.Text + "", true);
                        break;
                }
            }
        }
        else
        {
            Label1.Text = "Invalid Username or password . Please try again .";
        }
        conn.read.Close();
        conn.c1.Close();
    }
}

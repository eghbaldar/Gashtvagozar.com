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

public partial class register1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["username"] == null)
            Response.Redirect("login.aspx", true);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox4.Text.Equals(TextBox5.Text))
        {
            connection conn1 = new connection("select username,pass from Register where username='" + TextBox3.Text + "'or pass='" + TextBox4.Text + "'", false);
            if (conn1.read.Read())
            {
                if (conn1.read.HasRows)
                {
                    Label9.Text = "The username or password has been used before .";
                }
            }
            else
            {
                if (RequiredFieldValidator1.IsValid && RequiredFieldValidator2.IsValid && RequiredFieldValidator3.IsValid)
                {
                    if (RequiredFieldValidator4.IsValid && RequiredFieldValidator5.IsValid && RequiredFieldValidator6.IsValid)
                    {
                        if (RequiredFieldValidator7.IsValid && RequiredFieldValidator8.IsValid)
                        {
                            connection conn = new connection("insert into Register(Id,fname,lname,username,pass,job,email,counter,flag) values('" + TextBox8.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.Text + "','" + TextBox7.Text + "',0,0)", true);
                            conn.c1.Close();
                            Response.Redirect("login.aspx");
                        }
                    }
                }
            }
            conn1.read.Close();
            conn1.c1.Close();
        }
        else
        {
            Label9.Text = "Please enter the password again .";
        }
    }
}

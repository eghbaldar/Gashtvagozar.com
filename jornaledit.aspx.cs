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
using System.Data.SqlClient;

public partial class jornaledit : System.Web.UI.Page
{
    int idnews = 0;
    string login;
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["username"] == null)
            Response.Redirect("login.aspx", true);
        if (Convert.ToBoolean(HiddenField1.Value))
        {
            int start = Request.Params.Get("Idlog").IndexOf("=");
            idnews = Convert.ToInt16(Request.Params.Get("Idlog").Substring(start + 1));
            connection conn = new connection("SELECT News.Flag,News.title, News.header, News.body, NewsType.Iran, NewsType.World, NewsType.Cultural, NewsType.Socially, NewsType.Economic, News.newsImage, News.newsdate FROM News INNER JOIN NewsType ON News.Idnews = NewsType.Id where News.Idnews=" + idnews + " ", false);
            if (conn.read.Read())
            {
                if (conn.read.HasRows)
                {
                    CheckBox4.Checked = Convert.ToBoolean(conn.read["Iran"]);
                    CheckBox3.Checked = Convert.ToBoolean(conn.read["World"]);
                    CheckBox2.Checked = Convert.ToBoolean(conn.read["Cultural"]);
                    CheckBox1.Checked = Convert.ToBoolean(conn.read["Socially"]);
                    CheckBox5.Checked = Convert.ToBoolean(conn.read["Economic"]);
                    TextBox1.Text = conn.read["title"].ToString();
                    TextBox2.Text = conn.read["header"].ToString();
                    TextBox3.Text = conn.read["body"].ToString();
                    Dateshamsi Dateshamsi1 = new Dateshamsi();
                    Label6.Text =Dateshamsi1.date1(Convert.ToDateTime( conn.read["newsdate"]));
                    Table1.Rows[0].Cells[0].Text = "<img src=\"NewsImages/" + conn.read["newsImage"] + "\" width=\"111\" height=\"75\">";
                    if (Convert.ToBoolean(conn.read["flag"]))
                    {
                        FileUpload1.Enabled = false;
                        Button1.Enabled = false;
                        Button2.Enabled = false;
                    }
                }
            }
            conn.read.Close();
            conn.c1.Close();
            HiddenField1.Value = "false";
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int end = Request.Params.Get("Idlog").IndexOf(";");
        login = Request.Params.Get("Idlog").Substring(0, end);
        Response.Redirect("jornalcreadenews.aspx?Id=" + login + "");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RequiredFieldValidator1.IsValid && RequiredFieldValidator2.IsValid && RequiredFieldValidator3.IsValid)
        {
            string idnews1 = Request.Params.Get("Idlog");
            idnews = Convert.ToInt16(idnews1.Substring(idnews1.IndexOf("=") + 1));
            string request1 = Request.ServerVariables["APPL_PHYSICAL_PATH"];
            if (CheckBox1.Checked || CheckBox2.Checked || CheckBox3.Checked || CheckBox4.Checked || CheckBox5.Checked)
            {

                upload upload1 = new upload(FileUpload1, request1);
                string url = upload1.url;
                if (url.Length > 0)
                {
                    connection conn = new connection("update News set title='" + TextBox1.Text + "',header='" + TextBox2.Text + "',body='" + TextBox3.Text + "',newsImage='" + url + "' WHERE Idnews=" + idnews + " ", true);
                    conn.c1.Close();
                }
                else
                {
                    connection conn = new connection("update News set title='" + TextBox1.Text + "',header='" + TextBox2.Text + "',body='" + TextBox3.Text + "' WHERE Idnews=" + idnews + " ", true);
                    conn.c1.Close();
                }
                connection conn1 = new connection("update NewsType set NewsType.Iran=" + CheckBox4.Checked.GetHashCode() + ", NewsType.World=" + CheckBox3.Checked.GetHashCode() + ", NewsType.Cultural=" + CheckBox2.Checked.GetHashCode() + ", NewsType.Socially=" + CheckBox1.Checked.GetHashCode() + ", NewsType.Economic=" + CheckBox5.Checked.GetHashCode() + " FROM NewsType INNER JOIN News ON NewsType.Id = News.Idnews WHERE News.Idnews=" + idnews + " ", true);
                conn1.c1.Close();
                int end = Request.Params.Get("Idlog").IndexOf(";");
                login = Request.Params.Get("Idlog").Substring(0, end);
                Response.Redirect("jornalcreadenews.aspx?Id=" + login + "");
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string idnews1 = Request.Params.Get("Idlog");
        idnews = Convert.ToInt16(idnews1.Substring(idnews1.IndexOf("=") + 1));
        connection conn = new connection("DELETE FROM News WHERE Idnews=" + idnews + "", true);
        conn.c1.Close();
        int end = Request.Params.Get("Idlog").IndexOf(";");
        login = Request.Params.Get("Idlog").Substring(0, end);
        Response.Redirect("jornalcreadenews.aspx?Id=" + login + "");
    }
}

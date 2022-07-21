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
using System.Globalization;

public partial class jornaledit : System.Web.UI.Page
{
    int idnews = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["username"] == null)
            Response.Redirect("login.aspx", true);
        if (Convert.ToBoolean(HiddenField1.Value))
        {
            int start = Request.Params.Get("Id").IndexOf("=");
            idnews = Convert.ToInt16(Request.Params.Get("Id").Substring(start + 1));
            connection conn = new connection("SELECT News.Flag,News.title, News.header, News.body, NewsType.Iran, NewsType.World, NewsType.Cultural, NewsType.Socially, NewsType.Economic, News.newsImage, News.newsdate,News.newstime FROM News INNER JOIN NewsType ON News.Idnews = NewsType.Id where News.Idnews=" + idnews + " ", false);
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
                    TextBox4.Text = conn.read["newsImage"].ToString();
                    Label7.Text = conn.read["newstime"].ToString();
                    Dateshamsi Dateshamsi1 = new Dateshamsi();
                    Label6.Text =Dateshamsi1.date1(Convert.ToDateTime( conn.read["newsdate"]));
                    Table1.Rows[0].Cells[0].Text = "<img src=\"NewsImages/" + conn.read["newsImage"] + "\" width=\"111\" height=\"75\">";
                }
            }
            conn.read.Close();
            conn.c1.Close();
            HiddenField1.Value = "false";
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("selectnews.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RequiredFieldValidator1.IsValid && RequiredFieldValidator2.IsValid && RequiredFieldValidator3.IsValid)
        {
            string idnews1 = Request.Params.Get("Id");
            idnews = Convert.ToInt16(idnews1.Substring(idnews1.IndexOf("=") + 1));

            DateTime date1 = new DateTime();
            PersianCalendar d = new PersianCalendar();
            int len = Label6.Text.Length;
            string year = Label6.Text.Substring(0, 4);
            string month = Label6.Text.Substring(5, 2);
            string day = Label6.Text.Substring(8);
            date1 = d.ToDateTime(Convert.ToInt16(year), Convert.ToInt16(month), Convert.ToInt16(day), 12, 59, 59, 59);
            try
            {
                connection conn = new connection("update news set flag=1 where Idnews='" + idnews + "'", true);
                conn.c1.Close();
                conn = new connection("update news set title='" + TextBox1.Text + "',header='" + TextBox2.Text + "', body='" + TextBox3.Text + "',newsImage='" + TextBox4.Text + "', newsdate= '" + date1.ToShortDateString() + "',newstime='" + Label7.Text + "' where Idnews='" + idnews + "'", true);
                conn.c1.Close();
                conn = new connection("update NewsType set Iran=" + CheckBox4.Checked.GetHashCode() + ",World=" + CheckBox3.Checked.GetHashCode() + ",Cultural=" + CheckBox2.Checked.GetHashCode() + ",Socially=" + CheckBox1.Checked.GetHashCode() + ",Economic=" + CheckBox5.Checked.GetHashCode() + " where Id='" + idnews + "'", true);
                conn.c1.Close();
                Response.Redirect("selectnews.aspx");
            }
            catch (Exception ex)
            {

            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string idnews1 = Request.Params.Get("Id");
        idnews = Convert.ToInt16(idnews1.Substring(idnews1.IndexOf("=") + 1));
        connection conn = new connection("DELETE FROM News WHERE Idnews=" + idnews + "", true);
        conn.c1.Close();
        Response.Redirect("selectnews.aspx");
    }
}

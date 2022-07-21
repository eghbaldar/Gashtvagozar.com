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

public partial class newspage : System.Web.UI.Page
{
    int idnews = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        int start = Request.Params.Get("Id").IndexOf("=");
        idnews = Convert.ToInt16(Request.Params.Get("Id").Substring(start + 1));
        //connection conn = new connection("SELECT Shownews.title, Shownews.header, Shownews.body,Shownews.newsImage, Shownews.newsdate , Shownews.newstime FROM Shownews where Shownews.Idnews=" + idnews + " ", false);
        connection conn = new connection("SELECT news.title, news.header, news.body,news.newsImage, news.newsdate , news.newstime FROM news where news.Idnews=" + idnews + " and flag=1", false);
        if (conn.read.Read())
        {
            if (conn.read.HasRows)
            {
                Dateshamsi d = new Dateshamsi();
                Table1.Rows[0].Cells[0].Text = conn.read["newstime"].ToString();
                Table1.Rows[0].Cells[1].Text =  d.date1(Convert.ToDateTime(conn.read["newsdate"]));
                Table2.Rows[0].Cells[0].Text = "<div align=\"justify\"><p dir=\"rtl\">" + conn.read["title"].ToString() + "</p></div>";
                Table3.Rows[0].Cells[0].Text = "<img src=\"NewsImages/" + conn.read["newsImage"] + "\" width=\"200\" height=\"140\">";
                Table4.Rows[0].Cells[0].Text ="<div align=\"justify\"><p dir=\"rtl\">"+ conn.read["body"].ToString()+"</p></div>";
                Table5.Rows[0].Cells[0].Text = "<div align=\"justify\"><p dir=\"rtl\">" + conn.read["header"].ToString() + "</p></div>";
            }
        }
        conn.read.Close();
        conn.c1.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("SubNews_Iran.aspx", true);
    }
}

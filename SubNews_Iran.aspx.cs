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

public partial class SubNews_Iran : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int j = 0;
        connection conn = new connection("SELECT news.newsImage,news.Idnews, news.title, news.header,news.newsdate FROM news where flag=1 ORDER BY Shownews.newsdate DESC", false);
        while (conn.read.Read())
        {
            if (conn.read.HasRows)
            {
                TableRow tr = new TableRow();
                TableCell tc = new TableCell();
                int i = Convert.ToInt16(conn.read["Idnews"]);                
                    tc.Text = "<img src=\"NewsImages/" + conn.read["newsImage"] + "\" width=\"111\" height=\"75\">";
                TableCell tc1 = new TableCell();
                tc1.Text = "<a href=\"newspage.aspx?Id=" + i + "\" class=\"style60\"><font style=\"font-weight: bold;\">" + conn.read["title"].ToString() + "</font></a><div align=\"justify\" dir=\"rtl\">" + conn.read["header"].ToString() + "</div><br/>...................................................................";
                tr.Cells.Add(tc1);
                tr.Cells.Add(tc);
                Table1.Rows.Add(tr);
                j++;
            }
            if (j == 21) break;
        }
        conn.read.Close();
        conn.c1.Close();
    }
}

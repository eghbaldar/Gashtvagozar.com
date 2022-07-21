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

public partial class Default1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int j = 0,j1=0;
        connection conn = new connection("SELECT news.newsImage,news.Idnews, news.title, news.header,news.newsdate FROM news where flag=1 ORDER BY news.newsdate DESC", false);
        while (conn.read.Read())
        {
            if (conn.read.HasRows)
            {
                if (j < 21)
                {
                    int i = Convert.ToInt16(conn.read["Idnews"]);
                    if (j1 < 9)
                    {
                        Table1.Rows[j1].Cells[0].Text = "<a href=\"newspage.aspx?Id=" + i + "\" class=\"style60\" ><font style=\"font-weight: bold;\"><div align=\"justify\" dir=\"rtl\">" + conn.read["title"].ToString() + "</div></font></a>";
                        Table1.Rows[j1+1].Cells[1].Text = "<img src=\"NewsImages/" + conn.read["newsImage"] + "\" width=\"65\" height=\"46\">";
                        Table1.Rows[j1+1].Cells[0].Text ="<div align=\"justify\" dir=\"rtl\">" + conn.read["header"].ToString() + "</div>";
                        j1 += 2;
                    }
                    TableRow tr = new TableRow();
                    TableCell tc = new TableCell();
                    tc.Text = "<a href=\"newspage.aspx?Id=" + i + "\" class=\"style62\"><div align=\"justify\" dir=\"rtl\"><font style=\"font-weight: bold;\">" + conn.read["title"].ToString() + "</font></div></a><br />";
                    tr.Cells.Add(tc);
                    Table2.Rows.Add(tr);
                }
                else
                {
                    break;
                }
                j++;
            }
        }
        conn.read.Close();
        conn.c1.Close();
    }
}

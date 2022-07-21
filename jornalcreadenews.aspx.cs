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
using System.Globalization;

public partial class jornalcreadenews : System.Web.UI.Page
{
    string login;
    int count = 0;    
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["username"] == null)
            Response.Redirect("login.aspx", true);
        Dateshamsi dsh = new Dateshamsi();
        string d = dsh.date1(DateTime.Now);
        DropDownList5.SelectedIndex = Convert.ToInt16(d.Substring(5, 2)) - 1;
        DropDownList6.SelectedIndex = Convert.ToInt16(d.Substring(8)) - 1;
            int row = 0;
            Dateshamsi date1 = new Dateshamsi();
            Label6.Text = date1.date1(DateTime.Now.Date).ToString();            
            Label9.Text = DateTime.Now.AddHours(8).AddMinutes(30).ToShortTimeString();
            login = Request.Params.Get("Id");
            connection conn = new connection(("SELECT count(News.Id) FROM News INNER JOIN Register ON News.Id = Register.username where Register.username='" + login + "' and Register.flag=1"), false);
            if (conn.read.Read())
            {
                if (conn.read.HasRows)
                {
                    count = Convert.ToInt16(conn.read[0]);
                }
            }
            Label11.Text =count.ToString() ;
            conn.read.Close();
            conn.c1.Close();
            if (count > 4)
                Button1.Visible = true;
            else
                Button1.Visible = false;
            for (int j = Convert.ToInt16(HiddenField1.Value); j < Convert.ToInt16(HiddenField2.Value); j++)
            {
                cursor cursor1 = new cursor(j, login, HiddenField3.Value, true);
                if (cursor1.read.Read())
                {
                    if (cursor1.read.HasRows)
                    {
                        int i = Convert.ToInt16(cursor1.read["Idnews"]);
                        Table1.Rows[row].Cells[1].Text = "<a href=\"jornaledit.aspx?Idlog=" + login + ";Id=" + i + "\" >" + cursor1.read["title"].ToString() + "</a><div align=\"justify\" dir=\"rtl\">" + cursor1.read["header"].ToString() + "</div><br/><p></p>";
                        if (cursor1.read["newsImage"].ToString().Length > 0)
                            Table1.Rows[row].Cells[2].Text = "<img src=\"NewsImages/" + cursor1.read["newsImage"] + "\" width=\"111\" height=\"75\">";
                        if (Convert.ToBoolean(cursor1.read["flag"]))
                            Table1.Rows[row].Cells[0].Text = "<input name=\"checkbox\" type=\"checkbox\" value=\"checkbox\" checked=\"checked\" disabled=\"disabled\" />";
                        else
                            Table1.Rows[row].Cells[0].Text = "<input name=\"checkbox\" type=\"checkbox\" value=\"checkbox\" disabled=\"disabled\" />";
                        row++;
                    }
                }
                cursor1.read.Close();
                cursor1.c1.Close();
            }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (RequiredFieldValidator1.IsValid && RequiredFieldValidator2.IsValid && RequiredFieldValidator3.IsValid)
        {
            string request1 = Request.ServerVariables["APPL_PHYSICAL_PATH"];
            upload upload1 = new upload(FileUpload1, request1);
            string url = upload1.url;
            login = Request.Params.Get("Id");
            connection conn = new connection("insert into News(News.Id,News.title, News.header, News.body, News.newsImage, News.newsdate ,News.newstime,flag) values('" + login + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + url + "','" + DateTime.Now.ToShortDateString() + "','" + DateTime.Now.AddHours(8).AddMinutes(30).ToShortTimeString() + "',0)", true);
            conn = new connection("select Idnews from News where title='" + TextBox1.Text + "'  ", false);
            int idnews = 0;
            if (conn.read.Read())
            {
                if (conn.read.HasRows)
                {
                    idnews = Convert.ToInt16(conn.read["Idnews"]);
                }
            }
            conn.read.Close();
            conn.c1.Close();
            conn = new connection("insert into NewsType( NewsType.Id,NewsType.Iran,NewsType.World, NewsType.Cultural, NewsType.Socially, NewsType.Economic) values(" + idnews + " ," + CheckBox4.Checked.GetHashCode() + "," + CheckBox3.Checked.GetHashCode() + "," + CheckBox2.Checked.GetHashCode() + "," + CheckBox1.Checked.GetHashCode() + "," + CheckBox5.Checked.GetHashCode() + ")", true);
            conn.c1.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            CheckBox1.Checked = false;
            CheckBox2.Checked = false;
            CheckBox3.Checked = false;
            CheckBox4.Checked = false;
            CheckBox5.Checked = false;
            FileUpload1 = null;
            Response.Redirect("jornalcreadenews.aspx?Id=" + login + "", false);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int row = 0;
        HiddenField1.Value = HiddenField2.Value;
        HiddenField2.Value = (Convert.ToInt16(HiddenField2.Value) + 4) + "";
        login = Request.Params.Get("Id");
        for (int j = Convert.ToInt16(HiddenField1.Value); j < Convert.ToInt16(HiddenField2.Value); j++)
        {
            cursor cursor1 = new cursor(j, login,HiddenField3.Value,true);
            if (cursor1.read.Read())
            {
                if (cursor1.read.HasRows)
                {
                    int i = Convert.ToInt16(cursor1.read["Idnews"]);
                    Table1.Rows[row].Cells[1].Text = "<a href=\"jornaledit.aspx?Idlog=" + login + ";Id=" + i + "\" >" + cursor1.read["title"].ToString() + "</a><div align=\"justify\" dir=\"rtl\">" + cursor1.read["header"].ToString() + "</div><br /><p></p>";
                    if (cursor1.read["newsImage"].ToString().Length > 0)
                        Table1.Rows[row].Cells[2].Text = "<img src=\"NewsImages/" + cursor1.read["newsImage"] + "\" width=\"111\" height=\"75\">";
                    if (Convert.ToBoolean(cursor1.read["flag"]))
                        Table1.Rows[row].Cells[0].Text = "<input name=\"checkbox\" type=\"checkbox\" value=\"checkbox\" checked=\"checked\" disabled=\"disabled\" />";
                    else
                        Table1.Rows[row].Cells[0].Text = "<input name=\"checkbox\" type=\"checkbox\" value=\"checkbox\" disabled=\"disabled\" />";
                    row++;
                }
            }
            else
            {
                Table1.Rows[row].Cells[0].Text = "";
                Table1.Rows[row].Cells[1].Text = "";
                Table1.Rows[row].Cells[2].Text = "";
                row++;
                Button1.Visible = false;
            }
            cursor1.read.Close();
            cursor1.c1.Close();
        }
        Button2.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int row = 0;
        HiddenField2.Value = HiddenField1.Value;
        HiddenField1.Value = (Convert.ToInt16(HiddenField1.Value) - 4) + "";
        login = Request.Params.Get("Id");
        for (int j = Convert.ToInt16(HiddenField1.Value); j < Convert.ToInt16(HiddenField2.Value); j++)
        {
            cursor cursor1 = new cursor(j, login, HiddenField3.Value,true);
            if (cursor1.read.Read())
            {
                if (cursor1.read.HasRows)
                {
                    int i = Convert.ToInt16(cursor1.read["Idnews"]);
                    Table1.Rows[row].Cells[1].Text = "<a href=\"jornaledit.aspx?Idlog=" + login + ";Id=" + i + "\" >" + cursor1.read["title"].ToString() + "</a><div align=\"justify\" dir=\"rtl\">" + cursor1.read["header"].ToString() + "</div><br /><p></p>";
                    if (cursor1.read["newsImage"].ToString().Length > 0)
                        Table1.Rows[row].Cells[2].Text = "<img src=\"NewsImages/" + cursor1.read["newsImage"] + "\" width=\"111\" height=\"75\">";
                    if (Convert.ToBoolean(cursor1.read["flag"]))
                        Table1.Rows[row].Cells[0].Text = "<input name=\"checkbox\" type=\"checkbox\" value=\"checkbox\" checked=\"checked\" disabled=\"disabled\" />";
                    else
                        Table1.Rows[row].Cells[0].Text = "<input name=\"checkbox\" type=\"checkbox\" value=\"checkbox\" disabled=\"disabled\" />";
                    row++;
                }
            }
            cursor1.read.Close();
            cursor1.c1.Close();
        }
        if (Convert.ToInt16(HiddenField1.Value) == 1)
            Button2.Visible = false;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        int row = 0;
        PersianCalendar d = new PersianCalendar();
        DateTime date1 = new DateTime();
        DateTime date2 = new DateTime();
        date1 = d.ToDateTime(Convert.ToInt16(DropDownList1.Text), Convert.ToInt16(DropDownList2.Text), Convert.ToInt16(DropDownList3.Text), 12, 59, 59, 59);
        date2 = d.ToDateTime(Convert.ToInt16(DropDownList4.Text), Convert.ToInt16(DropDownList5.Text), Convert.ToInt16(DropDownList6.Text), 12, 59, 59, 59);

        login = Request.Params.Get("Id");
        connection conn1 = new connection(("SELECT count(News.Id) FROM News INNER JOIN Register ON News.Id = Register.username where username='" + login + "' and  News.newsdate>='" + date1.ToShortDateString() + "' and News.newsdate<='" + date2.ToShortDateString() + "'"), false);
        if (conn1.read.Read())
        {
            if (conn1.read.HasRows)
            {
                count = Convert.ToInt16(conn1.read[0]);
                HiddenField3.Value = "and  News.newsdate>='" + date1.ToShortDateString() + "' and News.newsdate<='" + date2.ToShortDateString() + "'";
                HiddenField1.Value = 1+"";
                HiddenField2.Value = 5+"";
            }
        }
        Label11.Text = count.ToString();
        conn1.read.Close();
        conn1.c1.Close();
        if (count > 4)
            Button1.Visible = true;
        else
            Button1.Visible = false;
        for (int k = 0; k < 4; k++) {
            Table1.Rows[k].Cells[0].Text = "";
            Table1.Rows[k].Cells[1].Text = "";
            Table1.Rows[k].Cells[2].Text = "";
        }
        Label11.Text = count.ToString();
        for (int j = Convert.ToInt16(HiddenField1.Value); j < Convert.ToInt16(HiddenField2.Value); j++)
        {
            cursor cursor1 = new cursor(j, login, HiddenField3.Value,true);
            if (cursor1.read.Read())
            {
                if (cursor1.read.HasRows)
                {
                        int i = Convert.ToInt16(cursor1.read["Idnews"]);
                        Table1.Rows[row].Cells[1].Text = "<a href=\"jornaledit.aspx?Idlog=" + login + ";Id=" + i + "\" >" + cursor1.read["title"].ToString() + "</a><div align=\"justify\" dir=\"rtl\">" + cursor1.read["header"].ToString() + "</div><br /><p></p>";
                        if (cursor1.read["newsImage"].ToString().Length > 0)
                            Table1.Rows[row].Cells[2].Text = "<img src=\"NewsImages/" + cursor1.read["newsImage"] + "\" width=\"111\" height=\"75\">";
                        if (Convert.ToBoolean(cursor1.read["flag"]))
                            Table1.Rows[row].Cells[0].Text = "<input name=\"checkbox\" type=\"checkbox\" value=\"checkbox\" checked=\"checked\" disabled=\"disabled\" />";
                        else
                            Table1.Rows[row].Cells[0].Text = "<input name=\"checkbox\" type=\"checkbox\" value=\"checkbox\" disabled=\"disabled\" />";
                        row++;
                }
            }
            cursor1.read.Close();
            cursor1.c1.Close();
        }        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        login = Request.Params.Get("Id");
        connection conn = new connection("update Register set Register.flag=0 where Register.username='" + login + "'", true);
        conn.c1.Close();
        Session.Contents.Remove("username");
        FormsAuthentication.SignOut();
        Response.Redirect("Default.aspx");
    }
}

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

public partial class selectnews : System.Web.UI.Page
{
    int count = 0;
    Dateshamsi date1 = new Dateshamsi(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["username"] == null)
            Response.Redirect("login.aspx", true);
        Dateshamsi dsh=new Dateshamsi();
        string d = dsh.date1(DateTime.Now);
        DropDownList5.SelectedIndex = Convert.ToInt16(d.Substring(5, 2)) - 1;
        DropDownList6.SelectedIndex = Convert.ToInt16(d.Substring(8)) - 1;
        int row = 0;                  
        connection conn = new connection(("SELECT count(News.Id) FROM News"), false);
        if (conn.read.Read())
        {
            if (conn.read.HasRows)
            {
                count = Convert.ToInt16(conn.read[0]);
            }
        }
        conn.read.Close();
        conn.c1.Close();
        if (count > 15)
            Button1.Visible = true;
        else
            Button1.Visible = false;
        for (int j = Convert.ToInt16(HiddenField1.Value); j < Convert.ToInt16(HiddenField2.Value); j++)
        {
            cursor cursor1 = new cursor(j, "", HiddenField3.Value,false);
            if (cursor1.read.Read())
            {
                if (cursor1.read.HasRows)
                {
                    int i = Convert.ToInt16(cursor1.read["Idnews"]);
                    Table1.Rows[row].Cells[2].Text = "<a href=\"selectnewsedit.aspx?Id=" + i + "\" >" + cursor1.read["title"].ToString() + "</a><div align=\"justify\" dir=\"rtl\">" + cursor1.read["header"].ToString() + "</div><br /><p></p>";
                    if (cursor1.read["newsImage"].ToString().Length>0)
                        Table1.Rows[row].Cells[3].Text = "<img src=\"NewsImages/" + cursor1.read["newsImage"] + "\" width=\"111\" height=\"75\">";
                    Table1.Rows[row].Cells[4].Text = date1.date1(Convert.ToDateTime(cursor1.read["newsdate"]));
                    
                    connection conn1 = new connection("SELECT Register.fname, Register.lname FROM Register Where Register.username = '"+cursor1.read["Id"].ToString()+"'", false);
                    if (conn1.read.Read()){
                        if (conn1.read.HasRows){
                            Table1.Rows[row].Cells[1].Text = conn1.read["fname"].ToString() + " " + conn1.read["lname"].ToString();
                        }
                    }
                    conn1.read.Close();
                    conn1.c1.Close();

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
    protected void Button1_Click(object sender, EventArgs e)
    {
        int row = 0;
        HiddenField1.Value = HiddenField2.Value;
        HiddenField2.Value = (Convert.ToInt16(HiddenField2.Value) + 14) + "";
        for (int j = Convert.ToInt16(HiddenField1.Value); j < Convert.ToInt16(HiddenField2.Value); j++)
        {
            cursor cursor1 = new cursor(j, "", HiddenField3.Value, false);
            if (cursor1.read.Read())
            {
                if (cursor1.read.HasRows)
                {
                    int i = Convert.ToInt16(cursor1.read["Idnews"]);
                    Table1.Rows[row].Cells[2].Text = "<a href=\"selectnewsedit.aspx?Id=" + i + "\" >" + cursor1.read["title"].ToString() + "</a><div align=\"justify\" dir=\"rtl\">" + cursor1.read["header"].ToString() + "</div><br/><p></p>";
                    if (cursor1.read["newsImage"].ToString().Length > 0)
                        Table1.Rows[row].Cells[3].Text = "<img src=\"NewsImages/" + cursor1.read["newsImage"] + "\" width=\"111\" height=\"75\">";
                    Table1.Rows[row].Cells[4].Text = date1.date1(Convert.ToDateTime(cursor1.read["newsdate"]));

                    connection conn1 = new connection("SELECT Register.fname, Register.lname FROM Register Where Register.username = '" + cursor1.read["Id"].ToString() + "'", false);
                    if (conn1.read.Read())
                    {
                        if (conn1.read.HasRows)
                        {
                            Table1.Rows[row].Cells[1].Text = conn1.read["fname"].ToString() + " " + conn1.read["lname"].ToString();
                        }
                    }
                    conn1.read.Close();
                    conn1.c1.Close();

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
        HiddenField1.Value = (Convert.ToInt16(HiddenField1.Value) - 14) + "";
        for (int j = Convert.ToInt16(HiddenField1.Value); j < Convert.ToInt16(HiddenField2.Value); j++)
        {
            cursor cursor1 = new cursor(j, "", HiddenField3.Value,false);
            if (cursor1.read.Read())
            {
                if (cursor1.read.HasRows)
                {
                    int i = Convert.ToInt16(cursor1.read["Idnews"]);
                    Table1.Rows[row].Cells[2].Text = "<a href=\"selectnewsedit.aspx?Id=" + i + "\" >" + cursor1.read["title"].ToString() + "</a><div align=\"justify\" dir=\"rtl\">" + cursor1.read["header"].ToString() + "</div><br /><p></p>";
                    if (cursor1.read["newsImage"].ToString().Length > 0)
                        Table1.Rows[row].Cells[3].Text = "<img src=\"NewsImages/" + cursor1.read["newsImage"] + "\" width=\"111\" height=\"75\">";
                    Table1.Rows[row].Cells[4].Text = date1.date1(Convert.ToDateTime(cursor1.read["newsdate"]));

                    connection conn1 = new connection("SELECT Register.fname, Register.lname FROM Register Where Register.username = '" + cursor1.read["Id"].ToString() + "'", false);
                    if (conn1.read.Read())
                    {
                        if (conn1.read.HasRows)
                        {
                            Table1.Rows[row].Cells[1].Text = conn1.read["fname"].ToString() + " " + conn1.read["lname"].ToString();
                        }
                    }
                    conn1.read.Close();
                    conn1.c1.Close();

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
    protected void  Button4_Click(object sender, EventArgs e)
{
        int row = 0;
        PersianCalendar d = new PersianCalendar();
        DateTime date2 = new DateTime();
        DateTime date3 = new DateTime();
        date2 = d.ToDateTime(Convert.ToInt16(DropDownList1.Text), Convert.ToInt16(DropDownList2.Text), Convert.ToInt16(DropDownList3.Text), 12, 59, 59, 59);
        date3 = d.ToDateTime(Convert.ToInt16(DropDownList4.Text), Convert.ToInt16(DropDownList5.Text), Convert.ToInt16(DropDownList6.Text), 12, 59, 59, 59);

        connection conn1 = new connection(("SELECT count(News.Id) FROM News where  News.newsdate>='" + date2.ToShortDateString() + "' and News.newsdate<='" +date3.ToShortDateString() + "'"), false);
        if (conn1.read.Read())
        {
            if (conn1.read.HasRows)
            {
                count = Convert.ToInt16(conn1.read[0]);
                HiddenField3.Value = " Where News.newsdate>='" + date2.ToShortDateString() + "' and News.newsdate<='" + date3.ToShortDateString() + "'";
                HiddenField1.Value = 1+"";
                HiddenField2.Value = 15+"";
            }
        }
        conn1.read.Close();
        conn1.c1.Close();
        if (count > 15)
            Button1.Visible = true;
        else
            Button1.Visible = false;
        for (int k = 0; k < 15; k++) {
            Table1.Rows[k].Cells[0].Text = "";
            Table1.Rows[k].Cells[1].Text = "";
            Table1.Rows[k].Cells[2].Text = "";
            Table1.Rows[k].Cells[3].Text = "";
            Table1.Rows[k].Cells[4].Text = "";
        }

        for (int j = Convert.ToInt16(HiddenField1.Value); j < Convert.ToInt16(HiddenField2.Value); j++)
        {
            cursor cursor1 = new cursor(j, "", HiddenField3.Value,false);
            if (cursor1.read.Read())
            {
                if (cursor1.read.HasRows)
                {
                    int i = Convert.ToInt16(cursor1.read["Idnews"]);
                    Table1.Rows[row].Cells[2].Text = "<a href=\"selectnewsedit.aspx?Id=" + i + "\" >" + cursor1.read["title"].ToString() + "</a><div align=\"justify\" dir=\"rtl\">" + cursor1.read["header"].ToString() + "</div><br/><p></p>";
                    if (cursor1.read["newsImage"].ToString().Length > 0)
                        Table1.Rows[row].Cells[3].Text = "<img src=\"NewsImages/" + cursor1.read["newsImage"] + "\" width=\"111\" height=\"75\">";
                    Table1.Rows[row].Cells[4].Text = date1.date1(Convert.ToDateTime(cursor1.read["newsdate"]));

                    connection conn2 = new connection("SELECT Register.fname, Register.lname FROM Register Where Register.username = '" + cursor1.read["Id"].ToString() + "'", false);
                    if (conn2.read.Read())
                    {
                        if (conn2.read.HasRows)
                        {
                            Table1.Rows[row].Cells[1].Text = conn2.read["fname"].ToString() + " " + conn1.read["lname"].ToString();
                        }
                    }
                    conn1.read.Close();
                    conn1.c1.Close();

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
        string login = Request.Params.Get("Id");
        connection conn = new connection("update Register set Register.flag=0 where Register.username='" + login + "'", true);
        conn.c1.Close();
        Session.Contents.Remove("username");
        FormsAuthentication.SignOut();
        Response.Redirect("Default.aspx");
    }
}

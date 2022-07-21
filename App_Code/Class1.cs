using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Net.Mail;

public class email
{
    public email(string newmail,string user,string pass)
    {
        MailAddress from = new MailAddress("info@gashtvagozar.com");
        MailAddress to = new MailAddress(newmail);
        MailMessage message = new MailMessage(from, to);

        message.Subject = "Username And Password for gashtvagozar.com";
        message.Body = "Dear user pleas refer to new usert name and Password          Username : " + user + "     Password : " + pass + "";
        SmtpClient client = new SmtpClient("mail.gashtvagozar.com", 25);
        client.Credentials = new System.Net.NetworkCredential("info@gashtvagozar.com", "123123");
        client.Send(message);
    }
}
public class connection
{
    public SqlDataReader read;
    public SqlConnection c1;
    public connection(string command, bool flag)
	{
        string connect = ConfigurationManager.ConnectionStrings["GashtogozarConnectionString"].ToString();
        c1 = new SqlConnection(connect);
        c1.Open();       
        SqlCommand cmd = new SqlCommand(command, c1);
        if (flag)
        {
            cmd.ExecuteNonQuery();
        }
        else 
        {
            read = cmd.ExecuteReader();            
        }
	}
}
public class cursor
{
    public SqlDataReader read;
    public SqlConnection c1;
    public cursor(int j,string login,string qur,bool flag)
    {
        string connect = ConfigurationManager.ConnectionStrings["GashtogozarConnectionString"].ToString();
        c1 = new SqlConnection(connect);
        c1.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = c1;
        if (flag)
        {
            cmd.CommandText = ("declare cursor_gasht cursor scroll for SELECT Register.Id, Register.username, Register.pass, News.Id, News.Idnews, News.title, News.header, News.body, News.newsImage,  News.newsdate,News.flag, NewsType.Id, NewsType.Iran, NewsType.World, NewsType.Cultural, NewsType.Socially, NewsType.Economic FROM (Register INNER JOIN News ON Register.username = News.Id) INNER JOIN NewsType ON News.Idnews = NewsType.Id where username='" + login + "' and Register.flag=1 ORDER BY News.newsdate DESC");
        }
        else
        {
            cmd.CommandText = ("declare cursor_gasht cursor scroll for SELECT News.Id, News.Idnews, News.title, News.header, News.body, News.newsImage,News.flag,  News.newsdate, NewsType.Iran, NewsType.World, NewsType.Cultural, NewsType.Socially, NewsType.Economic FROM News INNER JOIN NewsType ON News.Idnews = NewsType.Id " + qur + " ORDER BY News.newsdate DESC");
        }        
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("open cursor_gasht", c1);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("fetch ABSOLUTE " + j + " from cursor_gasht", c1);
        read = cmd.ExecuteReader();
    }
}
public class upload
{
    public string url = "";
    public upload(FileUpload FileUpload1,string request)
    {
        if (FileUpload1.HasFile)
        {
            url = FileUpload1.FileName;
            byte[] buffer = new byte[FileUpload1.PostedFile.ContentLength];
            System.IO.Stream fis = FileUpload1.PostedFile.InputStream;
            fis.Read(buffer, 0, FileUpload1.PostedFile.ContentLength);
            fis.Close();
            System.IO.BinaryWriter bw = new System.IO.BinaryWriter(new System.IO.FileStream(request + @"NewsImages\" + url, System.IO.FileMode.Create));
            for (int i = 0; i < buffer.Length; i++)
                bw.Write(buffer[i]);
            bw.Close();
        }
    }
}
public class Dateshamsi
{
    public string date1(DateTime d)
    {
        int year = d.Year;
        int month = d.Month;
        int day = d.DayOfYear;
        bool kabise = false;

        if (day > 79)
        {
            year -= 621;
            day -= 79;
            if (day < 186)
            {
                if (day % 31 == 0)
                {
                    month = (int)(day / 31);
                    day = 31;
                }
                else
                {
                    month = (int)(day / 31) + 1;
                    day = day % 31;
                }
            }
            else
            {
                day -= 186;
                if (day % 30 == 0)
                {
                    month = (int)(day / 30) + 6;
                    day = 30;
                }
                else
                {
                    month = (int)(day / 30) + 7;
                    day = day % 30;
                }
            }
        }
        else
        {
            year -= 622;
            if ((year % 100 == 0 && year % 400 == 0) || (year % 100 != 0 && year % 4 == 0))
                kabise = true;
            if (kabise)
                day += 11;
            else
                day += 10;
            if (day % 30 == 0)
            {
                month = (int)(day / 30) + 9;
                day = 30;
            }
            else
            {
                month = (int)(day / 30) + 10;
                day = day % 30;
            }
        }
        string month1 = "";
        string day1 = "";
        if (month < 10) 
            month1 = "0" + month.ToString();
        else
            month1 =month.ToString();
        if (day < 10) 
            day1 = "0" + day.ToString();
        else
            day1 = day.ToString();
        return year.ToString() + "/" + month1 + "/" + day1;
    }
}
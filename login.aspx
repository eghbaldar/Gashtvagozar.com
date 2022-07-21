<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="750" border="0" cellspacing="0" cellpadding="0" align="center">
          <tr>
            <td colspan="2" rowspan="2"><div align="center"><font size="5" face="Arial, Helvetica, sans-serif">
              <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="180" height="60">
                  <param name="movie" value="flash/tabligh.swf" />
                  <param name="quality" value="high" />
                  <embed src="flash/tabligh.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="180" height="60"> </embed>
            </object>
            </font></div></td>
            <td width="42%" height="18"><img src="images/gashtvagozar-top.jpg" width="315" height="18" /></td>
            <td colspan="2" rowspan="2">&nbsp;</td>
          </tr>
          <tr>
            <td width="42%" height="77" background="images/gashtvagozar-bg2.jpg"><p align="center">&nbsp;
              </p>
              <p align="center">
                <asp:Label ID="Label1" runat="server" Font-Names="Tahoma" Font-Size="10pt" ForeColor="Red"></asp:Label>
              </p>
            </td>
          </tr>
          <tr>
            <td width="2%"><img src="images/gashtvagozar-left.jpg" width="16" height="159" /></td>
            <td width="40%" background="images/gashtvagozar-bg.jpg"><div align="center"><font size="4" color="#FFFFFF" face="Arial, Helvetica, sans-serif"><b>Control 
              Manegment</b></font></div></td>
            <td background="images/gashtvagozar-bg2.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="0" height="130">
                <tr>
                  <td width="15%">&nbsp;</td>
                  <td width="46%"><asp:TextBox ID="TextBox1" runat="server" Font-Names="Tahoma"></asp:TextBox></td>
                  <td width="32%"><asp:Label ID="Label2" runat="server" Text=":اسم کاربری" Font-Names="Tahoma" Font-Size="10pt"></asp:Label></td>
                  <td width="7%">&nbsp;</td>
                </tr>
                <tr>
                  <td width="15%">&nbsp;</td>
                  <td width="46%"><asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Font-Names="Tahoma"></asp:TextBox></td>
                  <td width="32%"><asp:Label ID="Label3" runat="server" Text=":کلمه عبور" Font-Names="Tahoma" Font-Size="10pt"></asp:Label></td>
                  <td width="7%">&nbsp;</td>
                </tr>
                <tr>
                  <td width="15%">&nbsp;</td>
                  <td width="46%"><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="تایید" Width="50px" Font-Names="Tahoma" />                  </td>
                  <td width="32%">&nbsp;</td>
                  <td width="7%">&nbsp;</td>
                </tr>
                <tr>
                  <td width="15%">&nbsp;</td>
                  <td colspan="2">&nbsp;</td>
                  <td width="7%">&nbsp;</td>
                </tr>
            </table></td>
            <td width="8%" background="images/gashtvagozar-bg.jpg">&nbsp;</td>
            <td width="8%"><img src="images/gashtvagozar-right.jpg" width="15" height="159" /></td>
          </tr>
          <tr>
            <td colspan="2" rowspan="2">&nbsp;</td>
            <td width="42%" background="images/gashtvagozar-bg2.jpg"><p align="center"><font size="2" face="Arial, Helvetica, sans-serif">
              <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/forget.aspx" Font-Names="Tahoma" Font-Size="10pt">کلمه عبور را فراموش کرده ام</asp:HyperLink>
            <br />
                      <br />
              email: info@gashtvagozar.com</font></p>
                <p>&nbsp;</p>
              <p>&nbsp;</p></td>
            <td colspan="2" rowspan="2">&nbsp;</td>
          </tr>
          <tr>
            <td width="42%" background="image/gashtvagozar-bg2.jpg"><img src="images/gashtvagozar-end.jpg" width="315" height="18" /></td>
          </tr>
        </table>
        </div>
    </form>
</body>
</html>

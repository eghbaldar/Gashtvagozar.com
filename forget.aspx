<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forget.aspx.cs" Inherits="forget" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: right">
        <div style="text-align: right">
            <table width="46%" border="0" cellspacing="0" cellpadding="0" align="center" height="380">
              <tr>
                <td><table width="400" border="0" cellspacing="0" cellpadding="0" align="center" height="15">
                    <tr>
                      <td width="3%" height="8"><div align="center"></div></td>
                    </tr>
                  </table>
                    <table width="400" border="0" cellspacing="0" cellpadding="0" align="center" height="20">
                      <tr>
                        <td width="3%" height="8"><div align="center"><b>&nbsp;&nbsp;&nbsp;<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="180" height="60"><param name="movie" value="flash/tabligh.swf" /><param name="quality" value="high" />
                                    <embed src="flash/tabligh.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="180" height="60"> </embed>
                                  </object>
                        </b></div></td>
                      </tr>
                    </table>
                  <table width="400" border="0" cellspacing="0" cellpadding="0" align="center" height="20">
                      <tr>
                        <td width="3%" height="8" bgcolor="#990000"><div align="center"><b>&nbsp;&nbsp;<span class="style1">رمز عبور را فراموش کرده ام</span> </b></div></td>
                      </tr>
                    </table>
                  <br />
                    <table width="400" border="0" cellspacing="0" cellpadding="0" align="center" height="180">
                      <tr>
                        <td width="2%" height="8">&nbsp;</td>
                        <td width="94%" height="8">&nbsp;</td>
                        <td width="4%" height="8">&nbsp;</td>
                      </tr>
                      <tr>
                        <td width="2%" background="forget/bg-left.jpg" style="height: 165px">&nbsp;</td>
                        <td width="94%" style="height: 165px"><table width="101%" border="0" cellspacing="0" cellpadding="0" height="291">
                            <tr>
                              <td width="26%">&nbsp;</td>
                              <td width="38%"><asp:TextBox ID="TextBox1" runat="server" Font-Names="Tahoma" Font-Size="10pt" Width="145px"></asp:TextBox></td>
                              <td width="29%"><asp:Label ID="Label1" runat="server" Text=" : اسم کاربری" Font-Names="Tahoma" Font-Size="10pt"></asp:Label></td>
                              <td width="7%">&nbsp;</td>
                            </tr>
                            <tr>
                              <td width="26%">&nbsp;</td>
                              <td width="38%"><asp:TextBox ID="TextBox2" runat="server" Font-Names="Tahoma" Font-Size="10pt" Width="145px"></asp:TextBox></td>
                              <td width="29%"><asp:Label ID="Label2" runat="server" Text=" : نام" Font-Names="Tahoma" Font-Size="10pt"></asp:Label></td>
                              <td width="7%">&nbsp;</td>
                            </tr>
                            <tr>
                              <td width="26%">&nbsp;</td>
                              <td width="38%"><asp:TextBox ID="TextBox3" runat="server" Font-Names="Tahoma" Font-Size="10pt" Width="145px"></asp:TextBox></td>
                              <td width="29%"><asp:Label ID="Label3" runat="server" Text=" : نام خانوادگی" Font-Names="Tahoma" Font-Size="10pt"></asp:Label></td>
                              <td width="7%">&nbsp;</td>
                            </tr>
                            <tr>
                              <td width="26%">&nbsp;</td>
                              <td width="38%">
                                  <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Tahoma" Font-Size="10pt"
                                      Width="145px">
                                      <asp:ListItem>Manager</asp:ListItem>
                                      <asp:ListItem>Editor</asp:ListItem>
                                      <asp:ListItem>journalist</asp:ListItem>
                                  </asp:DropDownList></td>
                              <td width="29%"><asp:Label ID="Label4" runat="server" Text=": سمت" Width="52px" Font-Names="Tahoma" Font-Size="10pt"></asp:Label></td>
                              <td width="7%">&nbsp;</td>
                            </tr>
                            <tr>
                              <td width="26%">&nbsp;</td>
                              <td width="38%"><asp:TextBox ID="TextBox5" runat="server" Font-Names="Tahoma" Font-Size="10pt" Width="145px"></asp:TextBox></td>
                              <td width="29%"><asp:Label ID="Label5" runat="server" Text=" : پست الکبرونیکی" Width="112px" Font-Names="Tahoma" Font-Size="10pt"></asp:Label></td>
                              <td width="7%">&nbsp;</td>
                            </tr>
                            <tr>
                              <td width="26%">&nbsp;</td>
                              <td width="38%"><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="بازگشت" Font-Names="Tahoma" Width="60px" />                              
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="تایید" Width="60px" Font-Names="Tahoma" />                                </td>
                              <td width="29%"></td>
                              <td width="7%">&nbsp;</td>
                            </tr>
                        </table><asp:Label ID="Label6" runat="server" Font-Names="Tahoma" Font-Size="10pt" ForeColor="Red"></asp:Label></td>
                        <td width="4%" background="forget/bg-right.jpg" style="height: 165px">&nbsp;</td>
                      </tr>
                      <tr>
                        <td width="2%">&nbsp;</td>
                        <td width="94%">&nbsp;</td>
                        <td width="4%">&nbsp;</td>
                      </tr>
                    </table>
                  <br />
                    <table width="400" border="0" cellspacing="0" cellpadding="0" align="center" height="20">
                      <tr>
                        <td width="3%" height="8" bgcolor="#990000"><div align="center"></div></td>
                      </tr>
                    </table>
                  <div align="center"><br />
                        <font size="2" face="Arial, Helvetica, sans-serif">email: info@gashtvagozar.com</font><br />
                        <font size="2">&copy; 2007</font></div></td>
              </tr>
            </table>
            </div>
    
    </div>
    </form>
</body>
</html>

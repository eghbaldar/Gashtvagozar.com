<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
                  <td width="3%" height="8" bgcolor="#990000"><div align="center"><b>&nbsp;&nbsp;&nbsp;<font color="#FFFFFF">Forget 
                    Password</font></b></div></td>
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
                  <td width="2%" height="165" background="forget/bg-left.jpg">&nbsp;</td>
                  <td width="94%" height="165"><table width="101%" border="0" cellspacing="0" cellpadding="0" height="291">
                      <tr>
                        <td width="5%">&nbsp;</td>
                        <td width="59%">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox8"
                                ErrorMessage="اجباری"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox8" runat="server" Font-Names="Tahoma" Font-Size="11pt" ValidationGroup="m1"></asp:TextBox></td>
                        <td width="29%"><asp:Label ID="Label8" runat="server" Font-Names="Tahoma" Font-Size="11pt" Text=": شناسه کاربری"></asp:Label></td>
                        <td width="7%">&nbsp;</td>
                      </tr>
                      <tr>
                        <td width="5%">&nbsp;</td>
                        <td width="59%">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                                ErrorMessage="اجباری"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox1" runat="server" Font-Names="Tahoma" Font-Size="11pt" ValidationGroup="m1"></asp:TextBox></td>
                        <td width="29%"><asp:Label ID="Label1" runat="server" Font-Names="Tahoma" Font-Size="11pt" Text=" : نام"></asp:Label></td>
                        <td width="7%">&nbsp;</td>
                      </tr>
                      <tr>
                        <td width="5%">&nbsp;</td>
                        <td width="59%">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2"
                                ErrorMessage="اجباری"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox2" runat="server" Font-Names="Tahoma" Font-Size="11pt" ValidationGroup="m1"></asp:TextBox></td>
                        <td width="29%"><asp:Label ID="Label2" runat="server" Font-Names="Tahoma" Font-Size="11pt" Text=" : نام خانوادگی"></asp:Label></td>
                        <td width="7%">&nbsp;</td>
                      </tr>
                      <tr>
                        <td width="5%">&nbsp;</td>
                        <td width="59%">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3"
                                ErrorMessage="اجباری"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox3" runat="server" Font-Names="Tahoma" Font-Size="11pt" ValidationGroup="m1"></asp:TextBox></td>
                        <td width="29%"><asp:Label ID="Label3" runat="server" Font-Names="Tahoma" Font-Size="11pt" Text=" : نام کاربری"></asp:Label></td>
                        <td width="7%">&nbsp;</td>
                      </tr>
                      <tr>
                        <td width="5%">&nbsp;</td>
                        <td width="59%">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4"
                                ErrorMessage="اجباری"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox4" runat="server" Font-Names="Tahoma" Font-Size="11pt" TextMode="Password" ValidationGroup="m1"></asp:TextBox></td>
                        <td width="29%"><asp:Label ID="Label4" runat="server" Font-Names="Tahoma" Font-Size="11pt" Text=" : رمز عبور"></asp:Label></td>
                        <td width="7%">&nbsp;</td>
                      </tr>
                      <tr>
                        <td width="5%" style="height: 23px">&nbsp;</td>
                        <td width="59%" style="height: 23px">&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5"
                                ErrorMessage="اجباری"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox5" runat="server" Font-Names="Tahoma" Font-Size="11pt" TextMode="Password" ValidationGroup="m1"></asp:TextBox></td>
                        <td width="29%" style="height: 23px"><asp:Label ID="Label5" runat="server" Font-Names="Tahoma" Font-Size="11pt" Text=" : تایید رمز عبور"></asp:Label></td>
                        <td width="7%" style="height: 23px">&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList1"
                                ErrorMessage="اجباری"></asp:RequiredFieldValidator>
                            <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="m1">
                                <asp:ListItem>Manager</asp:ListItem>
                                <asp:ListItem>Editor</asp:ListItem>
                                <asp:ListItem>journalist</asp:ListItem>
                            </asp:DropDownList></td>
                        <td><asp:Label ID="Label7" runat="server" Font-Names="Tahoma" Font-Size="11pt" Text=" : شغل"></asp:Label></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7"
                                ErrorMessage="اجباری"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="TextBox7" runat="server" Font-Names="Tahoma" Font-Size="11pt" ValidationGroup="m1"></asp:TextBox></td>
                        <td><asp:Label ID="Label6" runat="server" Font-Names="Tahoma" Font-Size="11pt" Text=" : پست الکترونیکی "></asp:Label></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td style="height: 22px">&nbsp;</td>
                        <td style="height: 22px; text-align: right">
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="بازگشت" Width="65px" CausesValidation="False" />
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="تایید" Width="65px" ValidationGroup="m1" />
                            &nbsp;</td>
                        <td style="height: 22px">&nbsp;</td>
                        <td style="height: 22px">&nbsp;</td>
                      </tr>
                      <tr>
                        <td colspan="4" style="height: 21px; text-align: right"><asp:Label ID="Label9" runat="server" Font-Names="Tahoma" Font-Size="11pt" ForeColor="Red"></asp:Label></td>
                      </tr>
                  </table></td>
                  <td width="4%" height="165" background="forget/bg-right.jpg">&nbsp;</td>
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
      <br />
      &nbsp;</div>
    </form>
</body>
</html>

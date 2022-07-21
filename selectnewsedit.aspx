<%@ Page Language="C#" AutoEventWireup="true" CodeFile="selectnewsedit.aspx.cs" Inherits="jornaledit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title></head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: right">
        <div style="text-align: right">
            <table width="926" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr>
                <td width="87">&nbsp;</td>
                <td width="283"><font face="Arial, Helvetica, sans-serif" size="2">E-mail 
                  : info@gashtvagozar.com</font></td>
                <td width="375"><div align="right"></div></td>
                <td width="181"><div align="right">
                  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="180" height="60">
                      <param name="movie" value="flash/tabligh.swf" />
                      <param name="quality" value="high" />
                      <embed src="flash/tabligh.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="180" height="60"> </embed>
                    </object>
                </div></td>
              </tr>
            </table>
            <table width="920" border="0" cellspacing="0" cellpadding="0" align="center" height="84">
              <tr>
                <td height="51" width="67"><font size="4"><b><font color="#FFFFFF"><img src="images/gashtvagozar-loo-left.jpg" width="83" height="84" /></font></b></font></td>
                <td bgcolor="#990000" height="51" width="657" style="text-align: left"><font size="4"><b><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></b><font color="#FFFFFF"><font face="Verdana, Arial, Helvetica, sans-serif">Gashtvagozar.com</font></font></font></td>
                <td bgcolor="#990000" height="51" width="196" style="text-align: left"></td>
              </tr>
            </table>
            <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr>
                <td background="images/gashtvagozar-bg-1.jpg" bgcolor="#CA0000">&nbsp;</td>
              </tr>
              <tr>
                <td background="images/gashtvagozar-bg-1.jpg" style="height: 926px"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td>&nbsp;</td>
                    </tr>
                  </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="2%">&nbsp;</td>
                        <td width="96%"><table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="143">
                            <tr>
                              <td width="1%">&nbsp;</td>
                              <td width="79%" background="images/bg-down.jpg">&nbsp;</td>
                              <td width="18%" bgcolor="#990000"><div align="center"><strong><font color="#FFFFFF">ویرایش خبر </font></strong></div></td>
                              <td width="2%">&nbsp;</td>
                            </tr>
                            <tr>
                              <td width="1%" background="images/bg-left.jpg">&nbsp;</td>
                              <td colspan="2"><table width="864" border="0" cellspacing="0" cellpadding="0" height="416">
                                  <tr>
                                    <td height="43" colspan="6" style="width: 744px"><div align="right">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                            ErrorMessage="*اجباری"></asp:RequiredFieldValidator>
                                      <asp:TextBox ID="TextBox1" runat="server" style="text-align: right" Width="517px" Font-Names="Tahoma" Font-Size="10pt"></asp:TextBox>
                                      </div></td>
                                    <td width="100" style="text-align: right"><asp:Label ID="Label1" runat="server" Text=" : عنوان خبر" Font-Names="Tahoma" Font-Size="10pt"></asp:Label></td>
                                  </tr>
                                  <tr>
                                    <td height="39" colspan="6" style="width: 744px"><div align="right">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                                            ErrorMessage="*اجباری"></asp:RequiredFieldValidator>
                                      <asp:TextBox ID="TextBox2" runat="server" style="text-align: right" Width="700px" Font-Names="Tahoma" Font-Size="10pt"></asp:TextBox>
                                      </div></td>
                                    <td><asp:Label ID="Label2" runat="server" Text=" : لید خبر" Font-Names="Tahoma" Font-Size="10pt"></asp:Label></td>
                                  </tr>
                                  <tr>
                                    <td height="33" colspan="6" style="width: 744px"><div align="right">
                                        &nbsp;<asp:TextBox ID="TextBox4" runat="server" Font-Names="Tahoma" Font-Size="10pt"
                                            Width="300px"></asp:TextBox></div></td>
                                    <td><asp:Label ID="Label4" runat="server" Text=" : تصویر خبر" Font-Names="Tahoma" Font-Size="10pt"></asp:Label></td>
                                  </tr>
                                  <tr>
                                    <td height="107" colspan="6" style="width: 744px"><div align="right">
                                      <asp:Table ID="Table1" runat="server" Width="150px">
                                        <asp:TableRow runat="server">
                                          <asp:TableCell runat="server"></asp:TableCell>
                                        </asp:TableRow>
                                      </asp:Table>
                                    </div></td>
                                    <td>&nbsp;</td>
                                  </tr>
                                  <tr>
                                    <td height="32" colspan="6" style="width: 744px"><div align="right">
                                      <asp:Label ID="Label7" runat="server" Width="200px" Font-Names="Tahoma" Font-Size="10pt"></asp:Label>&nbsp;
                                        <asp:Label ID="Label6" runat="server" Font-Names="Tahoma" Font-Size="10pt" Width="200px"></asp:Label>
                                    </div></td>
                                    <td width="18%"><asp:Label ID="Label5"
                runat="server" Text=":  تاريخ درج خبر" Font-Names="Tahoma" Font-Size="10pt"></asp:Label></td>
                                  </tr>
                                  <tr>
                                    <td colspan="6" style="width: 744px"><div align="right">
                                      <p>
                                        <asp:Label ID="Label3" runat="server" Text=" : متن خبر" Font-Names="Tahoma" Font-Size="10pt"></asp:Label>
                                      </p>
                                      <p>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                                              ErrorMessage="*اجباری"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="TextBox3" runat="server" Height="379px" style="text-align: right; direction: rtl;"
                TextMode="MultiLine" Width="590px" Font-Names="Tahoma" Font-Size="10pt" AutoCompleteType="Office"></asp:TextBox>
</p>
                                    </div></td>
                                    <td>&nbsp;</td>
                                  </tr>
                                  <tr>
                                    <td width="124" height="74">&nbsp;</td>
                                    <td width="14%" ><asp:CheckBox ID="CheckBox5" runat="server" Text="اقتصادی" Font-Names="Tahoma" /></td>
                                    <td width="14%" ><asp:CheckBox ID="CheckBox1" runat="server" Text="اجتماعی" Font-Names="Tahoma" /></td>
                                    <td width="17%"  ><asp:CheckBox ID="CheckBox2" runat="server" Text="فرهنگی و هنری" Font-Names="Tahoma" Width="150px" /></td>
                                    <td width="15%" ><asp:CheckBox ID="CheckBox3" runat="server" Text="جهانگردی" Font-Names="Tahoma" /></td>
                                    <td width="15%" ><asp:CheckBox ID="CheckBox4" runat="server" Text="ایرانگردی" Font-Names="Tahoma" /></td>
                                    <td>&nbsp;</td>
                                  </tr>
                                  <tr>
                                    <td height="74" colspan="6" style="width: 744px"><div align="right">
                                      <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="بازگشت" Width="70px" Font-Names="Tahoma" CausesValidation="False" />
                                      
                                      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="تایید" Width="70px" Font-Names="Tahoma" />
                                      
                                      <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="حذف" Width="70px" Font-Names="Tahoma" CausesValidation="False" />
                                    </div></td>
                                    <td>&nbsp;</td>
                                  </tr>
                              </table></td>
                              <td width="2%" background="images/bg-right.jpg">&nbsp;</td>
                            </tr>
                            <tr>
                              <td width="1%">&nbsp;</td>
                              <td background="images/bg-down.jpg" colspan="2">&nbsp;</td>
                              <td width="2%">&nbsp;</td>
                            </tr>
                        </table></td>
                        <td width="2%">&nbsp;</td>
                      </tr>
                  </table></td>
              </tr>
              <tr>
                <td><img src="images/gashtvagozar-down-1.jpg" width="926" height="27" /></td>
              </tr>
            </table>
            <asp:HiddenField ID="HiddenField1" runat="server" Value="true" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <br />
      </div>
    
    </div>
    </form>
</body>
</html>

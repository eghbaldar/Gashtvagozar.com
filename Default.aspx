<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>پایگاه گردشگری</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script language="javascript"> 
function showdate() { 
    week= new Array("يكشنبه","دوشنبه","سه شنبه","چهارشنبه","پنج شنبه","جمعه","شنبه") 
    months = new Array("فروردين","ارديبهشت","خرداد","تير","مرداد","شهريور","مهر","آبان","آذر","دي","بهمن","اسفند"); 
    a = new Date(); 
    d= a.getDay(); 
    day= a.getDate(); 
    month = a.getMonth()+1; 
    year= a.getYear(); 
    if (year== 0){year=2000;} 
    if (year<100){year +=1900;} 
    y=1; 
    for(i=0;i<3000;i+=4) { 
        if (year==i) {y=2;} 
        } 
    for(i=1;i<3000;i+=4) { 
        if (year==i) {y=3;} 
        } 
if (y==1) { 
        year -= ( (month < 3) || ((month == 3) && (day < 21)) )? 622:621; 

        switch (month) { 
            case 1: (day<21)? (month=10, day+=10):(month=11, day-=20); break; 
            case 2: (day<20)? (month=11, day+=11):(month=12, day-=19); break; 
            case 3: (day<21)? (month=12, day+=9):(month=1, day-=20);   break; 
            case 4: (day<21)? (month=1, day+=11):(month=2, day-=20);   break; 
            case 5: 
            case 6: (day<22)? (month-=3, day+=10):(month-=2, day-=21); break; 
            case 7: 
            case 8: 
            case 9: (day<23)? (month-=3, day+=9):(month-=2, day-=22);  break; 
            case 10:(day<23)? (month=7, day+=8):(month=8, day-=22);    break; 
            case 11: 
            case 12:(day<22)? (month-=3, day+=9):(month-=2, day-=21);  break; 
       default:          break; 
        } 
        } 
if (y==2) { 
        year -= ( (month < 3) || ((month == 3) && (day < 20)) )? 622:621; 

        switch (month) { 
            case 1: (day<21)? (month=10, day+=10):(month=11, day-=20); break; 
            case 2: (day<20)? (month=11, day+=11):(month=12, day-=19); break; 
            case 3: (day<20)? (month=12, day+=10):(month=1, day-=19);   break; 
            case 4: (day<20)? (month=1, day+=12):(month=2, day-=19);   break; 
            case 5: (day<21)? (month=2, day+=11):(month=3, day-=20);   break; 
            case 6: (day<21)? (month=3, day+=11):(month=4, day-=20); break; 
            case 7: (day<22)? (month=4, day+=10):(month=5, day-=21);   break; 
            case 8: (day<22)? (month=5, day+=10):(month=6, day-=21);   break; 
            case 9: (day<22)? (month=6, day+=10):(month=7, day-=21);  break; 
            case 10:(day<22)? (month=7, day+=9):(month=8, day-=21);    break; 
            case 11:(day<21)? (month=8, day+=10):(month=9, day-=20);   break; 
            case 12:(day<21)? (month=9, day+=10):(month=10, day-=20);  break; 
       default:          break; 
        } 
        } 
if (y==3) { 
        year -= ( (month < 3) || ((month == 3) && (day < 21)) )? 622:621; 

        switch (month) { 
            case 1: (day<20)? (month=10, day+=11):(month=11, day-=19); break; 
            case 2: (day<19)? (month=11, day+=12):(month=12, day-=18); break; 
            case 3: (day<21)? (month=12, day+=10):(month=1, day-=20);   break; 
            case 4: (day<21)? (month=1, day+=11):(month=2, day-=20);   break; 
            case 5: 
            case 6: (day<22)? (month-=3, day+=10):(month-=2, day-=21); break; 
            case 7: 
            case 8: 
            case 9: (day<23)? (month-=3, day+=9):(month-=2, day-=22);  break; 
            case 10:(day<23)? (month=7, day+=8):(month=8, day-=22);    break; 
            case 11: 
            case 12:(day<22)? (month-=3, day+=9):(month-=2, day-=21);  break; 
       default:          break; 
        } 
        } 
document.write(week[d]+" "+day+" "+months[month-1]+" "+ year); 
} 

	function f1(){
		var d=new Date();
		document.all.ss1.innerHTML=d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();
		setTimeout("f1()",1000);
	}

</script>
<style type="text/css">
<!--
body {    
	margin-top: 0px;
	background-image: url(images/bbg.jpg);
}
.style1 {
	font-size: 9px;
	font-family: Arial, Helvetica, sans-serif;
}
.style4 {font-family: tahoma; font-size: 11px; color: #003366;}
.style12 {color: #FFFFFF}
.style45 {
	font-family: tahoma;
	color: #006699;
	font-size: 14px;
	font-weight: bold;
}
a.style61:link {
	text-decoration: none;
	color: #FFFFFF;
}
a.style61:visited {
	text-decoration: none;
	color: #FFFFFF;
}
a.style61:hover {
	text-decoration: none;
	display: block;
	background-color: #325E8B;
	padding-top: 4px;
	padding-bottom: 4px;
}
a.style61:active {
	text-decoration: none;
	color: #FFFFFF;
}
.style47 {font-family: tahoma; font-size: 11px; color: #FFFFFF; }
.style49 {font-size: 9pt; font-family: tahoma; color: #FFFFFF; }
a.style60:visited{
	color: #FFFFFF;
	text-decoration: none;
}
a.style60:link{
	color: #FFFFFF;
	text-decoration: none;
}
a.style60:hover{
	color: #FDCD01;
	text-decoration: none;
}
a.style62:link {
	text-decoration: none;
	color: #000000;
}
a.style62:visited {
	text-decoration: none;
	color: #000000;
}
a.style62:hover {
	text-decoration: none;
	color: #000000;
}
a.style62:active {
	text-decoration: none;
	color: #000000;
}
.style54 {
	font-size: 18px;
	font-weight: bold;
}
-->
</style>
</head>
<body onload="f1();">
  
<table width="980" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><div align="right"><img src="images/top2_1.jpg" alt="Gashtvagozar.com" width="980" height="150" /></div></td>
  </tr>
</table>
<table width="980" border="0" cellspacing="0">
  <tr>
    <td width="254" height="25" bgcolor="#990000" ><div align="center"><span class="style47">
      <script language="javascript" type="text/javascript">showdate()</script>
      &nbsp;&nbsp;&nbsp;<span id="ss1"> &nbsp; </span> </span></div></td>
    <td width="62" bgcolor="#990000"></td>
    <td width="80" bgcolor="#990000" class="style49"><div align="center"><a href="link.html" class="style61">&#1662;&#1740;&#1608;&#1606;&#1583; &#1607;&#1575;</a></div></td>
    <td width="80" bgcolor="#990000" class="style49"><div align="center"><a href="contact.html" class="style61">&#1578;&#1605;&#1575;&#1587; &#1576;&#1575; &#1605;&#1575;</a></div></td>
    <td width="80" bgcolor="#990000" class="style49"><div align="center"><a href="about.html" class="style61">&#1583;&#1585;&#1576;&#1575;&#1585;&#1607; &#1605;&#1575;</a></div></td>
    <td width="80" bgcolor="#990000" class="style49"><div align="center"><a href="Farhang.html" class="style61">&#1601;&#1585;&#1607;&#1606;&#1711; &#1608; &#1607;&#1606;&#1585;</a></div></td>
    <td width="80" bgcolor="#990000" class="style49"><div align="center"><a href="Hotel/Hoteldari.html" class="style61">&#1607;&#1578;&#1604;&#1583;&#1575;&#1585;&#1740;</a></div></td>
    <td width="80" bgcolor="#990000" class="style49"><div align="center"><a href="#" class="style61">&#1580;&#1607;&#1575;&#1606;&#1711;&#1585;&#1583;&#1740;</a></div></td>
    <td width="80" bgcolor="#990000" class="style49"><div align="center"><a href="Iran/iran.html" class="style61">&#1575;&#1740;&#1585;&#1575;&#1606;&#1711;&#1585;&#1583;&#1740;</a></div></td>
    <td width="80" bgcolor="#990000" class="style49"><div align="center"><a href="SubNews_Iran.aspx" class="style61">&#1575;&#1582;&#1576;&#1575;&#1585;</a></div></td>
    <td width="80" bgcolor="#990000" class="style49"><div align="center"><a href="Default.aspx" class="style61">&#1589;&#1601;&#1581;&#1607; &#1575;&#1589;&#1604;&#1740;</a></div></td>
  </tr>
</table>
<table width="980" border="0" cellpadding="0" cellspacing="0" bgcolor="#325E8B" >
  <tr>
    <td width="4" height="530" valign="top">&nbsp;</td>
    <td width="180" valign="top"><table width="180" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="180" height="75">
          <param name="movie" value="flash/tabligh1.swf" />
          <param name="quality" value="high" />
          <embed src="flash/tabligh1.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="180" height="75"></embed>
        </object></td>
      </tr>
      <tr>
        <td >&nbsp;</td>
      </tr>
      <tr>
        <td><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="180" height="75">
          <param name="movie" value="flash/ketabkhane.swf" />
          <param name="quality" value="high" />
          <embed src="flash/ketabkhane.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="180" height="75"></embed>
        </object></td>
      </tr>
      <tr>
        <td >&nbsp;</td>
      </tr>
      <tr>
        <td align="center"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="180" height="100">
          <param name="movie" value="flash/hotel.swf" />
          <param name="quality" value="high" />
          <embed src="flash/hotel.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="180" height="100"></embed>
        </object></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      
      
    </table></td>
    <td width="4" valign="top">&nbsp;</td>
    <td width="220" valign="top"><table width="220" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="center">&nbsp;</td>
      </tr>
    </table>
        <table width="220" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="center" bgcolor="FDCD01"><span class="style45">&#1575;&#1591;&#1604;&#1575;&#1593;&#1575;&#1578; &#1605;&#1608;&#1585;&#1583; &#1606;&#1610;&#1575;&#1586; </span></td>
          </tr>
          <tr>
            <td><table width="219" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="17" align="right" valign="middle" bgcolor="#FFFFFF"><div align="center"><img src="images/tt-2.jpg" width="220" height="113" border="0" usemap="#Map" alt="" />
                          <map name="Map" id="Map">
                            <area shape="poly" coords="107,91,133,65,138,75,145,80,152,84,140,92,120,96" href="http://www.rajatrains.com" alt="اطلاعات قطارها" />
                            <area shape="poly" coords="-14,54,31,27,36,37,41,49,37,55,25,61,5,71" href="http://www.tehranmetro.com" alt="مترو" />
                            <area shape="poly" coords="58,48,76,41,106,45,126,59,117,71,97,89,70,68" href="http://www.irantour.org" alt="اطلاعات هتل ها" />
                            <area shape="poly" coords="54,45,37,25,69,8,92,6,112,7,132,15,143,20,155,29,143,41,129,56,93,36" href="http://www.iranair.com" alt="اطلاعات پرواز" />
                            <area shape="poly" coords="132,61,160,31,202,46,158,82" href="http://www.weather.ir" alt="آب و هوا" />
                            <area shape="poly" coords="7,78,52,51,69,75,85,87,94,91,68,102,37,88" href="http://www.banitak.com" alt="سفرهای زمینی" />
                    </map>
                  </div></td>
                </tr>
                <tr>
                  <td height="101" align="right" valign="top" bgcolor="#FFFFFF" class="style2"><marquee direction="up" onmouseover="this.stop()" onmouseout="this.start()" scrollamount="1" scrolldelay="1" class="style2" width="220" height="130"><TABLE cellSpacing=0 
                  cellPadding=0 width=220 border=0><TBODY><TR><TD vAlign=top 
                      align=right><asp:Table id="Table2" runat="server" __designer:wfdid="w3" Width="215px" Font-Names="Arial" Font-Size="9pt" Font-Bold="True"></asp:Table>&nbsp;</TD></TR></TBODY></TABLE></marquee></td>
                </tr>
                <tr>
                  <td height="17" colspan="2" align="center" valign="top" class="style2"><img src="images/bala.jpg" width="100%" height="20" alt="" /></td>
                </tr>
            </table></td>
          </tr>
        </table>
      <br />
        <table width="215" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="19" align="center" bgcolor="FDCD01" class="style45">&#1578;&#1589;&#1608;&#1740;&#1585; &#1585;&#1608;&#1586; </td>
          </tr>
          <tr>
            <td><img src="images/Iran p. (421).jpg" width="216" height="143" /></td>
          </tr>
          <tr>
            <td align="center">&nbsp;</td>
          </tr>
      </table></td>
    <td width="4">&nbsp;</td>
    <td colspan="4" valign="top"><table width="233" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="233">&nbsp;</td>
      </tr>
    </table>
        <table width="557" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="19" align="center" bgcolor="#9BBCDD" class="style45"> &#1580;&#1583;&#1740;&#1583; &#1578;&#1585;&#1740;&#1606; &#1582;&#1576;&#1585;&#1607;&#1575;</td>
            <td width="322" rowspan="2" align="right" valign="top" class="style45"><table width="293" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="21" align="center" bgcolor="#9BBCDD" class="style45">&#1605;&#1591;&#1604;&#1576; &#1576;&#1585;&#1711;&#1586;&#1740;&#1583;&#1607; </td>
                </tr>
                <tr>
                  <td height="370" align="right" valign="top" bgcolor="#FFFFFF"><table width="290" height="381" border="0" cellspacing="0">
                    <tr>
                      <td height="170" align="center"><img src="images/scan.jpg" width="297" height="251" /></td>
                    </tr>
                    <tr>
                      <td height="44" align="center" valign="middle">
                        <p dir="rtl">عطار نیشابوری، شاعر  و عارف نامی ایرانی</p>
                      </td>
                    </tr>
                    <tr>
                      <td height="165" align="center" valign="top" >
                        <table width="312" height="131" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td height="131" align="right"><div align="justify" class="style4" dir="rtl"><div dir="rtl">
                              <p dir="rtl">فریدالدین ابوحامد  محمدبن ابوبکر ابراهیم بن اسحاق عطار نیشابوری، شاعر و عارف نامی ایرانی در حدود  سال 540 متولد شد و در 618 قمری، درگذشت. <br />
مقبره عطار نیشابوری  در 6 کیلومتری شرق نیشابور، در نزدیکی امامزاده محروق و آرامگاه خیام واقع گردیده  است. ساختمان قدیمی مقبره، از آثار امیرعلی شیرنوایی و متعلق به دوره سلطان حسین  بایقراست. اکنون از بنای شیرنوایی، جز سنگ میله بالاسر قبر که تاریخ بنایش ظاهراً  891 ه.ق بوده، چیزی باقی نمانده است. <br />
در اواخر دوره محمد  علی شاه، نیرالدوله، والی خراسان دستور داد بقعه ای بر مزار عطار احداث کنند؛ ولی  به علت انقلاب و بازگشت نیرالدوله به تهران، آن بنا به صورت بقعه گنبد دار ساده و  آجری باقی ماند. در دوره اخیر، انجمن آثار ملی در دو مرحله ( 1332 و 1337 ه.ش)  نسبت به تکمیل بنا و کاشی کاری و تزیین آن اقدام کرد.</p>
                              <p class="style4" dir="rtl">
                                <a href="neishabor.html">ادامه مطلب ...</a></p>
                              </div>
                              </div></td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td height="27" valign="top"><img src="images/bala.jpg" width="100%" height="20" alt="" /></td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td width="235" height="478" align="right" valign="top" bgcolor="#325E8B"><br/>
                <asp:Table ID="Table1" runat="server" Font-Names="Tahoma" Font-Size="8pt" Width="230px" ForeColor="Black" Font-Overline="False">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" Font-Bold="True" HorizontalAlign="Right"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" Font-Bold="False"></asp:TableCell>
                        <asp:TableCell runat="server" VerticalAlign="Top"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" Font-Bold="True"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" Font-Bold="False"></asp:TableCell>
                        <asp:TableCell runat="server" VerticalAlign="Top"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" Font-Bold="True"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"></asp:TableCell>
                        <asp:TableCell runat="server"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" Font-Bold="True"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"></asp:TableCell>
                        <asp:TableCell runat="server"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" Font-Bold="True"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"></asp:TableCell>
                        <asp:TableCell runat="server"></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            &nbsp;</td>
          </tr>
      </table></td>
    <td width="6">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="6"><div align="right" class="style12"></div></td>
  </tr>
</table>
<table width="980" border="0" cellpadding="0" cellspacing="0" id="Gashtvagozar.com">
  <tr>
    <td height="10"><img src="images/end.jpg" width="980" height="10" alt="" /></td>
  </tr>
</table>
<table width="980" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><div align="center"><span class="style1">Powered byGashtvagozar web site designer Team </span></div></td>
  </tr>
  <tr>
    <td><div align="center" class="style1">
      <div align="center">&copy; 2007 All rights reserved <span class="style4">Gashtvagozar.com </span></div>
    </div></td>
  </tr>
</table>
<form id="form1" runat="server">
    <div>
    
    </div>
</form>
</body>
</html>

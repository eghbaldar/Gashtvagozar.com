<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newspage.aspx.cs" Inherits="newspage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title>پایگاه گردشگری</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script language="javascript" type="text/javascript" > 
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
.style3 {
	font-size: 8px;
	font-weight: bold;
}
.style4 {color: #003366}
.style11 {font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: #FFFFFF; }
.style12 {color: #FFFFFF}
.style19 {font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: #000000; }
.style23 {font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: #000000; font-weight: bold; }
.style28 {font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: #666666; font-weight: bold; }
.style36 {font-size: 9px}
.style37 {color: #CCFF00}
.style38 {color: #CCCC00}
.style39 {color: #CC9900}
.style41 {font-size: 9px; font-family: tahoma; }
.style44 {font-size: 12px; font-family: Arial, Helvetica, sans-serif;}
.style45 {
	color: #006699;
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
.style46 {color: #333333}
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
    <td width="80" bgcolor="#990000" class="style49"><div align="center"><a href="#" class="style61">&#1601;&#1585;&#1607;&#1606;&#1711; &#1608; &#1607;&#1606;&#1585;</a></div></td>
    <td width="80" bgcolor="#990000" class="style49"><div align="center"><a href="Hotel/Hoteldari.html" class="style61">&#1607;&#1578;&#1604;&#1583;&#1575;&#1585;&#1740;</a></div></td>
    <td width="80" bgcolor="#990000" class="style49"><div align="center"><a href="#" class="style61">&#1580;&#1607;&#1575;&#1606;&#1711;&#1585;&#1583;&#1740;</a></div></td>
    <td width="80" bgcolor="#990000" class="style49"><div align="center"><a href="link.html" class="style61">&#1575;&#1740;&#1585;&#1575;&#1606;&#1711;&#1585;&#1583;&#1740;</a></div></td>
    <td width="80" bgcolor="#990000" class="style49"><div align="center"><a href="SubNews_Iran.aspx" class="style61">&#1575;&#1582;&#1576;&#1575;&#1585;</a></div></td>
    <td width="80" bgcolor="#990000" class="style49"><div align="center"><a href="Default.aspx" class="style61">&#1589;&#1601;&#1581;&#1607; &#1575;&#1589;&#1604;&#1740;</a></div></td>
  </tr>
</table>
<table width="980" border="0" cellpadding="0" cellspacing="0" bgcolor="#325E8B" >
  <tr>
    <td width="4" valign="top">&nbsp;</td>
    <td width="180" valign="top"><table width="180" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td>&nbsp;</td>
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
        <td><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="180" height="100">
          <param name="movie" value="flash/hotel.swf" />
          <param name="quality" value="high" />
          <embed src="flash/hotel.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="180" height="100"></embed>
        </object></td>
      </tr>
      <tr>
        <td >&nbsp;</td>
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
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
    <td width="4" valign="top">&nbsp;</td>
    <td colspan="4" align="center" valign="top"><p>&nbsp;</p>
    <form id="form1" runat="server">
    <div>
        <div>
            <table border="0" cellpadding="0" cellspacing="0" width="615">
                <tr>
                    <td width="480" colspan="2" bgcolor="#325E8B" style="text-align: right">&nbsp;&nbsp;                    </td>
                </tr>
                <tr>
                  <td bgcolor="#325E8B" style="height: 38px; text-align: center; width: 240px;"><span style="height: 48px; text-align: right">
                    <asp:Table ID="Table3" runat="server" Font-Names="Tahoma" Font-Size="10pt" HorizontalAlign="Justify"
                            Width="200px" Height="140px">
                      <asp:TableRow runat="server" HorizontalAlign="Justify">
                        <asp:TableCell runat="server" HorizontalAlign="Justify"></asp:TableCell>
                      </asp:TableRow>
                    </asp:Table>
                  </span></td>
                  <td bgcolor="#325E8B" style="height: 38px; text-align: center; width: 263px;"><span style="height: 48px; text-align: right">
                    <asp:Table ID="Table2" runat="server" Font-Names="Tahoma" Font-Size="10pt" HorizontalAlign="Justify"
                            Width="300px" Height="49px" ForeColor="White">
                      <asp:TableRow runat="server" HorizontalAlign="Justify">
                        <asp:TableCell runat="server" HorizontalAlign="Justify"></asp:TableCell>
                      </asp:TableRow>
                    </asp:Table>
                  </span></td>
                </tr>
                <tr>
                  <td colspan="2" bgcolor="#325E8B" style="height: 38px; text-align: center"><div align="justify"><span style="height: 48px; text-align: right">
                  </span></div>
                    <span style="height: 48px; text-align: right">
                    <asp:Table ID="Table5" runat="server" Font-Names="Tahoma" Font-Size="10pt"
                            Width="550px" Height="49px" ForeColor="White">
                      <asp:TableRow runat="server" HorizontalAlign="Right">
                        <asp:TableCell runat="server" HorizontalAlign="Right" Font-Names="Tahoma" Font-Size="11pt" VerticalAlign="Top"></asp:TableCell>
                      </asp:TableRow>
                    </asp:Table>
                        <br />
                        <br />
                        <asp:Table ID="Table4" runat="server" Font-Names="Tahoma" Font-Size="10pt"
                            Width="550px" Height="49px" ForeColor="White">
                            <asp:TableRow runat="server" HorizontalAlign="Right">
                                <asp:TableCell runat="server" Font-Names="Tahoma" Font-Size="11pt" HorizontalAlign="Right"
                                    VerticalAlign="Top"></asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                  </span>
                  <div align="justify"><span style="height: 48px; text-align: right"></span></div></td>
                </tr>
                
                <tr>
                  <td colspan="2" align="right" valign="middle" bgcolor="#325E8B" style="height: 38px; text-align: center"><span style="height: 48px; text-align: right">
                    <asp:Table ID="Table1" runat="server" Font-Names="Tahoma" Font-Size="10pt" HorizontalAlign="Left"
                            Width="232px" Height="49px" ForeColor="White">
                      <asp:TableRow runat="server" HorizontalAlign="Justify">
                        <asp:TableCell runat="server" Font-Bold="True" Font-Names="Tahoma"></asp:TableCell>
                        <asp:TableCell runat="server" HorizontalAlign="Left" Font-Bold="True" Font-Names="Tahoma"></asp:TableCell>
                      </asp:TableRow>
                    </asp:Table>
                  </span></td>
                </tr>
                <tr>
                  <td colspan="2" bgcolor="#325E8B" style="height: 38px; text-align: center"><asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Tahoma" Font-Size="11pt"
                          OnClick="LinkButton1_Click" ForeColor="White">بازگشت</asp:LinkButton></td>
                </tr>
          </table>
        </div>
    
    </div>
    </form>
	</td>
    <td width="6">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="4"><div align="right" class="style12"></div></td>
  </tr>
</table>
<table width="980" border="0" cellpadding="0" cellspacing="0" id="Gashtvagozar.com">
  <tr>
    <td><img src="images/end.jpg" width="980" height="10" alt="" /></td>
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
</body>
</html>

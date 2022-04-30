<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<TITLE>身在江湖_生辰八字查询器</TITLE>
<META content="农历; 阳历; 月历; 节日; 时区; 节气; 八字; 干支; 生肖; gregorian solar; chinese lunar; calendar; hua3a02;" name=keywords>
<META content=All name=robots>
<META content="gregorian solar calendar and chinese lunar calendar" name=description>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="/template/name/css/animate.css" rel="stylesheet">



<style type="text/css">
	TD {FONT-SIZE: 9pt; font-family:Arial, Helvetica, sans-serif;} 
	INPUT {FONT-SIZE: 9pt;}
	SELECT {FONT-SIZE: 9pt;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="/template/name/styles/datatimelayout.css" type="text/css" />
<script type="text/javascript" src="/template/name/scripts/jquery-1.4.1.min.js"></script>



<!-- 
<script type="text/javascript" src="/template/name/scripts/jquery.slidepanel.setup.js"></script>
<script type="text/javascript" src="/template/name/scripts/jquery-ui-1.7.2.custom.min.js"></script>
<script type="text/javascript" src="/template/name/scripts/jquery.tabs.setup.js"></script>
 -->
<link rel="stylesheet" href="/template/name/css/style2.css">




















<SCRIPT language=JavaScript>

</SCRIPT>


<SCRIPT language=JavaScript>
<!--
tg=new Array("甲","乙","丙","丁","戊","己","庚","辛","壬","癸");

dz=new Array("子","丑","寅","卯","辰","巳","午","未","申","酉","戌","亥");
sx=new Array("鼠","牛","虎","兔","龙","蛇","马","羊","猴","鸡","狗","猪");
w=new Array("木","火","土","金","水");f=new Array("东","南","中","西","北");
sz=new Array("一","二","三","四","五","六","七","八","九","十",
"十一","十二","十三","十四","十五","十六","十七","十八","十九","二十",
"廿一","廿二","廿三","廿四","廿五","廿六","廿七","廿八","廿九","三十");
m0=new Array(
0,1,0,0,1,0,1,0,1,1,1,0,1,0,1,0,0,1,0,1,0,1,1,1,
0,1,0,1,2,1,0,0,1,1,0,1,1,1,0,1,0,0,1,0,0,1,1,0,
1,1,0,1,1,0,0,1,0,1,0,1,0,1,1,3,0,1,0,1,0,1,0,1,
0,1,0,1,0,1,1,0,1,0,1,0,1,0,0,1,1,0,1,0,1,1,0,1,
0,4,0,1,0,1,0,1,1,1,0,1,0,1,0,0,1,0,1,0,1,1,1,0,3632)
m1=new Array(
1,0,1,0,0,4,0,1,1,0,1,1,1,0,1,0,0,1,0,0,1,1,0,1,
1,1,0,1,0,0,1,0,0,1,0,1,1,1,0,1,3,0,1,0,0,1,0,1,
1,0,1,1,0,1,0,1,0,1,0,0,1,1,0,1,0,1,1,0,1,0,1,0,
1,2,1,0,1,1,0,1,1,0,1,0,1,0,0,1,0,1,0,1,1,0,1,1,
0,1,0,0,1,0,3,1,0,1,1,1,0,1,0,0,1,0,0,1,0,1,1,1,7294)
m2=new Array(
1,0,1,0,0,1,0,0,1,0,1,1,1,0,1,1,2,1,0,0,1,0,1,1,
0,1,1,0,1,0,1,0,0,1,0,1,0,1,1,0,1,1,0,1,0,1,0,0,
1,0,1,3,1,0,1,1,0,1,0,1,0,0,1,0,1,0,1,1,0,1,1,0,
1,0,0,1,0,1,0,1,0,1,1,1,0,4,0,1,0,0,1,0,1,1,1,1,
0,1,0,0,1,0,0,1,0,1,1,1,0,1,1,0,0,4,0,1,0,1,1,0,10955);
m3=new Array(
1,1,0,1,0,1,0,0,1,0,1,0,1,1,1,0,1,0,1,0,0,1,0,1,
0,1,1,0,5,0,1,0,1,0,0,1,0,1,0,1,1,0,1,0,1,1,0,1,
0,0,1,0,1,0,1,1,0,1,1,0,1,0,3,0,0,1,1,0,1,1,1,0,
1,0,0,1,0,0,1,0,1,1,1,0,1,1,0,0,1,0,3,0,1,1,0,1,
1,1,0,0,1,0,0,1,0,1,0,1,1,1,0,1,0,1,0,0,1,0,1,0,14587);
m4=new Array(
1,1,0,1,1,3,0,0,1,0,1,0,1,0,1,1,0,1,0,1,0,1,0,1,
0,1,0,1,0,1,1,0,1,0,1,0,1,0,1,3,0,1,0,1,1,0,1,1,
0,0,1,0,0,1,0,1,1,1,0,1,1,0,0,1,0,0,1,0,1,1,0,1,
1,4,0,1,0,0,1,0,1,0,1,1,1,0,1,0,1,0,0,1,0,1,0,1,
1,0,1,1,0,1,2,1,0,1,0,1,0,1,1,0,1,1,0,0,1,0,1,0,18249);
m5=new Array(
1,0,1,1,0,1,0,1,0,1,0,1,0,1,0,1,3,0,1,1,0,1,0,1,
0,1,0,0,1,1,0,1,1,0,1,0,1,0,1,0,0,1,0,1,1,0,1,1,
0,1,3,0,0,1,0,1,0,1,1,1,0,1,0,1,0,0,1,0,1,0,1,1,
1,0,1,0,1,0,0,4,1,0,1,0,1,1,1,0,1,0,0,1,0,1,0,1,
0,1,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,4,1,0,1,0,1,0,21911);
m6=new Array(
1,0,1,0,1,0,1,1,0,1,0,1,0,1,0,0,1,0,1,1,0,1,1,0,
1,0,1,2,1,0,1,0,1,1,1,0,1,0,1,0,0,1,0,1,0,1,1,1,
0,1,0,1,0,0,1,0,0,1,1,0,1,1,4,1,0,0,1,0,0,1,1,0,
1,1,0,1,1,0,0,1,0,1,0,1,0,1,0,1,1,0,4,1,0,1,0,1,
0,1,0,1,0,1,1,0,1,0,1,0,1,0,0,1,0,1,1,0,1,1,0,1,25544);
m7=new Array(
0,1,0,0,4,1,0,1,1,1,0,1,0,1,0,0,1,0,1,0,1,1,0,1,
1,0,1,0,0,1,0,0,1,1,0,1,1,1,0,4,0,1,0,0,1,1,0,1,
1,1,0,1,0,0,1,0,0,1,0,1,1,1,0,1,0,1,0,4,0,1,0,1,
1,0,1,1,0,1,0,1,0,1,0,0,1,0,1,1,0,1,1,0,1,0,1,0,
1,0,0,1,0,5,0,1,1,0,1,0,1,0,0,1,0,1,0,1,1,0,1,1,29206);
m8=new Array(
0,1,0,0,1,0,0,1,1,0,1,1,1,0,1,2,1,0,0,1,0,1,1,1,
1,0,1,0,0,1,0,0,1,0,1,1,1,0,1,1,0,0,1,0,0,4,1,1,
0,1,1,0,1,0,1,0,0,1,0,1,0,1,1,0,1,1,0,1,0,1,0,0,
1,0,1,0,1,4,1,1,0,1,0,0,1,0,1,0,1,0,1,1,0,1,1,0,
1,0,0,1,0,1,0,1,0,1,1,1,0,1,0,0,4,0,1,0,1,1,1,1,32868);
m9=new Array(
0,1,0,0,1,0,0,1,0,1,1,1,0,1,1,0,0,1,0,0,1,0,1,1,
0,1,4,1,0,1,0,0,1,0,1,0,1,1,1,0,1,0,1,0,0,1,0,1,
0,1,1,0,1,0,1,4,0,1,0,1,0,1,0,1,1,0,1,0,1,1,0,0,
1,0,1,0,1,0,1,1,0,1,1,0,1,0,0,1,2,1,1,0,1,1,0,1,
1,0,0,1,0,0,1,0,1,1,1,0,1,1,0,0,1,0,0,1,0,1,1,0,36499);
m10=new Array(
1,1,0,4,1,0,0,1,0,1,0,1,1,1,0,1,0,1,0,0,1,0,1,0,
1,1,0,1,1,0,1,0,0,1,0,1,0,4,1,1,0,1,0,1,0,1,0,1,
0,1,0,1,0,1,1,0,1,0,1,0,1,0,1,0,1,0,4,1,1,0,1,1,
0,0,1,0,0,1,0,1,1,1,0,1,1,0,0,1,0,0,1,0,1,1,0,1,
1,1,0,0,4,0,1,0,1,0,1,1,1,0,1,0,1,0,0,1,0,1,0,1,40161);
m11=new Array(
1,0,1,1,0,1,0,0,1,0,1,0,1,0,1,4,1,0,1,0,1,0,1,0,
1,0,1,0,1,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,4,1,0,1,
0,1,0,0,1,0,1,1,1,0,1,0,1,0,1,0,0,1,0,1,1,0,1,1,
0,1,0,1,0,3,0,1,0,1,1,1,0,1,0,1,0,0,1,0,1,0,1,1,
1,0,1,0,1,0,0,1,0,0,1,1,0,1,1,4,1,0,0,1,0,1,0,1,43823);
m12=new Array(
0,1,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,1,0,1,0,1,0,1,
0,4,0,1,1,0,1,1,0,1,0,1,0,1,0,0,1,0,1,1,0,1,1,0,
1,0,1,0,0,4,1,0,1,1,1,0,1,0,1,0,0,1,0,0,1,1,1,0,
1,1,0,1,0,0,1,0,0,1,1,0,1,1,1,0,4,0,1,0,0,1,1,0,
1,1,0,1,0,1,0,1,0,0,1,1,0,1,0,1,1,0,1,0,1,0,1,0,47455)
m13=new Array(
0,1,4,1,0,1,1,0,1,0,1,0,1,0,0,1,0,1,1,0,1,1,0,1,
0,1,0,0,1,0,1,0,1,1,4,1,0,1,0,0,1,0,1,0,1,1,0,1,
1,0,1,0,0,1,0,0,1,1,0,1,1,1,0,1,0,3,0,0,1,0,1,1,
1,1,0,1,0,0,1,0,0,1,0,1,1,1,0,1,0,1,0,1,0,1,0,0,
1,1,0,1,4,1,0,1,0,1,0,0,1,0,1,1,0,1,0,1,1,0,1,0,51117)
m14=new Array(
0,1,0,1,0,1,1,0,1,1,0,1,0,4,0,1,0,1,0,1,1,0,1,1,
0,1,0,0,1,0,0,1,1,0,1,1,1,0,1,0,0,1,2,1,0,1,1,1,
1,0,1,0,0,1,0,0,1,0,1,1,1,0,1,0,1,0,1,0,0,1,0,1,
1,0,1,1,3,0,1,0,0,1,0,1,0,1,1,0,1,1,0,1,0,0,1,0,
1,0,1,0,1,1,0,1,1,0,1,0,0,1,3,0,1,0,1,1,0,1,1,0,54779)
ms=new Array(m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14);
ly=new Array(29,30,58,59,59,60);
tw=new Array(0,0,1,1,2,2,3,3,4,4);
dw=new Array(4,2,0,0,2,1,1,2,3,3,2,4);
function inq(form){
	re = "请重新输入！";
		y = form.y.value;
		if (y == "" || y<1901||y>2050)
			alert("年应在1901和2050之间。" + re);
		else {
			gl0 = (Date.UTC(y, 0, 1) - Date.UTC(1901, 1, 19)) / 86400000;
			dy = y - 1901;
			i = Math.floor(dy / 10);
			nl0 = (i == 0) ? 0 : ms[i - 1][120];
			n = i * 120;
			for (j = 0; j < 120; j++) {
				n++;
				if (n > dy * 12)
					break;
				nl0 += ly[ms[i][j]];
			}
			cjr = (nl0 - gl0) % 31 + 1;
			cjy = (nl0 - gl0 > 30) ? 2 : 1;
			jq = tg[(dy + 6) % 10] + dz[dy % 12];
			jh = tg[(dy + 7) % 10] + dz[(dy + 1) % 12];
			s1 = "<title>查询结果</title><body bgcolor=#FFFFFF text=#ff0000>"
					+ "<table width=400><tr><td>您查询的结果如下:<p>公历："
					+ y + "年";
			s2 = "<br>春节：" + cjy + "月" + cjr + "日<br>节前：" + jq + "年<br>节后："
					+ jh + "年<br>";
			s3 = "要查询生辰八字，请输入时。";
			s4 = "</td></tr></table></body>";
			m = form.m.value;
			d = form.d.value;
			h = form.h.value;
			if (m == "" || d == "") {
				document.write(s1, s2, "<br>", "进一步查询，请输入月和日。<br>", s3, s4);
				document.close();
			} else if (m > 12 || m < 1)
				alert("月应在1与12之间。" + re);
			else if (d > 31 || d < 1)
				alert("日应在1与31之间。" + re);
			else if ((m == 4 || m == 6 || m == 9 || m == 11) && d > 30)
				alert(m + "月只有30天。" + re);
			else if (y % 4 != 0 && m == 2 && d > 28)
				alert(y + "年是平年，2月只有28天。" + re);
			else if (m == 2 && d > 29)
				alert(y + "年是闰年，2月只有29天。" + re);
			else if (h > 23 || h < 0)
				alert("时应在0与23之间。" + re);
			else {
				if (form.h.value == "")
					h = 0;
				sum = (Date.UTC(y, m - 1, d, h) - Date.UTC(1901, 1, 18, 23)) / 1000;
				sumd = Math.floor(sum / 86400);
				day = (Math.floor((sum - 1800) / 86400) + 51) % 7;
				xq = (day == 0) ? "日" : sz[day - 1];
				tgr = (sumd + 54) % 10;
				dzr = (sumd + 52) % 12;
				gzr = tg[tgr] + dz[dzr];
				dzs = Math.floor((h * 1 + 1) / 2) % 12;
				tgs = ((tgr % 5) * 2 + dzs) % 10;
				gzs = tg[tgs] + dz[dzs];
				for (i = 0; ms[i][120] <= sumd; i++)
					;
				k = (i == 0) ? 0 : ms[i - 1][120];
				p = i * 120;
				for (j = 0; j < 120; j++) {
					k += ly[ms[i][j]];
					p++;
					if (k > sumd)
						break;
				}
				if (sumd + 30 < 0) {
					ri = 59 + sumd;
					p = -1;
				} else if (sumd < 0) {
					ri = 30 + sumd;
					p = 0;
				} else
					ri = sumd + ly[ms[i][j]] - k;
				yue = ((p + 11) % 12 == 0) ? "正" : sz[(p + 11) % 12];
				mij = ms[i][j];
				if ((mij == 2 || mij == 3) && ri > 28) {
					ri -= 29;
					yue = "闰" + yue;
				} else if ((mij == 4 || mij == 5) && ri > 29) {
					ri -= 30;
					yue = "闰" + yue;
				}
				ri = ((ri < 10) ? "初" : "") + sz[ri];
				tgn = Math.floor((p - 1) / 12 + 7) % 10;
				dzn = Math.floor((p - 1) / 12 + 1) % 12;
				gzn = tg[tgn] + dz[dzn];
				tgy = (p + 5) % 10;
				dzy = (p + 1) % 12;
				gzy = tg[tgy] + dz[dzy];
				tn = tw[tgn];
				dn = dw[dzn];
				ty = tw[tgy];
				dy = dw[dzy];
				tr = tw[tgr];
				dr = dw[dzr];
				ts = tw[tgs];
				ds = dw[dzs];
				s5 = m + "月" + d + "日（星期" + xq + "）";
				s6 = "<br>农历：" + gzn + "年" + yue + "月" + ri + "日";
				s7 = "生肖：" + sx[dzn] + "<p>"
				
				if (form.h.value == "") {

					rrs.innerHTML=s1 ;
					
				//	document.write(s1, s5, s6, s2, "干支：", gzn, "年", gzy, "月",gzr, "日<br>", s7, s3, s4);
				} else {
	//				document.write(s1, s5, h, "点", s6, dz[dzs], "时", s2, "八字：",
	//						gzn, "　", gzy, "　", gzr, "　", gzs, "<br>", "五行：",
	//						w[tn], w[dn], "　", w[ty], w[dy], "　", w[tr], w[dr],
	//						"　", w[ts], w[ds], "<br>", "方位：", f[tn], f[dn],
	//						"　", f[ty], f[dy], "　", f[tr], f[dr], "　", f[ts],
	//						f[ds], "<br>", s7, s4);
	
				var  a=  s1 +s5 +h +"点" +s6    + dz[dzs] + "时" +s2 +"八字：" + gzn +  gzy  +gzr + gzs + "<br>"+"五行：" +w[ts]  +  w[ds] + "<br>" ; 
				var  b=  "方位："  + f[tn] + f[dn] + f[ty] + f[dy] + f[tr] + f[dr] + f[ts] + f[ds] + "<br>" +  s7+ s4  ;
	
					rrs.innerHTML=  a + b;
	
	
				}
			//	document.close();
			}
		}
	}
	function setfocus() {
		document.cal.y.focus();
		return;
	}
//-->
</SCRIPT>
 <STYLE type=text/css>.style1 {
	FONT-SIZE: 12pt; COLOR: #ff0000
}
.style2 {
	COLOR: #ff0000
}
</STYLE>







</head>
<body   style="margin:0; color:#333;">
<style>
.ll{
border:1px solid #00a0e9;
float:left;
width:57px ;
height:25px;
padding-top:5px;
padding-left:5px;
font-size:10px;
text-align:center;
}

ul{width:190px ;float:left;padding-left:20px;padding-bottom：20px;margin-bottom:30px;}
li{list-style-type:none;padding-left:10px;}

</style>
<%@ include file="/template/name/htmlheader1.jsp"%>
<br><br>

<div  style="margin:10px auto;width:1300px;height:750px;padding:10px;">

<Div style="width:20%;float:left;border:1px solid #00a0e9;padding:30px;height:720px;">
  
 <hr style="padding-left:0px;">







 <TABLE cellSpacing=1 cellPadding=0  align=center bgColor=#999999 border=0>
<TBODY>
 <TR>
    <TD width="46%" bgColor=#ffffff height=272>
      <P><FONT color=#000000><strong>＊</strong>年份限于1901年和2050年之间。 <BR>
            <BR>＊只输入年，输出结果有该年春节日期及春节前后的年干支；输入年、月、日，则输出结果还有该日星期、农历年月日、年月日的干支、生肖；输入年、月、日、时，则输出结果还有生辰八字及八字所对应的五行、方位。 
      <BR><BR>
            <strong>＊</strong>年、月、日用公历准确输入，而时只要在同一个时辰范围里则不影响查询结果。23点至1点前是子时，1点至3点前是丑时，……21点至23点前是亥时。 
            <BR>
            </FONT><FONT color=#ffffff><BR>
            <FONT 
      color=#000000><strong>＊</strong>计算时辰以23点为一天的开端，这样干支系统才能自洽，因此本皇历查询生辰八字按此规则。除了计算时辰，还是应把0点作为一天的开端。也就是说，23点以后出生的人，生日算当日，时辰算下一日子时，八字按下一日算。 
            </FONT></FONT></P></TD>
   </TR></TBODY></TABLE>

</div  >
 
 <div  style="padding-top:15px;margin-left:15px;margin-right: 15px;width:620px ;height:730px;border:1px solid #00a0e9;float:left;padding-bottom:35px;">
 
 <div  style="width:550px ;height:25px;border:1px solid #00a0e9;margin:0 auto;background:#F00; color:#FFF;text-align:center;padding:10px 10px 5px 10px;margin-bottom:20px;">
 生辰八字
  </div> 

  
<div style="width:550px ;border:1px solid #00a0e9;margin:0 auto;margin-top:10px;padding:10px 10px 5px 10px;line-height:30px;">
 
 <div style="float:left;width:45%;padding-left:20px">
      <FORM name=cal> 
      <INPUT maxLength=4 size=12 placeholder="请输入年份" name=y>【1901—2050】 <Br>
      <INPUT maxLength=2 size=12 placeholder="请输入月份" name=m> 【1—12】<Br>
      <INPUT maxLength=2 size=12 placeholder="请输入日期" name=d> 【1—31】 <Br>
      <INPUT maxLength=2 size=12 placeholder="请输入时份" name=h> 【0—23】 <Br> <Br>
      <INPUT onclick=inq(cal) type=button value=查询 name=button> 
      <INPUT type=reset value=清除 name=reset> 
      </FORM>
</div>
<div style="float:right;padding:10px;width:40%">
＊不支持低版本浏览器！以上只支持公历查询，<Br>
<Br>

</div>

<div style="clear:both"></div> 
  </div>
 
  
 
 <div style="width:550px ;height:252px;border:1px solid #00a0e9;margin:0 auto;margin-top:10px;padding:10px 10px 5px 10px;" id="rrs">
 </div>
<div style="width:550px ;border:1px solid #00a0e9;margin:0 auto;padding:10px;margin-top:30px;">
 什么是生辰八字？  <br><hr >
生辰八字是指一个人出生时的干支历日期，是我国的一种民俗信仰。<br>
人出生的时候年，月，日，时，就可以用四柱干支进行记录，每一柱有两个字，一共是八个字，所以人的出生日期就被叫做"生辰八字"。<br><br> 
<div>




</div>


</div>




</div>    
     
    
     
     
 <div  style="width:20% ;height:730px;border:1px solid #00a0e9;float:right;padding-top:20px;margin-bottom:30px;padding:25px;">      

  关注本站公众号支持：<hr> 
    <div style="float:left;width:120px"> <img src="/pic/wx/wxszjh.jpg" style="width:100px;height:100px"></div>
    <div style="float:left;width:120px"> <img src="/pic/wx/wdwx.jpg" style="width:100px;height:100px"> </div>
    <div style="float:left;width:90px;padding-left:30px;"> 身在江湖 </div>
    <div style="float:left;width:90px;padding-left:30px;"> 我的微信 </div>
   </div>    

   </div>  
<script src="/template/name/js/libs/jquery.min.js"></script>
<script src="/template/name/js/libs/jmpress.min.js"></script>
<script src="/template/name/js/libs/jquery.jmslideshow.js"></script>
<script src="/template/name/js/libs/script.js"></script>

	<script src="/template/name/js/bootstrap.min.js?v=3.3.6"></script>



<script src="/template/name/kjs/common.js"></script>
<script type="text/javascript" src="//js.users.51.la/20906883.js"></script>











</body>
</html>
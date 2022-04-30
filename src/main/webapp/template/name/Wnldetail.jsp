<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<TITLE>身在江湖_万年历</TITLE>
<META content="农历; 阳历; 月历; 节日; 时区; 节气; 八字; 干支; 生肖; gregorian solar; chinese lunar; calendar; hua3a02;" name=keywords>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="/template/name/css/animate.css" rel="stylesheet">
  <link href="/template/name/css/defect.css" rel="stylesheet">
<!-- 

<link href="/template/name/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
-->

<link href="/template/name/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">





<link href="/template/name/list/css/css_whir.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="/template/name/styles/datatimelayout.css" type="text/css" />

<script type="text/javascript" src="/template/name/scripts/jquery.slidepanel.setup.js"></script>
<script type="text/javascript" src="/template/name/scripts/jquery-ui-1.7.2.custom.min.js"></script>
<script type="text/javascript" src="/template/name/scripts/jquery.tabs.setup.js"></script>
<link rel="stylesheet" href="/template/name/css/style2.css">
<script src="/template/name/js/libs/modernizr.js"></script>
<SCRIPT language=JavaScript>

</SCRIPT>

</head>
<body   style="margin:0; color:#333;">

<%@ include file="/template/name/htmlheader1.jsp"%>
<br><br>

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
</style>


<div  style="margin:10px auto;width:1300px;height:750px;padding:10px;">

<Div style="width:20%;float:left;border:1px solid #00a0e9;padding:30px;height:720px;">
 ${wxl.dayn}日<hr>${wxl.xs}${wxl.fs}${wxl.cs}<hr>
${wxl.luck} <hr>   <div  style="height:80px;" > ${wxl.jieri}</div> 
 十二时辰与现在时间对应说明
 <hr style="padding-left:0px;">
23:00--01:00点为子时，01:00--03:00点为丑时，03:00--05:00点为寅时，05:00--07:00点为卯时，07:00--09:00点为辰时，09:00--11:00点为巳时，
11:00--13:00点为午时，13:00--15:00点为未时，15:00--17:00点为申时，17:00--19:00点为酉时，19:00--21:00点为戌时，21:00--23:00点为亥时，

<Br><Br>


万年历快速翻阅
<hr style="padding-left:0px;">
<Div style="margin: 0 auto;">
<c:forEach var="i"   begin="2000"  end="2023" step="1" varStatus="v">
<div class="ll" > <a href="/name/${i}/wnllist.do" >${i}年</a>  </div></c:forEach>
</div>

<div style="float:right">
<Br><Br>
<a href="/name/Wnlindex.do">更多</a></div>



</div  >
 
 <div  style="padding-top:15px;margin-left:15px;margin-right: 15px;width:620px ;height:730px;border:1px solid #00a0e9;float:left;padding-bottom:35px;">
 
 <div  style="width:550px ;height:25px;border:1px solid #00a0e9;margin:0 auto;background:#F00; color:#FFF;text-align:center;padding:10px 10px 5px 10px;margin-bottom:20px;">
 
  ${wxl.dayg}
  </div> 

  <div style="width:550px ;height:25px;border:1px solid #00a0e9;margin:0 auto;text-align:right;padding:10px 10px 5px 10px;">
 <div style="float:left;width:150px;text-align:left;">${wxl.dayy}</div>
 <div style="float:left;width:50px;"><a href="/name/${year}/${p.id}/wnldetail.do">上一天</a></div>   
     
 <div  style="float:left;font-size:30px;text-align:center;width:150px;color:red">  ${wxl.day} </div>    
     
     
 <div style="float:right;width:150px">${wxl.year}</div>
 <div style="float:right;width:50px;"><a href="/name/${year}/${n.id}/wnldetail.do">下一天</a></div>
  </div>



  
   <div style="width:550px ;height:25px;border:1px solid #00a0e9;margin:0 auto;margin-top:10px;padding:10px 10px 5px 10px;">
   ${wxl.xingzuo}
  </div>
 
 
 
    <div style="width:550px ;height:25px;border:1px solid #00a0e9;margin:0 auto;margin-top:10px;margin-bottom:5px;padding:10px 10px 5px 10px;">
   <div style="float:left;">  日辰吉凶：</div>
  
    
    <c:forEach items="${rxj}" var="a"   varStatus="v">
<c:if test="${v.index == wxl.dayluck}">
<div style="float:left;width:40px;background:#D8D8EB ;text-align:center;padding-bottom:0px	"> ${a}</div> 
 </c:if>
<c:if test="${v.index != wxl.dayluck}">
<div style="float:left;width:40px;text-align:center	"> ${a} </div>
 </c:if>
   </c:forEach>
    
    
    
  </div>
 
 
 
    <div style="width:550px ;height:25px;border:1px solid #00a0e9;margin:0 auto;padding:10px 10px 5px 10px;margin-bottom:5px;">
  <div style="float:left;">  十二时辰  ：</div>    <!-- ${wxl.sesc} -->  
  <c:forEach var="i" begin="0" end="11">
 <div style="float:left;width:40px;text-align:center"   onmouseover="ke(this,'${i}')"     onmouseout="lke(this)"> ${sesc[i]}</div>
  </c:forEach>
  
  </div>
 
    <div style="width:550px ;height:25px;border:1px solid #00a0e9;margin:0 auto;padding:10px 10px 5px 10px;">
    
    
 
 
 <div style="float:left;">  时辰吉凶  ：    </div>    <!-- ${wxl.scluck} -->  
  <c:forEach var="i" begin="0" end="11">
 <div style="float:left;width:40px;text-align:center"  onmouseover="ke(this,'${i}')"     onmouseout="lke(this)"> ${scxj[i]}</div>
  </c:forEach>
 
  </div>
 
 
<div style="width:550px ;border:1px solid #00a0e9;margin:0 auto;padding:10px;margin-top:30px;">
<div style="width:20px; float:left;padding-left:10px;">
 <div id="ss" style="float:left;color:#2E8B57">子</div>时<font color="red">凶</font>吉 
 </div>
<div> 
 <div style="float:left;width:250px" id="k1"><div style="float:left;padding-right:20px;padding-left:10px;" id="tt1">【子时一刻】23:00--23:15</div> <div id="jj1">吉。发横财。</div> 	</div>
 <div style="float:left;width:250px" id="k1"><div style="float:left;padding-right:20px;" id="tt5">【子时五刻】00:00--11:15</div>	<div id="jj5">  凶。</div>	</div>
 <div style="float:left;width:250px" id="k1"><div style="float:left;padding-right:20px;padding-left:10px;" id="tt2">【子时二刻】23:15--23:30</div>	  <div id="jj2">  凶。</div>	</div>
 <div style="float:left;width:250px" id="k1"><div style="float:left;padding-right:20px;" id="tt6">【子时六刻】00:15--00:30</div>	 <div id="jj6">  凶。</div></div>


<div style="float:left;width:250px" id="k1"><div style="float:left;padding-right:20px;padding-left:10px;" id="tt3">【子时三刻】23:30--23:45</div>	<div id="jj3">  凶。</div></div>
<div style="float:left;width:250px" id="k1"><div style="float:left;padding-right:20px;" id="tt7">【子时七刻】00:30--00:45</div>	<div id="jj7">  凶。</div></div>
<div style="float:left;width:250px" id="k1"><div style="float:left;padding-right:20px;padding-left:10px;" id="tt4">【子时四刻】23:45--00:00</div>	<div id="jj4">  凶。</div></div>
<div style="float:left;width:250px" id="k1"><div style="float:left;padding-right:20px;" id="tt8">【子时八刻】00:45--01:00</div> <div id="jj8">  凶。</div> </div>
</div>

<div style="clear:both"></div> 
</div>



 <div style="width:550px ;margin:0 auto;padding-top:15px;margin-top:10px;padding-left:15px;">
 基本信息：<hr>
 <div style="float:left">
<div style="">日期公历：${wxl.dayg} </div> <div style="">日期阴历： ${wxl.dayy}</div> <div style="">古法称呼： ${wxl.year}</div>
</div>
<div style="float:right;padding-right:40px;">${wxl.luck}</div>
<div style="clear:both"></div>
<div style="">神神方位：${wxl.xs}${wxl.fs}${wxl.cs}</div>
<div style="">日辰吉凶：<c:forEach items="${rxj}" var="a"   varStatus="v"><c:if test="${v.index == wxl.dayluck}">${a}</c:if></c:forEach></div>
<div style=""><div style="float:left;">十二时辰：</div> 
<c:forEach var="i" begin="0" end="11">
<div style="float:left;width:40px;text-align:center;" onmouseover="ke(this,'${i}')"     onmouseout="lke(this)"> ${sesc[i]}</div>
</c:forEach></div> 
<div style=""><div style="float:left;">时辰吉凶：</div> <c:forEach var="i" begin="0" end="11"><div style="float:left;width:40px;text-align:center"  onmouseover="ke(this,'${i}')"     onmouseout="lke(this)"> ${scxj[i]}</div></c:forEach></div>
<div style="">一  时 辰  ：有八刻（一刻合现代15分钟）参看左侧十二时辰与现在时间对应说明</div>
<div style="">鼠标放到十二时辰下的：时辰上可以查看每一时刻的凶吉。</div>
<div style="">午时三刻：转换成现在时间就是11:30至11:45之间,例如说的午时三刻动身,也就是11:30至11:45出发。</div>
 
  </div>
 </div>    
     
    
     
     
 <div  style="width:20% ;height:730px;border:1px solid #00a0e9;float:right;padding-top:20px;margin-bottom:30px;padding:25px;">    
      说明：<br> <hr >
黄道、黑道共有十二辰，依次是：一青龙、二明堂、三天刑、四朱雀、五金匮、六天德、七白虎、八玉堂、九天牢、十玄武、十一司命、十二勾陈。<br> <hr >
青龙、明堂、金匮、天德、玉堂、司命为黄道，主吉。<br>
天刑、朱雀、白虎、天牢、玄武、勾陈为黑道，主凶。<br>
利用黄道、黑道可以推出黄道吉日、黄道吉时。<br> <hr >
<font color="red">青龙：消息吉。	明堂：吉。 <br>
金匮：财星吉。	天德：官贵吉。 <br>
玉堂：吉。	司命：官长吉。 <br><br></font>

天刑：驿马强动。	朱雀：口舌。  <br>
白虎：口舌官非。	天牢：凶星宜忌。  <br>
玄武：内小人盗贼暗害。
勾陈：口舌牵连。 

 <br> <br> <br>
    关注本站公众号支持：<hr> 
   <div style="float:left;width:120px"> 
    <img src="/pic/wx/wxszjh.jpg" style="width:100px;height:100px">
    </div>
    <div style="float:left;width:120px"> 
    <img src="/pic/wx/wdwx.jpg" style="width:100px;height:100px">
    </div>
    
    <div style="float:left;width:90px;padding-left:30px;"> 身在江湖 </div>
    <div style="float:left;width:90px;padding-left:30px;"> 我的微信 </div>
    
   
   </div>    
    
    
   <div style="clear:both"></div> 

     
   </div>  
     
     
 
<Br></Br>



<script >


function ke(a,i){ 
	
	a.style.background="#FF0000"
 
  // alert(i);
	
	var t ;
	var ttt1,ttt2,ttt3,ttt4,ttt5,ttt6,ttt7,ttt8 ;
	var jjj1,jjj2,jjj3,jjj4,jjj5,jjj6,jjj7,jjj8;
	if (i == 0) {
		t='子';
	//	'子时','一刻','凶。','二刻','平。平。','三刻','吉。旺财丁。','四刻','吉。旺财丁。','五刻','吉。旺人丁。','六刻','平。平。','七刻','凶。','八刻','凶。',
		ttt1 ="【丑时一刻】23:00--23:15";
		ttt2 ="【丑时二刻】23:15--23:30";
		ttt3 ="【丑时三刻】23:30--23:45";
		ttt4 ="【丑时四刻】23:45--00:00";
		ttt5 ="【丑时五刻】00:00--00:15";
		ttt6 ="【丑时六刻】00:15--00:30";
		ttt7 ="【丑时七刻】00:30--00:45";
		ttt8 ="【丑时八刻】00:45--01:00";
		
		jjj1 ="凶。";
		jjj2 ="平。平。";
		jjj3 ="吉。旺财丁。";
		jjj4 ="吉。旺财丁。";
		jjj5 ="吉。旺人丁。";
		jjj6 ="平。平。";
		jjj7 ="凶。";
		jjj8 ="凶。";
	
		jj3.style.color="red" ;
		jj4.style.color="red" ;
		jj5.style.color="red" ;
	
		jj2.style.color="green" ;
		jj6.style.color="green" ;

		jj1.style.color="black" ;
		jj7.style.color="black" ;
		jj8.style.color="black" ;
	
	} else if (i == 1) {
		t='丑';
		
		ttt1 ="【丑时一刻】01:00--01:15";
		ttt2 ="【丑时二刻】01:15--01:30";
		ttt3 ="【丑时三刻】01:30--01:45";
		ttt4 ="【丑时四刻】01:45--02:00";
		ttt5 ="【丑时五刻】02:00--02:15";
		ttt6 ="【丑时六刻】02:15--02:30";
		ttt7 ="【丑时七刻】02:30--02:45";
		ttt8 ="【丑时八刻】02:45--03:00";
		
		jjj1 ="凶。";
		jjj2 ="凶。";
		jjj3 ="吉。生贵子。";
		jjj4 ="吉。吉利。";
		jjj5 ="吉。大吉利。";
		jjj6 ="凶。";
		jjj7 ="凶。";
		jjj8 ="凶。";
		
		//'丑时','一刻','凶。','二刻','凶。','三刻','吉。生贵子。','四刻','吉。吉利。','五刻','吉。大吉利。','六刻','凶。','七刻','凶。','八刻','凶。',
		
		jj3.style.color="red" ;
		jj4.style.color="red" ;
		jj5.style.color="red" ;
		jj1.style.color="black" ;
		jj2.style.color="black" ;
		jj6.style.color="black" ;
		jj7.style.color="black" ;
		jj8.style.color="black" ;
		
	} else if (i == 2) { t='寅';
		ttt1 ="【寅时一刻】03:00--03:15";
		ttt2 ="【寅时二刻】03:15--03:30";
		ttt3 ="【寅时三刻】03:30--03:45";
		ttt4 ="【寅时四刻】03:45--04:00";
		ttt5 ="【寅时五刻】04:00--04:15";
		ttt6 ="【寅时六刻】04:15--04:30";
		ttt7 ="【寅时七刻】04:30--04:45";
		ttt8 ="【寅时八刻】04:45--05:00";
//		'寅时','一刻','凶。','二刻','吉。旺子孙。','三刻','吉。发大财。','四刻','凶。','五刻','吉。旺人丁。','六刻','吉。旺人丁。','七刻','凶。','八刻','凶。'	
		jjj1 ="凶。";
		jjj2 ="吉。旺子孙。";
		jjj3 ="吉。发大财。";
		jjj4 ="凶。";
		jjj5 ="吉。旺人丁。";
		jjj6 ="吉。旺人丁。";
		jjj7 ="凶。";
		jjj8 ="凶。";
		
		jj2.style.color="red" ;
		jj3.style.color="red" ;
		jj5.style.color="red" ;
		jj6.style.color="red" ;
		
		jj1.style.color="black" ;
		jj4.style.color="black" ;
		jj7.style.color="black" ;
		jj8.style.color="black" ;

	} else if (i == 3) {t='卯';
	ttt1 ="【卯时一刻】05:00--05:15";
	ttt2 ="【卯时二刻】05:15--05:30";
	ttt3 ="【卯时三刻】05:30--05:45";
	ttt4 ="【卯时四刻】05:45--06:00";
	ttt5 ="【卯时五刻】06:00--06:15";
	ttt6 ="【卯时六刻】06:15--06:30";
	ttt7 ="【卯时七刻】06:30--06:45";
	ttt8 ="【卯时八刻】06:45--07:00";
//	'卯时','一刻','吉。发福吉。','二刻','凶。','三刻','凶。','四刻','吉。吉利。','五刻','凶。','六刻','吉。发人丁。','七刻','吉。吉利。','八刻','吉。发横财。',
	jjj1 ="吉。发福吉。";
	jjj2 ="凶。";
	jjj3 ="凶。";
	jjj4 ="吉。吉利。";
	jjj5 ="凶。";
	jjj6 ="吉。发人丁。";
	jjj7 ="吉。吉利。";
	jjj8 ="吉。发横财。";
	
	jj1.style.color="red" ;
	jj4.style.color="red" ;
	jj6.style.color="red" ;
	jj7.style.color="red" ;
	jj8.style.color="red" ;
	
	jj2.style.color="black" ;
	jj3.style.color="black" ;
	jj5.style.color="black" ;
	} else if (i == 4) {t='辰';
	ttt1 ="【辰时一刻】07:00--07:15";
	ttt2 ="【辰时二刻】07:15--07:30";
	ttt3 ="【辰时三刻】07:30--07:45";
	ttt4 ="【辰时四刻】07:45--08:00";
	ttt5 ="【辰时五刻】08:00--08:15";
	ttt6 ="【辰时六刻】08:15--08:30";
	ttt7 ="【辰时七刻】08:30--08:45";
	ttt8 ="【辰时八刻】08:45--09:00";
//	'辰时','一刻','吉。旺财吉。','二刻','凶。','三刻','吉。旺财丁。','四刻','吉。大旺财。','五刻','凶。','六刻','吉。大旺财。','七刻','吉。吉利。','八刻','吉。发福吉。',
	jjj1 ="吉。旺财吉。";
	jjj2 ="凶。";
	jjj3 ="吉。旺财丁。";
	jjj4 ="吉。大旺财。";
	jjj5 ="凶。";
	jjj6 ="吉。大旺财。";
	jjj7 ="吉。吉利。";
	jjj8 ="吉。发福吉。";
	
	jj1.style.color="red" ;
	jj3.style.color="red" ;
	jj4.style.color="red" ;
	jj6.style.color="red" ;
	jj7.style.color="red" ;
	jj8.style.color="red" ;
	
	jj2.style.color="black" ;
	jj5.style.color="black" ;

	} else if (i == 5) {t='巳';
	ttt1 ="【巳时一刻】09:00--09:15";
	ttt2 ="【巳时二刻】09:15--09:30";
	ttt3 ="【巳时三刻】09:30--09:45";
	ttt4 ="【巳时四刻】09:45--10:00";
	ttt5 ="【巳时五刻】10:00--10:15";
	ttt6 ="【巳时六刻】10:15--10:30";
	ttt7 ="【巳时七刻】10:30--10:45";
	ttt8 ="【巳时八刻】10:45--11:00";
//	'巳时','一刻','吉。发横财。','二刻','吉。发横财。','三刻','吉。发横财。','四刻','吉。发横财。','五刻','吉。大福贵。','六刻','吉。大福贵。','七刻','凶。','八刻','凶。',
	jjj1 ="吉。发横财。";
	jjj2 ="吉。发横财。";
	jjj3 ="吉。发横财。";
	jjj4 ="吉。发横财。";
	jjj5 ="吉。大福贵。";
	jjj6 ="吉。大福贵。";
	jjj7 ="凶。";
	jjj8 ="凶。";
	
	jj1.style.color="red" ;
	jj2.style.color="red" ;
	jj3.style.color="red" ;
	jj4.style.color="red" ;
	jj5.style.color="red" ;
	jj6.style.color="red" ;
	
	jj7.style.color="black" ;
	jj8.style.color="black" ;

	} else if (i == 6) {t='午';
	ttt1 ="【午时一刻】11:00--11:15";
	ttt2 ="【午时二刻】11:15--11:30";
	ttt3 ="【午时三刻】11:30--11:45";
	ttt4 ="【午时四刻】11:45--12:00";
	ttt5 ="【午时五刻】12:00--12:15";
	ttt6 ="【午时六刻】12:15--12:30";
	ttt7 ="【午时七刻】12:30--12:45";
	ttt8 ="【午时八刻】12:45--13:00";
//	'午时','一刻','凶。','二刻','平。平。','三刻','吉。吉利。','四刻','吉。旺财吉。','五刻','吉。吉利。','六刻','吉。旺六畜。','七刻','凶。','八刻','凶。',
	jjj1 ="凶。";
	jjj2 ="平。平。";
	jjj3 ="吉。吉利。";
	jjj4 ="吉。旺财吉。";
	jjj5 ="吉。吉利。";
	jjj6 ="吉。旺六畜。";
	jjj7 ="凶。";
	jjj8 ="凶。";
	
	
	jj2.style.color="green" ;
	jj3.style.color="red" ;
	jj4.style.color="red" ;
	jj5.style.color="red" ;
	jj6.style.color="red" ;
	
	jj7.style.color="black" ;
	jj8.style.color="black" ;
	jj1.style.color="black" ;
	} else if (i == 7) {t='未';
	ttt1 ="【未时一刻】13:00--13:15";
	ttt2 ="【未时二刻】13:15--13:30";
	ttt3 ="【未时三刻】13:30--13:45";
	ttt4 ="【未时四刻】13:45--14:00";
	ttt5 ="【未时五刻】14:00--14:15";
	ttt6 ="【未时六刻】14:15--14:30";
	ttt7 ="【未时七刻】14:30--14:45";
	ttt8 ="【未时八刻】14:45--15:00";
//	'未时','一刻','凶。','二刻','凶。','三刻','吉。旺财丁。','四刻','吉。旺财丁。','五刻','吉。旺财丁。','六刻','吉。旺财丁。','七刻','吉。旺六畜。','八刻','凶。',
	jjj1 ="凶。";
	jjj2 ="凶。";
	jjj3 ="吉。旺财丁。";
	jjj4 ="吉。旺财丁。";
	jjj5 ="吉。旺财丁。";
	jjj6 ="吉。旺财丁。";
	jjj7 ="吉。旺六畜。";
	jjj8 ="凶。";
	
	
	jj3.style.color="green" ;
	jj4.style.color="red" ;
	jj5.style.color="red" ;
	jj6.style.color="red" ;
	jj7.style.color="red" ;
	
	jj1.style.color="black" ;
	jj2.style.color="black" ;
	jj8.style.color="black" ;

	} else if (i == 8) {t='申';
	ttt1 ="【申时一刻】15:00--15:15";
	ttt2 ="【申时二刻】15:15--15:30";
	ttt3 ="【申时三刻】15:30--15:45";
	ttt4 ="【申时四刻】15:45--16:00";
	ttt5 ="【申时五刻】16:00--16:15";
	ttt6 ="【申时六刻】16:15--16:30";
	ttt7 ="【申时七刻】16:30--16:45";
	ttt8 ="【申时八刻】16:45--17:00";
//	'申时','一刻','凶。','二刻','凶。','三刻','凶。','四刻','凶。','五刻','吉。旺财丁。','六刻','吉。旺财丁。','七刻','凶。','八刻','凶。',
	jjj1 ="凶。";
	jjj2 ="凶。";
	jjj3 ="凶。";
	jjj4 ="凶。";
	jjj5 ="吉。旺财丁。";
	jjj6 ="吉。旺财丁。";
	jjj7 ="凶。";
	jjj8 ="凶。";
	
	jj5.style.color="red" ;
	jj6.style.color="red" ;

	jj1.style.color="black" ;
	jj2.style.color="black" ;
	jj3.style.color="black" ;
	jj4.style.color="black" ;
	jj7.style.color="black" ;
	jj8.style.color="black" ;

	} else if (i == 9) {t='酉';
	ttt1 ="【酉时一刻】17:00--17:15";
	ttt2 ="【酉时二刻】17:15--17:30";
	ttt3 ="【酉时三刻】17:30--17:45";
	ttt4 ="【酉时四刻】17:45--18:00";
	ttt5 ="【酉时五刻】18:00--18:15";
	ttt6 ="【酉时六刻】18:15--18:30";
	ttt7 ="【酉时七刻】18:30--18:45";
	ttt8 ="【酉时八刻】18:45--19:00";
//	'酉时','一刻','吉。发财吉。','二刻','吉。发财吉。','三刻','吉。发财吉。','四刻','吉。发财吉。','五刻','吉。大吉利。','六刻','吉。发财吉。','七刻','凶。','八刻','凶。',
	jjj1 ="吉。发财吉。";
	jjj2 ="吉。发财吉。";
	jjj3 ="吉。发财吉。";
	jjj4 ="吉。发财吉。";
	jjj5 ="吉。大吉利。";
	jjj6 ="吉。发财吉。";
	jjj7 ="凶。";
	jjj8 ="凶。";
	
	jj7.style.color="black" ;
	jj8.style.color="black" ;

	jj1.style.color="red" ;
	jj2.style.color="red" ;
	jj3.style.color="red" ;
	jj4.style.color="red" ;
	jj5.style.color="red" ;
	jj6.style.color="red" ;


	} else if (i == 10) {t='戍';
	ttt1 ="【戍时一刻】19:00--19:15";
	ttt2 ="【戍时二刻】19:15--19:30";
	ttt3 ="【戍时三刻】19:30--19:45";
	ttt4 ="【戍时四刻】19:45--20:00";
	ttt5 ="【戍时五刻】20:00--20:15";
	ttt6 ="【戍时六刻】20:15--20:30";
	ttt7 ="【戍时七刻】20:30--20:45";
	ttt8 ="【戍时八刻】20:45--21:00";
//	'戍时','一刻','吉。发财丁。','二刻','吉。发财丁。','三刻','凶。','四刻','凶。','五刻','凶。','六刻','凶。','七刻','凶。','八刻','凶。',
	jjj1 ="吉。发财丁。";
	jjj2 ="吉。发财丁。";
	jjj3 ="凶。";
	jjj4 ="凶。";
	jjj5 ="凶。";
	jjj6 ="凶。";
	jjj7 ="凶。";
	jjj8 ="凶。";
	
	jj1.style.color="red" ;
	jj2.style.color="red" ;

	jj5.style.color="black" ;
	jj6.style.color="black" ;
	jj3.style.color="black" ;
	jj4.style.color="black" ;
	jj7.style.color="black" ;
	jj8.style.color="black" ;


	} else if (i == 11) {t='亥';
	ttt1 ="【亥时一刻】21:00--21:15";
	ttt2 ="【亥时二刻】21:15--21:30";
	ttt3 ="【亥时三刻】21:30--21:45";
	ttt4 ="【亥时四刻】21:45--22:00";
	ttt5 ="【亥时五刻】22:00--22:15";
	ttt6 ="【亥时六刻】22:15--22:30";
	ttt7 ="【亥时七刻】22:30--22:45";
	ttt8 ="【亥时八刻】22:45--23:00";
//	'亥时','一刻','吉。吉利。','二刻','凶。','三刻','凶。','四刻','凶。','五刻','凶。','六刻','凶。','七刻','凶。','八刻','凶。'
	jjj1 ="吉。吉利。";
	jjj2 ="凶。";
	jjj3 ="凶。";
	jjj4 ="凶。";
	jjj5 ="凶。";
	jjj6 ="凶。";
	jjj7 ="凶。";
	jjj8 ="凶。";
	
	jj1.style.color="red" ;
	jj2.style.color="black" ;
	jj3.style.color="black" ;
	jj4.style.color="black" ;
	jj5.style.color="black" ;
	jj6.style.color="black" ;
	jj7.style.color="black" ;
	jj8.style.color="black" ;

	}

	
	
	ss.innerHTML=t ;
	tt1.innerHTML=ttt1 ;
	tt2.innerHTML=ttt2 ;
	tt3.innerHTML=ttt3;
	tt4.innerHTML=ttt4 ;
	tt5.innerHTML=ttt5 ;
	tt6.innerHTML=ttt6 ;
	tt7.innerHTML=ttt7 ;
	tt8.innerHTML=ttt8 ;
	
	jj1.innerHTML=jjj1 ;
	jj2.innerHTML=jjj2 ;
	jj3.innerHTML=jjj3 ;
	jj4.innerHTML=jjj4 ;
	jj5.innerHTML=jjj5 ;
	jj6.innerHTML=jjj6 ;
	jj7.innerHTML=jjj7 ;
	jj8.innerHTML=jjj8 ;
	
	

}

function lke(a) {

	a.style.background = "#F8F8FF"

	//alert("dd");
}

function myname() {
	var j = 0;
	var tem = 100;

	for (var i = 0; i < 42; i++) {
		mOvr(i);
		alert(i)
		var d = $("#p3").val();

		if (d == 0) {
			alert("空位" + d);
		} else if (d == tem) {
			alert(d + "-----" + tem);
			pushBtm('MD');
			i = 0;
			tem = 0;
			$("#p3").val('0');
		} else {
			tem = d;
			subd();
			j++;
			alert(j)
		}

	}

}

function subd() {

	var dayg = $("#p1").val();
	var dayy = $("#p4").val();
	var day = $("#p3").val();
	var xs = $("#x1").val();
	var fs = $("#x2").val();
	var cs = $("#x3").val();
	var year = $("#p5").val();
	var jieri = $("#p6").val();
	var luck = $("#p7").val();
	var dayluck = $("#w3").val();
	var sesc = $("#w1").val();
	var scluck = $("#w2").val();
	var xingzuo = $("#p8").val();
	var dayn = $("#p9").val();

	$.ajax({
		type : "GET",
		url : "/name/AddWnl.do",
		data : {
			dayg : dayg,
			dayy : dayy,
			day : day,
			xs : xs,
			fs : fs,
			cs : cs,
			year : year,
			jieri : jieri,
			luck : luck,
			dayluck : dayluck,
			sesc : sesc,
			scluck : scluck,
			xingzuo : xingzuo,
			daynn : dayn
		},
		async : false,
		dataType : "text",
		success : function(data) {
			//	alert(data);
		}
	});

}
</script>
<!-- ####################################################################################################### -->


<script >

function dfd(spic ,url){

var  aa=  document.getElementById("ddd") ;
var  aaa=  document.getElementById("rurl") ;
// alert(spic) ;
// alert(url) ;
    aa.src=spic;
    aaa.href=url ;

}

</script>

<script src="/template/name/js/libs/jquery.min.js"></script>
<script src="/template/name/js/libs/jmpress.min.js"></script>
<script src="/template/name/js/libs/jquery.jmslideshow.js"></script>
<script src="/template/name/js/libs/script.js"></script>
<script src="/template/kwz/kjs/common.js"></script>
<script type="text/javascript" src="//js.users.51.la/20906883.js"></script>
</body>
</html>


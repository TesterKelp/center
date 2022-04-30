<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<TITLE>${divine.title}(${divine.qian})_${divin.name}_身在江湖_榜上有名</TITLE>
<META content="农历; 阳历; 月历; 节日; 时区; 节气; 八字; 干支; 生肖; gregorian solar; chinese lunar; calendar; hua3a02;" name=keywords>
<META content=All name=robots>
<META content="gregorian solar calendar and chinese lunar calendar" name=description>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<META http-equiv="refresh" content="1800;url=NameWnl.do">
<link href="/template/name/css/animate.css" rel="stylesheet">
<!--  
<link href="/template/name/css/defect.css" rel="stylesheet">
<link href="/template/name/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/name/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">
<link rel="stylesheet" href="/template/name/name/layout.css" type="text/css" />
<link rel="stylesheet" href="/template/name/name/tables.css" type="text/css" />
-->


<style type="text/css">
	TD {FONT-SIZE: 9pt; font-family:Arial, Helvetica, sans-serif;} 
	INPUT {FONT-SIZE: 9pt;}
	SELECT {FONT-SIZE: 9pt;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="/template/name/styles/datatimelayout.css" type="text/css" />
<script type="text/javascript" src="/template/name/scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="/template/name/scripts/jquery.slidepanel.setup.js"></script>
<script type="text/javascript" src="/template/name/scripts/jquery-ui-1.7.2.custom.min.js"></script>
<script type="text/javascript" src="/template/name/scripts/jquery.tabs.setup.js"></script>
<link rel="stylesheet" href="/template/name/css/style2.css">
<script src="/template/name/js/libs/modernizr.js"></script>
<SCRIPT language=JavaScript>

</SCRIPT>

</head>
<body   style="margin:0; color:#333;">
<style>
.ll{
border:1px solid #00a0e9;
float:left;
width:70px ;
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

<div  style="margin:10px auto;width:1300px;height:880px;padding:10px;">

<Div style="width:20%;float:left;border:1px solid #00a0e9;padding-left:20px;padding-right:20px;min-height:800px;">
<Br><Br>
抽签占卜
      <hr style="margin-bottom:10px;">

<c:forEach items="${ltt}" var="a" varStatus="status">  
<div style="line-height:30px;"><a   href="/name/divine/${a.id}/index.do">${a.name}</a></div>
	 </c:forEach>
<div style="clear:both"></div> 








</div  >
 
 <div  style="padding-top:15px;margin-left:15px;margin-right: 15px;width:620px ;border:1px solid #00a0e9;float:left;padding-bottom:35px;">
 
 <div  style="width:550px ;height:25px;border:1px solid #00a0e9;margin:0 auto;background:#F00; color:#FFF;text-align:center;padding:10px 10px 5px 10px;margin-bottom:20px;">
${divin.name}：${divine.title}(${divine.qian})
  </div> 

<div style="width:555px ;border:1px solid #00a0e9;margin:0 auto;margin-top:15px;">

<style>

/* products*/
.special_products{width:570px; float:left; padding:20px 0 0 10px;}
.special_products h1{ display:block; text-align:center; font-size:18px; font-family:"microsoft yahei";}
.special_products h2{width:570px; float:left; text-align:center; padding:30px 0;}
.special_products dl{width:570px; float:left; font-size:14px; line-height:30px;}
.special_products dl dd{width:70px; float:left; color:#F00;}
.special_products dl dt{width:480px; float:left;}
p {
    display: block;
    -webkit-margin-before: 1em;
    -webkit-margin-after: 1em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
}
</style>












<div class="special_products">
        <h2 align="center">
        
       <div align="center"> 
<img src="/template/name/pic/divine/cglq/${divine.qianid}.jpg">
 </div>
        
        </h2>
        <dl><dd>【签文】</dd><dt>${divine.shiyue} </dt></dl>
        <dl><dd>【诗曰】</dd><dt>${divine.shiyi}</dt></dl>
        <dl><dd>【解曰】</dd><dt>${divine.jieyue}</dt></dl>
		<dl><dd>【仙机】</dd><dt>${divine.xianji}</dt></dl>
		<dl><dd>【典故】</dd><dt>${divine.gushi}</dt></dl>
		<dl><dd>【典故】</dd><dt>${divine.jieqian}</dt></dl>
		
		<div style="clear:both"></div> 
</div>

















</div>

<div style="clear:both"></div> 





 </div>    
     
    
     
     
 <div  style="width:20% ;height:730px;border:1px solid #00a0e9;float:right;padding-top:20px;margin-bottom:30px;padding:25px;">    





 <div style="float:left;padding:20px;">
${divin.name}说明：
<hr>
${divin.shuoming}</div>



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





function Chouqian(id) {

	var url ="/name/divine/"+id+"/suanming.do";
//	alert(url);
	$.ajax({
		type : "GET",
		url : url ,
		async : false,
		dataType : "text",
		success : function(data) {
				alert(data);
				var s ='您抽到的是第'+data+'签， <a href="/name/divine/'+id+'/'+data+'.do">查看  </a>';
				rs.innerHTML=s ;
		}
	});

}
</script>


<script src="/template/name/js/libs/jquery.min.js"></script>
<script src="/template/name/js/libs/jmpress.min.js"></script>
<script src="/template/name/js/libs/jquery.jmslideshow.js"></script>
<script src="/template/name/js/libs/script.js"></script>

</body>
</html>


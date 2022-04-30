<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<TITLE>${divin.name}_身在江湖_榜上有名</TITLE>
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
width:75px ;
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
${divin.name}
  </div> 

 <div style="width:550px ;height:280px;border:1px solid #00a0e9;margin:0 auto;padding:10px 10px 5px 10px;">
<div style="float:left;width:180px;height:auto"><img src="${divin.pic}"  width="240px;" ></div>  
 <div  style="float:right;margin:0 auto;text-align:center;width:230px;" >
 <div align="center"> 
  <img src="/template/name/pic/divine/qian.gif" >
 </div>
  <div id="rs" style="height:30px;"></div>
  <br>  <button type="button"  onclick="Chouqian('${divin.id}')"   style="width:100px;font-size: 10px;height:22px">开始抽签</button>

  </div>       

  </div>
<div style="width:550px ;height:140px;border:1px solid #00a0e9;margin:0 auto;padding:10px 10px 5px 10px;">
抽签注意事项：<hr>
${divin.zhuyi}
  </div>



<Div style="margin: 0 auto;margin-left:24px;padding-left:0px;">
<c:forEach items="${d}" var="a"   varStatus="v">
<div class="ll" > <a href="/name/divine/${divin.id}/${a.qianid}.do" >${divin.name}${a.qianid}</a>  </div>
</c:forEach>
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
			//	alert(data);
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


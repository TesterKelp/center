<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<TITLE>身在江湖_万年历</TITLE>
<META content="农历; 阳历; 月历; 节日; 时区; 节气; 八字; 干支; 生肖; gregorian solar; chinese lunar; calendar; hua3a02;" name=keywords>
<META content=All name=robots>
<META content="gregorian solar calendar and chinese lunar calendar" name=description>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="/template/name/css/animate.css" rel="stylesheet">
 
<link href="/template/name/css/defect.css" rel="stylesheet">
<!-- <link href="/template/name/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/name/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">
<link rel="stylesheet" href="/template/name/name/layout.css" type="text/css" />
<link rel="stylesheet" href="/template/name/name/tables.css" type="text/css" />
-->
     <link href="/template/name/hehun/hehun.css" type="text/css" rel="stylesheet"/>

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
   <c:if test="${hhtml == '0' }">
   <%@ include file='/template/name/htmlheader2.jsp' %><Br><br>
   </c:if>
   <c:if test="${hhtml == '1' }">
   <%@ include file='/template/name/htmlheader1.jsp' %><Br><br>
   </c:if>

<br><br>



<div  style="margin:10px auto;width:1300px;height:810px;padding:10px;">

<Div style="width:20%;float:left;border:1px solid #00a0e9;padding:30px;height:720px;">
 号码<hr style="border:1px solid #00a0e9;">
 号码，数也；故举凡号码，均与周易数理具有吉凶关联，就像风水、姓名会影响运势命运的意义是一样的。号码吉凶，是根据周易数理预测之原理，来测试手机号码对主人的运势影响。<hr>
<Br><Br>
</div  >



 <div  style="padding-top:15px;margin-left:15px;margin-right: 15px;width:620px ;height:730px;border:1px solid #00a0e9;float:left;padding-bottom:35px;">
 
 <div  style="width:550px ;height:25px;border:1px solid #00a0e9;margin:0 auto;background:#F00; color:#FFF;text-align:center;padding:10px 10px 5px 10px;margin-bottom:20px;">
 号码吉凶测试
  </div> 



<div style="width:550px ;border:1px solid #00a0e9;margin:0 auto;padding:10px;margin-top:30px;">

号码测吉凶说明：寓意吉祥的号码，可以提升我们的自信心，给我们积极正面的心理暗示，从而引导我们通过智慧和努力创造更美好的人生。如果有条件的话，可以选用一个寓意吉祥的号码。不能更换也无须担心，号码只是生活的一部分，请保持心态平和，淡然面对。

</div>




<div  style="padding:24px;padding-left:90px;">

<div style="float:left;line-height:35px;font-size:18px;font-weight:bold;width:50%"> <a href="/name/number/telephone/index.do">手机号码测试吉凶  </a>   </div>
<div style="float:left;line-height:35px;font-size:18px;font-weight:bold;width:50%"> <a href="/name/number/dianhua/index.do">电话号码测试吉凶  </a> </div>
<div style="float:left;line-height:35px;font-size:18px;font-weight:bold;width:50%"> <a href="/name/number/qq/index.do">QQ号码测试吉凶  </a>  </div>
<div style="float:left;line-height:35px;font-size:18px;font-weight:bold;width:50%"> <a href="/name/number/che/index.do">车牌号码测试吉凶 </a>    </div>
</div>




 </div>    
     
    
     
     
 <div  style="width:20% ;height:730px;border:1px solid #00a0e9;float:right;padding-top:20px;margin-bottom:30px;padding:25px;">    

 <br>
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
 <div class="clear"></div> 
 <%@ include file="/template/name/footer.jsp"%> 


<script >



function telephone() {
	telephone
	var number = $("#telephone").val();
	$.ajax({
		type : "GET",
		url : "/name/number/luckly.do",
		data : {
			number : number
		},
		async : false,
		dataType : "text",
		success : function(data) {
				//alert(data);
				var dataObj=eval("("+data+")");	
			
				num.innerHTML=dataObj.numb ;
				jx.innerHTML=dataObj.title +"<font color='#FF0000'> "+dataObj.jx+" </font>" ;
				con.innerHTML=dataObj.content ;
				
				
		}
	});
}

function qq() {
	telephone
	var number = $("#qq").val();
	$.ajax({
		type : "GET",
		url : "/name/number/luckly.do",
		data : {
			number : number
		},
		async : false,
		dataType : "text",
		success : function(data) {
				//alert(data);
				var dataObj=eval("("+data+")");	
				num.innerHTML=dataObj.numb ;
				jx.innerHTML=dataObj.title +"<font color='#FF0000'> "+dataObj.jx+" </font>" ;
				con.innerHTML=dataObj.content ;
		}
	});
}




function tel() {
	var number = $("#tel").val();
	$.ajax({
		type : "GET",
		url : "/name/number/luckly.do",
		data : {
			number : number
		},
		async : false,
		dataType : "text",
		success : function(data) {
				//alert(data);
				var dataObj=eval("("+data+")");	
				num.innerHTML=dataObj.numb ;
				jx.innerHTML=dataObj.title +"<font color='#FF0000'> "+dataObj.jx+" </font>" ;
				con.innerHTML=dataObj.content ;
		}
	});
}


function che() {
	var number = $("#che").val();
	var jc = $("#jc").val();
	var zm = $("#zm").val();
	$.ajax({
		type : "GET",
		url : "/name/number/luckly.do",
		data : {
			number : number
		},
		async : false,
		dataType : "text",
		success : function(data) {
				//alert(data);
				var dataObj=eval("("+data+")");	
				num.innerHTML=jc+zm+dataObj.numb ;
				jx.innerHTML=dataObj.title +"<font color='#FF0000'> "+dataObj.jx+" </font>" ;
				con.innerHTML=dataObj.content ;
		}
	});
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
<script src="/template/name/kjs/common.js"></script>
</body>
</html>


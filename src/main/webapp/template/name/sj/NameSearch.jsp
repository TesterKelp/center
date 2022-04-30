<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>${firstName}姓_姓名大全_${firstName}氏姓名大全</title>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no" />
<meta name="viewport" content="height=device-height,width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no" />
<link href="/template/name/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/name/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/name/css/animate.css" rel="stylesheet">
<link href="/template/name/css/defect.css" rel="stylesheet">
<link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">
<link rel="stylesheet" href="/template/name/name/layout.css" type="text/css" />
<link rel="stylesheet" href="/template/name/name/tables.css" type="text/css" />
<style type="text/css">
body {font-size:19px !important;}
</style>
<style>
	
	#hpage lli div.imgh3{
	display:block;
	float:left ;

/* --------margin:0 0 10px 0;  height:30px ;------------*/
	
	width:20%;
	height:33px ;
	padding:2px 2px 0px 5px;
	font-size:18px ;
	background-color:#EDECE4;
	
	color:##000000;  /* ---  a76800--*/
	/* -------- border:1px solid #BEBB9E; ---a76800---------*/
	border:1px solid #00a0e9;
	text-align:center  ;
	}	
	
	</style>

</head>






<body class="gray-bg">
	<div id="defect" > 
	<div class="defect_top"  id="menu" >
	
		<a href="/name/sj/index.do"  style="float:left;  font-size:19px;">首页</a>    
	 <a href="/name/sj/NameFree.do" style="float:left;  font-size:19px;">免费起名</a> 
	  <a href="/name/sj/NameTest.do" style="float:left;  font-size:19px;">名字测试</a>         
	  </div>  
 </div>
<br><br>
	<div class="wrapper wrapper-content  animated fadeInRight article">
<div class="ibox"    >
   <div style="text-align:center;">起名信息 ：${SearchName}</div>
   
 <div class="col-lg-12">
<table   style="border:1px solid #00a0e9">
<tr>
<td width="400px" style="border:1px solid #00a0e9">为您起名${total}个，
当前您只能查看一部分，查看全部。扫描二维码，关注公众号。 <br> 回复数字"666"获取验证码，查看所有姓名。会显示换一批姓名按钮。
</td>
<td width="150px" style="border:1px solid #00a0e9">
<img src="/pic/wx/wxszjh.jpg" width="130"  height="130">
<input type="text"  id="ma" name="ma" placeholder="请输入验证码  " siz="15"  style="margin-bottom:5px;margin-top:13px;width:132px"> <br>
  <input type="button" onclick="Lo()"   value="查看全部名字" />
</td>
</tr>
</table>
</div>






<form action="/name/sj/NameSearch.do" method="GET">
		<input type="submit"  style="display:none;width:100%;height:35px;"   id="9981" value="换一批" />			
		<input type="hidden"  value="${page}" id="page" name="page"  style="width:50px">   
		<input  id="name" name="name"       value="${firstName}"    type="hidden"  style=" width:70px ;height:36px;" /> 
        <input  id="name1" name="name1"    value="${name1}"     type="hidden"   style=" width:70px ;height:36px;" /> 
        <input  id="name2" name="name2"     value="${name2}"   type="hidden"   style=" width:70px ;height:36px;" />  
         <input  id="tota" name="tota"     value="${total}"  type="hidden"   style=" width:170px ;height:36px;" />    
</form>					    
	
							

<div  id="more" >			
<div id="hpage" style="">
    <div id="righ">
      <ul>
        <lli> 	
        <c:forEach items="${namelst}" var="a"   varStatus="status">
     		<div class="imgh3"><a href="/name/sj/NameTestResult.do?name=${firstName}${a.fullname}" target="_blank">${firstName}${a.fullname}</a></div>
		</c:forEach>
        </lli>	
		 </ul>
      <br class="clear" />
   </div>	
</div>	
</div>				    
					    
					
						

					


					</div>
				</div>
			








	<!-- 全局js -->
	<script src="/template/name/js/jquery.min.js?v=2.1.4"></script>
	<script src="/template/name/js/bootstrap.min.js?v=3.3.6"></script>
	<!-- 自定义js -->
	<script src="/template/name/js/content.js?v=1.0.0"></script>
	<script src="/module/share/js/article.js"></script>

<script type="text/javascript">


function Lo(){
var ma  =  $("#ma").val()  ;
if(ma=="521"){
	SetCookie("name","aisini")
	 location.reload()    ;
}

}

function Loo(){
var ma  =  $("#mma").val()  ;
if(ma=="521"){
	SetCookie("name","aisini")
	 location.reload()    ;
}	   	   
}




function llo(){
	 delCookie("name")  
	 location.reload()    ;
}

var s =getCookie("name");
if(s==null){
	
}else {
	$("#9981").show()  ;
}



function SetCookie(name,value){
	 var Days = 30;//此 cookie 将被保存 30 天
	 var exp = new Date();//new Date("December 31, 9998");
	 exp.setTime(exp.getTime() + Days*24*60*60*1000);
	 document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString()+"; path=/";
}


function getCookie(name){
	 var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
	 if (arr != null) return unescape(arr[2]); return null;
}

//删除cookie
function delCookie(name){
 var exp = new Date();
 exp.setTime(exp.getTime() - 1);
 var cval = getCookie(name);
 if (cval != null) document.cookie = name + "=" + cval + ";expires=" + exp.toGMTString()+"; path=/";
}


</script>
<script type="text/javascript" src="https://js.users.51.la/20932149.js"></script>
</body>

</html>
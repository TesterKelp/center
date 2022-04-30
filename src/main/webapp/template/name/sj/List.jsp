<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>${firstName}氏免费起名_${firstName}氏取名_${firstName}氏姓名大全_${firstName}姓名大小第${page}页</title>
<meta name="description" content="${firstName}姓名字解析测试，${firstName}姓名的好坏,${firstName}姓名五行"/>
<meta name="Keywords" Content="${firstName}姓五格解析，${firstName}姓五格测试，${firstName}姓名五格解析测试，${firstName}姓名字好不好，${firstName}姓名字测试" />
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no" />
<meta name="viewport" content="height=device-height,width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no" />
<link href="/template/name/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="/template/name/css/font-awesome.css?v=4.4.0" rel="stylesheet">
<link href="/template/name/css/animate.css" rel="stylesheet">
<link href="/template/name/css/defect.css" rel="stylesheet">
<link href="/template/name/css/style.css?v=4.1.0" rel="stylesheet">
<link href="/template/name/name/layout.css"  rel="stylesheet"  type="text/css" />
<link href="/template/name/name/tables.css"  rel="stylesheet"  type="text/css" />
</head>
<body >
	<div id="defect" > 
	<div class="defect_top"  id="menu" >
		<a href="/name/sj/index.do"  style="float:left;  font-size:19px;">首页</a>    
	 <a href="/name/sj/NameFree.do" style="float:left;  font-size:19px;">免费起名</a> 
	  <a href="/name/sj/NameTest.do" style="float:left;  font-size:19px;">名字测试</a>        
	  </div>  
 </div>
	<br>
	<br><br>
	
	
	
	
<style>
	
	#hpage lli div.imgh3{
	display:block;
	float:left ;

/* --------margin:0 0 10px 0;  height:30px ;------------*/
	
	width:19%;
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
	
	
	
	
	
	
	
	
	<div class="wrapper wrapper-content  animated fadeInRight article">  
		<div class="row">
				<div class="ibox">
					
							<h2 align="center"><b> 《${firstName}氏》姓名大全</b></h2><Br>
					<div class="col-lg-12">
						<table>
							<tr>
								<td align="left"  style="border:1px solid #00a0e9">
								1.当前收录名字共计${TotalRecord}个.<Br>
								2.如果没有显示分页，请扫描二维码，关注公众号，回复数字'666',即可获取验证码。<Br>
								3.在下方文本框中输入验证码，点击右侧的"查看全部名字"按钮。即可查看所有页面。<Br>
								<input type="text" id="ma" name="ma" placeholder="请输入验证码  " siz="15" style="margin-bottom: 0px; margin-top: 8px; width:132px">
									<input type="button" onclick="Lo()" value="查看全部名字" />
								</td>
								<td  style="border:1px solid #00a0e9;">
								<img src="/pic/wx/wxszjh.jpg"  height="100"></td>
							</tr>
						</table>
					</div>


<div class="col-lg-12" align="center" id="pp"  style="height:50px;margin-top:0px;background:#99CCFF"><Br>
分页：  <a href="/name/sj/${nameid}_${page-1}.do" style="padding:8px;margin-right:15px;width:55px;border:1px solid #337ab7">上一批名字</a>   
<a href="/name/sj/${nameid}_${page+1}.do"      style="padding:8px;margin-right:15px;width:55px;border:1px solid #337ab7">下一批名字</a>
 
 <!-- 
 <c:forEach var="i" begin="1" end="${pages}" step="1">  
                        <a href="/name/sj/${nameid}_${i}.do" style="padding:8px;margin-right:15px;width:55px;border:1px solid #337ab7">${i}</a>
    		  </c:forEach> 
   -->  		  
    		  
</div>

				<div class="col-lg-12">
					<div id="one" >
						<div id="hpage" style="margin-left: 5px; padding-right: 5px;">
							<div id="righ">
								<ul>
									<lli>
								<c:forEach items="${name}" var="a"    varStatus="v">
									 <div class="imgh3" ><a href="/name/sj/${nameid}/${a.id}_NameDetail.do">${firstName}${a.fullname}</a></div>
								</c:forEach>
								 
									</lli>
								</ul>
								<br class="clear" />
							</div>
							<br class="clear" />
								
						</div>
					</div>
				</div>
	

					
		</div>

	
</div>
</div>

	<!-- 全局js -->
	<script src="/template/name/js/jquery.min.js?v=2.1.4"></script>
	<script src="/template/name/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="/template/name/js/content.js?v=1.0.0"></script>
	
<script type="text/javascript">
function Lo(){
var ma  =  $("#ma").val()  ;
 // alert(ma);
if(ma=="521"){
	SetCookie("name","aisini")
	$("#pp").show() ; 
	alert("验证码正确，您可有查看所有分页。");
}else if(ma=="996"){
	delCookie("name") 
	 $("#pp").hide() ;
}else{
 location.reload()    ;
}

   	   
}




var s =getCookie("name");
if(s==null){
	$("#pp").hide()  ;
}else {
	$("#pp").show()  ;
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


function myname(){
	
	var name  =  $("#myname").val()  ; 
	$.ajax({
		type : "GET",
		url : "/name/UserSubmitName.do",
		data: {name: name},
		async : false,
		dataType : "text",
		success : function(data) {	
				alert("感谢您的提交，谢谢！");
		}
	});	

}
</script>
<script type="text/javascript" src="https://js.users.51.la/20932149.js"></script>
</body>

</html>
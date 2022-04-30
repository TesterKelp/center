<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/displaytags" prefix="auto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>${firstName}姓_姓名大全_${firstName}氏姓名大全</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" charset="utf-8"
	src="/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8"
	src="/ueditor/lang/zh-cn/zh-cn.js"></script>
<link rel="shortcut icon" href="favicon.ico">
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



<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?03ea227542d6451cba71f3cfb1c5191f";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>

</head>






<body class="gray-bg">
	<%@ include file="/template/name/htmlheader.jsp"%>
	<br>
	<br>
	<div class="wrapper wrapper-content  animated fadeInRight article">
		<div class="row">
			
				<div class="ibox">
					<div class="ibox-content"   style="min-height: 800px;" >
   <div style="text-align:center;">起名信息 ：${SearchName}</div>
   <Br>
   
  <div class="col-lg-12"  style="margin-top:0px ;margin-left:30px ;padding-right:135px;">     
   
<table  id="oneone" style="display: none;border:1px solid #00a0e9">
<tr>
<td width="400px" style="border:1px solid #00a0e9">为您起名<c:out value="${fn:length(namelst)}"></c:out>个，
当前您直接查看108个。<br>查看其余名字，扫描二维码，关注公众号。 <br> 回复数字"666"获取验证码，查看所有姓名。
</td>
<td width="110px" style="border:1px solid #00a0e9"><img src="/pic/wx/wxszjh.jpg" width="100"  height="100"></td>
<td width="150px" style="border:1px solid #00a0e9">
<input type="text"  id="ma" name="ma" placeholder="请输入验证码  " siz="15"  style="margin-bottom:5px;margin-top:13px;width:132px"> <br>
  <input type="button" onclick="Lo()"   value="查看全部名字" />
</td>
<td style="border:1px solid #00a0e9">     </td>
</tr>
</table>
<table id ="moremore" style="display: none;border:1px solid #00a0e9">
<tr><td style="border:1px solid #00a0e9">  为您起名<c:out value="${fn:length(namelst)}"></c:out>个， 当前已全部显示。</td></tr>
</table>
</div>


					    <p>
					    
					    
					    
	<div  id="one" style="display: none">			
<div id="hpage" style="margin-left:45px ;padding-right:65px;">
    <div id="righ">
      <ul>
        <lli> 	
        <c:forEach items="${namelst}" var="a"  begin="1"  end="108" step="1" varStatus="status">
     		<div class="imgh3"><a href="/name/NameTestResult.do?name=${firstName}${a.fullname}" target="_blank">${firstName}${a.fullname}</a></div>
		</c:forEach>
        </lli>	
		 </ul>
      <br class="clear" />
   </div>	

  					
  				<br class="clear" />
							<div style="text-align:center">
							<br>
							起名完全免费,点击名字，可以查看姓名测试结果。
							当前您只能查看108个。关注公众号，回复数字"666",获取验证码。然后在下方文本框输入验证码，点击按钮，就可以查看到所有的名字。
							<table style="border: 0px;">
								<tr>
									<td  style="border: 0px;"></td>
									<td style="border: 0px;"><input type="text" id="mma"
										name="ma" placeholder="请输入验证码  " siz="15"
										style="margin-bottom: 5px; margin-top: 13px; width: 132px">
										<input type="button" onclick="Loo()" value="查看全部名字" /></td>
								</tr>
							</table>
							</div>	
  					
  					
  					
  					
  					
  					
  					
  					
</div>	
</div>				
			
							

<div  id="more" style="display: none">			
<div id="hpage" style="margin-left:45px ;padding-right:65px;">
    <div id="righ">
      <ul>
        <lli> 	
        <c:forEach items="${namelst}" var="a"   varStatus="status">
     		<div class="imgh3"><a href="/name/NameTestResult.do?name=${firstName}${a.fullname}" target="_blank">${firstName}${a.fullname}</a></div>
		</c:forEach>
        </lli>	
		 </ul>
      <br class="clear" />
   </div>	
</div>	
</div>				    
					    
					    
					    
					    
	




					</p>
						<hr>

					


					</div>
				</div>
			
		</div>

	</div>



	<%@ include file="/module/common/footer.jsp"%> 


	<!-- 全局js -->
	<script src="/template/name/js/jquery.min.js?v=2.1.4"></script>
	<script src="/template/name/js/bootstrap.min.js?v=3.3.6"></script>
	<!-- 自定义js -->
	<script src="/template/name/js/content.js?v=1.0.0"></script>
	<script src="/module/share/js/article.js"></script>
	<script src="/template/name/kjs/common.js"></script>



   
   
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
	$("#oneone").show()  ;
	$("#one").show()  ;
}else {
	$("#moremore").show()  ;
	$("#more").show()  ;
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

</body>

</html>